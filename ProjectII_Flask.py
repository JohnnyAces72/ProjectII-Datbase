from flask import Flask
from flask import jsonify
app = Flask(__name__)

import pyodbc

cs="""DRIVER={MySQL ODBC 8.0 ANSI Driver};
SERVER=localhost;
DATABASE=projectii;
USER=root;PASSWORD=sesame80"""
connection =pyodbc.connect(cs)
@app.route('/') #Line always has to be above the function def
def index():
	crs=connection.cursor()
	results =crs.execute("SELECT * FROM account_name")
	return str(results.fetchall())

#@app.route('/Champion/<name>')
#def champion(name): 
#	crs=connection.cursor()
#	quary=	"""SELECT Game_game_ID	
#	FROM champion_stats
#	WHERE champion_name = ? ;""" 
#	results =crs.execute(quary,(name,))
#	return str(results.fetchall())


@app.route('/Players/') #Returns list of all players and their ranks and ign ids
def allplayers():
	crs=connection.cursor()
	quary=	"""SELECT account_name, IGN_ID, account_rank
	FROM account_name;"""
	
	results =crs.execute(quary)
	result_dict = {}
	row = crs.fetchone() #Gets next result in set
	while row is not None:
		result_dict[row[0]] = {} #Gets champs name and puts it there
		result_dict[row[0]] ['IGN_ID']=row[1]
		result_dict[row[0]] ['account_rank']=row[2]
		row = crs.fetchone()
	
		response=jsonify(result_dict)
	return response


@app.route('/Player/<name>') #Returns all info on playes account given their name
def player(name):
	crs=connection.cursor()
	quary=	"""SELECT account_name, IGN_ID, account_rank
FROM account_name
WHERE account_name = ? ;"""

	results =crs.execute(quary,(name,))
	result_dict = {}
	row = crs.fetchone() #Gets next result in set
	while row is not None:
		result_dict[row[0]] = {} #Gets champs name and puts it there
		result_dict[row[0]] ['IGN_ID']=row[1]
		result_dict[row[0]] ['account_rank']=row[2]
		row = crs.fetchone()
	
		response=jsonify(result_dict)
	return response


@app.route('/Player/Champions/<player_champ_id>')#Returns all players champions and stats on those champs
def playerschampions(player_champ_id):
	crs=connection.cursor()
	quary=	"""SELECT champion_name, SUM(CAST(kills AS DOUBLE)) AS total_kills, SUM(CAST(deaths AS DOUBLE)) AS total_deaths, SUM(CAST(assists AS DOUBLE)) AS total_assists, SUM(dmg_delt) AS total_dmg 
FROM champion_stats JOIN game ON Game_game_id = game_id
WHERE player_champion_id =? 
GROUP BY champion_name;"""

	results =crs.execute(quary,(player_champ_id,))
	result_dict = {}
	row = crs.fetchone() #Gets next result in set
	while row is not None:
		result_dict[row[0]] = {} #Gets champs name and puts it there
		result_dict[row[0]] ['kills']=row[1]
		result_dict[row[0]] ['deaths']=row[2]
		result_dict[row[0]] ['assists']=row[3]
		result_dict[row[0]] ['dmg_delt']=row[4]
		row = crs.fetchone()
	
		response=jsonify(result_dict)
	return response

@app.route('/Player/Champions/<player_champ_id>/<name>') #Returns all stats for that players champion 
def playerChamp(player_champ_id,name):
	crs=connection.cursor()

	quary=	"""SELECT champion_name, SUM(CAST(kills AS DOUBLE)) AS total_kills, SUM(CAST(deaths AS DOUBLE)) AS total_deaths, SUM(CAST(assists AS DOUBLE)) AS total_assists, SUM(dmg_delt) AS total_dmg 
FROM champion_stats JOIN game ON Game_game_id = game_id
WHERE player_champion_id = ? AND champion_name = ?
GROUP BY champion_name;"""

	results =crs.execute(quary,(player_champ_id,name,))
	result_dict = {}
	row = crs.fetchone() #Gets next result in set
	
	while row is not None:
		result_dict[row[0]] = {} #Gets champs name and puts it there
		result_dict[row[0]] ['kills']=row[1]
		result_dict[row[0]] ['deaths']=row[2]
		result_dict[row[0]] ['assists']=row[3]
		result_dict[row[0]] ['dmg_delt']=row[4]
		row = crs.fetchone()
	
		response=jsonify(result_dict)
	return response




#This always has to go at the end of the file
if __name__ == '__main__':
		
		app.run()
	

