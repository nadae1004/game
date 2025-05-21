extends ParallaxBackground

const 스크롤속도 = 200


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll_offset.y += 스크롤속도 * delta
