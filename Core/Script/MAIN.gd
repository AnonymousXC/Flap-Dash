extends Node2D

onready var PipeScene = preload("res://Core/PIPES.tscn")


func _ready():
	var SpawnAt = 700
	for i in 5:
		var PipeInsta = PipeScene.instance()
		PipeInsta.position.x = SpawnAt
		PipeInsta.position.y = int(rand_range(135, 238))
		self.add_child(PipeInsta)
		SpawnAt += int(rand_range(80, 280))
		print(SpawnAt)


func _process(delta):
	$Camera2D.position.x = $PLAYER.position.x - 100
