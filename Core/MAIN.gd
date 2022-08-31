extends Node2D


func _process(delta):
	$Camera2D.position.x = $PLAYER.position.x - 100
