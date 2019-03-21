extends RigidBody2D

#var speed = 0
var speed = 0 # Speed is capped at max speed.
var max_speed = 500
var acceleration = 0

func _ready():
	set_process(true)

func _process(delta):
	speed += acceleration
	speed = min(speed,max_speed)
	
	if(speed < max_speed):
		acceleration += delta
