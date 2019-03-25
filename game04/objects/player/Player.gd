extends KinematicBody2D

var speedX = 0
var player = null
var is_game_over = false
var game_over_label = null
var game_over_text = "GAME OVER!"

# Called when the node enters the scene tree for the first time.
func _ready():
	game_over_label = get_node("../GameOverLabel")
	pass

func _physics_process(delta):
	if is_game_over:
		speedX = 0
		game_over_label.text = game_over_text
		return
	
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