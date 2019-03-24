extends Sprite
# road
#onready var player = get_node("../KinematicBody2D")
var y = 0


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	set_process(true)

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	#y -= player.speed * delta
	y -= 100 * delta
	set_region_rect(Rect2(10, y, 100, 960))