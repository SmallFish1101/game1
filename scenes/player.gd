extends Node2D

var direction: Vector2 = Vector2(1,1)
var speed: int = 5

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
	position += direction * speed
	
	if Input.is_action_just_pressed("comfirm"):
		print('something')




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
