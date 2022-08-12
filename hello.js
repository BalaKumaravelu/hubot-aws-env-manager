var XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest

module.exports = function(robot) {
	robot.hear(/hello(.*)/igm, function(msg){
		msg.reply("hello there" );		
	});
	
	
}