extends Sprite

var y = 0
var speed_constant = 800 # Higher means faster y movement.
onready var player = get_node("../KinematicBody2D") # road

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	set_process(true)

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	
	#y -= player.speed * delta
	y -= speed_constant * delta
	set_region_rect(Rect2(0, y, 640, 960))