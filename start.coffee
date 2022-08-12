module.exports = (robot) ->
	robot.respond /start (\w+) for (\d+) hour/i, (res) ->
		res.reply "Yes boss, am going to start Server : " + res.match[1] + ' for duration of ' + res.match[2] + ' hours'
		
		data = JSON.stringify({
			foo: 'bar'
		})
		
		robot.http("http://aws.environment.manager.com:8080/envManager/lane/start?name=" +res.match[1] + "&duration=" + res.match[2] + "&format=json")
		.header('Content-Type', 'application/json')
		.post(data) (err, res, body) ->
			if err
				res.send "Encountered an error :( #{err}"
			return
			
			
 
 