extends RigidBody2D

var collision_sound_player = null

var speed = 500
var turn_speed = 0.75
var max_speed = 1000
var acceleration = 0
var direction = 0
var time_elapsed = 0

func _ready():
	connect("body_enter",self,"_on_body_enter")
	set_process(true)
	set_process_input(true)
	collision_sound_player = get_node("../CollisionPlayer")
	

func _input(event):
	direction = 0
	if(event.is_action("ui_left")):
		direction = -1
	elif(event.is_action("ui_right")):
		direction = 1
	elif(event.is_action_released("ui_left") or event.is_action_released("ui_right")):
		direction = 0

func _process(delta):
	speed += acceleration
	speed = min(speed,max_speed)
	
	if(speed < max_speed):
		acceleration += delta
		
	set_position(get_position() + Vector2(direction * turn_speed, 0))

func _on_body_enter(other):
	print("LOL")
	speed = 0
	collision_sound_player.play("res://assets/sounds/collision.wav")