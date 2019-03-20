extends RigidBody2D

var speed = 500
var max_speed = 500
var acceleration = 0

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	# pass
	set_process(true)

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
    speed += acceleration
    speed = min(speed,max_speed)
	
    if(speed < max_speed):
        acceleration += delta