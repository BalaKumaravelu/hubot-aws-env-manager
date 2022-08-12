module.exports = (robot) ->
	robot.respond /shutdown (\w+)/i, (res) ->
		res.reply "Yes boss, am going to shutdown Server : " + res.match[1]  
		
		data = JSON.stringify({
			foo: 'bar'
		})
		
		robot.http("http://aws.environment.manager.com:8080/envManager/lane/shutdown?name=" +res.match[1] + "&format=json")
		.header('Content-Type', 'application/json')
		.post(data) (err, res, body) ->
			if err
				res.send "Encountered an error :( #{err}"
			return
			
			
 
 