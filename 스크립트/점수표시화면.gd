extends Control

@onready var 점수 = $Label


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	점수.text = "점수 : " + str(Global.점수)
