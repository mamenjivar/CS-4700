extends Sprite

onready var player = get_node("../Player")

var y = 0

func _ready():
	set_process(true)

func _process(delta):
	y -= player.speed * delta
	set_region_rect(Rect2(0, y, 640, 960))