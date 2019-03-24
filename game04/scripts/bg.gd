extends Sprite

onready var player = get_node("../Player")
var y = 0

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	set_process(true)

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	y -= player.speed * delta
	set_region_rect(Rect2(0, y, 640, 960))