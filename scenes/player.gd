extends CharacterBody2D

var direction: Vector2 = Vector2(1,1)
var speed: int = 150

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	
	#用读取单个方向的方法实现移动（不建议使用）
	#if Input.is_action_pressed("left"):
		#direction = Vector2.LEFT
		#position += direction * speed
		#
	#if Input.is_action_pressed("right"):
		#direction = Vector2.RIGHT
		#position += direction * speed
		#
	#if Input.is_action_pressed("up"):
		#direction = Vector2.UP
		#position += direction * speed
		#
	#if Input.is_action_pressed("down"):
		#direction = Vector2.DOWN
		#position += direction * speed
		
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	animation()
	move_and_slide()
	
	if Input.is_action_just_pressed("comfirm"):
		print('something')
	
func animation():
	if direction:
		#只有左右移动时才改变朝向，上下移动保留上次朝向
		if direction.x != 0:
			$AnimatedSprite2D.animation = 'left'
			$AnimatedSprite2D.flip_h = direction.x > 0
		else:
			#只有上下单独按才会播放
			$AnimatedSprite2D.animation = 'up' if direction.y < 0 else 'down'
	else:
		$AnimatedSprite2D.frame = 0

 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	pass # Replace with function body.
