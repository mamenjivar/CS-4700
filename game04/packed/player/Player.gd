extends RigidBody2D

var speed = 0
var turn_speed = 0.5
var max_speed = 500
var acceleration = 0
var direction = 0

var points = 0
var point_multiplier = 0.2

func _ready():
    connect("body_enter",self,"_on_body_enter")
    set_process(true)
    set_process_input(true)
	
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
    points += 1 * point_multiplier
	
    if(speed < max_speed):
        acceleration += delta
		
    set_position(get_position() + Vector2(direction * turn_speed, 0))
	
func _on_body_enter(other):
	get_node("../Camera2D").shake(0.1,500,10)
	other.hit_by_player()
	speed = 0
	set_process(false)