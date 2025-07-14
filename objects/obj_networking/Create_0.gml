if(!global.archipelago) instance_destroy(self);

global.socket = network_create_socket(network_socket_ws)
global.name = "Vespadian"
global.server = "127.0.0.1"
global.port = 38281
global.password = ""

global.secure = false

global.lastPlayerSent = 0
global.lastItemSent = 0

if global.server = "archipelago.gg" {
		global.secure = true
} else { global.secure = false }


///@description Network connection data

var APgame = "Vespadian" //Change this to whatever your game is, you shouldn't need to change it more than once.

//Maybe you can optimize this better? it works already for what it needs to be.
wss = network_socket_wss
ws = network_socket_ws


if global.secure = true && global.socket != network_create_socket(wss) {
		global.socket = network_create_socket(wss)
}
if global.secure = false && global.socket != network_create_socket(ws) {
	global.socket = network_create_socket(ws)	
}


playerSent = 0

item = 0

//JSON file contents
var _contents = {
		cmd: "Connect",
		password: "",
		game: APgame,
		name: global.name,
		uuid: int64(999999),
		items_handling: int64(3),
		tags: [],
		version : {
			build : int64(1),
			class: "Version",
			minor: int64(6),
			major: int64(0)
	}
}

var arr = [ _contents] // adds the brackets to the json as needed by AP
aa = json_stringify(arr)

//Connect to the server, adds the buffers and the json as needed.
isConnected = network_connect_raw(global.socket, global.server, global.port)
buffer = buffer_create(string_byte_length(aa), buffer_fixed,1)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer,buffer_text,aa)

//Sends the json to the server. If you can make this better I applaud you.
network_send_raw(global.socket, buffer, buffer_tell(buffer),network_send_text)