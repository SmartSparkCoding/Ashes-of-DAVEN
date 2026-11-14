extends Label
var timen = 45


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "Time Left: " + str(timen)


func _on_ticker_timeout() -> void:
	timen = timen - 1
	text = "Time Left: " + str(timen)
	if timen <= 0:
		get_tree().change_scene_to_file("res://end.tscn")
