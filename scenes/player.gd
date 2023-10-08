extends CharacterBody2D

@export var SPEED: int = 500
signal on_player_swing(pos: Vector2, direction: Vector2)

var can_swing: bool = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var dir = Input.get_vector("left", "right", "forward", "backward")
	velocity = dir * SPEED
	move_and_slide()
	
	if can_swing and Input.is_action_pressed("primary_action"):
		can_swing = false
		$SwingTimer.start()
		
		var player_direction = (get_global_mouse_position()-global_position).normalized()
		on_player_swing.emit($SwingMarker.global_position, player_direction)
		$GPUParticles2D.emitting = true


func _on_timer_timeout_reset_can_swing():
	can_swing = true
