extends Sprite

var speed = 500
var turn_speed = 0.75
var max_speed = 1000
var acceleration = 0
var direction = 0

var points = 0
var point_multiplier = 0.2

func _ready():
	connect("body_enter",self,"_on_body_enter")
	set_process(true)
	set_process_input(true)

func applyHorizontalAcceleration():
	pass

func _input(event):
	direction = 0
	if(event.is_action("ui_left")):
		direction = -10 # change for speed
	elif(event.is_action("ui_right")):
		direction = 10
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
	speed = 0
	set_process(false)

func _on_Player_body_entered(body):
	print("Collision with " + body.get_name())
	pass # Replace with function body.
