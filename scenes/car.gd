extends Area2D

var direction := Vector2.LEFT
var speed = 100
var colors = [
	preload("res://graphics/cars/green.png"),
	preload("res://graphics/cars/red.png"),
	preload("res://graphics/cars/yellow.png"),
	]

func _ready() -> void:
	$Sprite2D.texture = colors.pick_random()
	if position.x < 0:
		direction.x = 1
		$Sprite2D.flip_h = true 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position += direction * speed * _delta


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
