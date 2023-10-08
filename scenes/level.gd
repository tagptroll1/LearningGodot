extends Node2D

var swing_graphic: PackedScene = preload("res://swing.tscn")



func _on_player_on_player_swing(pos, dir: Vector2):
	var swing = swing_graphic.instantiate() as Area2D
	swing.global_position = pos
	swing.rotation = dir.angle()
	swing.direction = dir
	
	print("swing marker glob", $Player/SwingMarker.global_position)
	print("player glob", $Player.global_position)
	print("swing glob", swing.global_position)
	print("pos", pos, "dir", dir)
	
	add_child(swing)


func _on_mouselogger_timeout():
	print("mouse", get_global_mouse_position())
