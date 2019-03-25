extends KinematicBody2D

var speedX = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	var moveBy = Vector2(speedX, 0)
	
	if Input.is_key_pressed(KEY_LEFT) or Input.is_key_pressed(KEY_A):
		speedX = -5
		moveBy = Vector2(speedX, 0)
	elif Input.is_key_pressed(KEY_RIGHT) or Input.is_key_pressed(KEY_D):
		speedX = 5
		moveBy = Vector2(speedX, 0)
	elif Input.is_key_pressed(KEY_DOWN) or Input.is_key_pressed(KEY_UP) or Input.is_key_pressed(KEY_S) or Input.is_key_pressed(KEY_W):
		speedX = 0
		moveBy = Vector2(speedX, 0)

	self.move_and_collide(moveBy)