extends MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/VBoxContainer/MenuOptions/btn_playClone.connect("pressed", self, "playClone")
	$HBoxContainer/VBoxContainer/MenuOptions/btn_playVariant.connect("pressed", self, "playVariant")
	$HBoxContainer/VBoxContainer/MenuOptions/btn_quit.connect("pressed", self, "Quit")
	pass # Replace with function body.

# Plays the Night Driver Clone
func playClone():
	get_tree().change_scene("res://scenes/clone.tscn")
	pass

# Plays the Night Driver Variant
func playVariant():
	get_tree().change_scene("res://scenes/variant.tscn")
	pass
	
# quits game
func Quit():
	get_tree().quit()
	pass