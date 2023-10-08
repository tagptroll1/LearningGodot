extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("zoom_in"):
		zoom += Vector2(0.1, 0.1)

	if Input.is_action_just_pressed("zoom_out"):
		zoom -= Vector2(0.1, 0.1)

	zoom = zoom.clamp(Vector2(0.7, 0.7), Vector2(2, 2))
