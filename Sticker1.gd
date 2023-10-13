extends Sprite2D

@export var sticker_list : Dictionary = {
	"sticker_1": preload("res://Stickers/sticker_1.png"),
	"sticker_2": preload("res://Stickers/sticker_2.png"),
	"sticker_3": preload("res://Stickers/sticker_3.png"),
	"sticker_4": preload("res://Stickers/sticker_4.png"),
	"sticker_5": preload("res://Stickers/sticker_5.png")
}

var sticker_name
var dragging = false

func _ready():
	texture = sticker_list[sticker_name]

func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton or event is InputEventScreenTouch:
		dragging = event.pressed
		
func _process(_delta):
	if dragging:
		position = get_global_mouse_position()
