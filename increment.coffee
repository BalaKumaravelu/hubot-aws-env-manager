module.exports = (robot) ->
	robot.respond /increment (\w+) by (\d+) hour/i, (res) ->
		res.reply "Yes boss, am going to increment shutdown time for Server " + res.match[1] + ' by ' + res.match[2] + ' hours'
		
		data = JSON.stringify({
			foo: 'bar'
		})
		
		robot.http("http://aws.environment.manager.com:8080/envManager/lane/increment?name=" +res.match[1] + "&duration=" + res.match[2] + "&format=json")
		.header('Content-Type', 'application/json')
		.post(data) (err, res, body) ->
			if err
				res.send "Encountered an error :( #{err}"
			return
			
			
 
 