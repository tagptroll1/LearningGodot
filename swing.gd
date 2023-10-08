extends Area2D

@export var SPEED: int = 0
var direction = Vector2.RIGHT

func _process(delta):
	position += direction * SPEED * delta
