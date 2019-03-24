extends Node

var player = null
var label = null

var time_start = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_node("../Player")
	time_start = OS.get_unix_time()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	player.time_elapsed = OS.get_unix_time()
	var elapsed = player.time_elapsed - time_start
	var minutes = elapsed / 60
	var seconds = elapsed % 60
	var time_elapsed = "%02d : %02d" % [minutes, seconds]
	
	self.text = "Time: " + time_elapsed
	#print(self.text)