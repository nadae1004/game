extends CharacterBody2D

const 이동속도 = 400

func _physics_process(delta):
	# 키보드 누를때
	if Input.is_action_pressed("위로"):
		velocity.y = -이동속도
	if Input.is_action_pressed("아래로"):
		velocity.y = +이동속도
	if Input.is_action_pressed("왼쪽으로"):
		velocity.x = -이동속도
	if Input.is_action_pressed("오른쪽으로"):
		velocity.x = +이동속도
		
	# 키보드 땔때
	if Input.is_action_just_released("위로"):
		velocity.y = 0
	if Input.is_action_just_released("아래로"):
		velocity.y = 0
	if Input.is_action_just_released("왼쪽으로"):
		velocity.x = 0
	if Input.is_action_just_released("오른쪽으로"):
		velocity.x = 0
		
	# 도로 밖을 벗어나지 못하게 막기
	# 좌우 도로 (380 - 650)
	if position.x < 380:
		position.x = 380
	elif position.x > 650:
		position.x = 650
	# 상하 도로 (33 - 990)
	if position.y < 33:
		position.y = 33
	elif position.y > 990:
		position.y = 990
	
	move_and_slide()
