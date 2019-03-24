extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speedx = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var moveBy = Vector2(speedx,0)
	if Input.is_key_pressed(KEY_LEFT):
		speedx = -5
		moveBy = Vector2(speedx,0)
	if Input.is_key_pressed(KEY_RIGHT):
		speedx = 5
		moveBy = Vector2(speedx,0)
	if Input.is_key_pressed(KEY_DOWN):
		speedx = 0
		moveBy = Vector2(speedx,0)

	self.move_and_collide(moveBy)
	pass
