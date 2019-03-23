 extends MarginContainer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/VBoxContainer/MenuOptions/btn_playClone.connect("pressed", self, "playClone")
	$HBoxContainer/VBoxContainer/MenuOptions/btn_quit.connect("pressed", self, "Quit")
	pass # Replace with function body.


# plays game
func playClone():
	get_tree().change_scene("res://scenes/game.tscn")
	pass
	
# quits game
func Quit():
	get_tree().quit()
	pass