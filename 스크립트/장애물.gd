extends Area2D

const 스크롤속도 = 400


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += 스크롤속도 * delta


func _on_body_entered(body):
	if body.name == "자동차":
		Global.점수 -= 10
		print(Global.점수)
		self.queue_free()
