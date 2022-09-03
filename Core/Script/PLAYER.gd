extends KinematicBody2D

var velocity = Vector2(0,0)
const MAX_HORIZONTAL_SPEED = 180

func _ready():
	$AnimatedSprite.play("fly")


func _physics_process(delta):
	velocity.x += MAX_HORIZONTAL_SPEED * delta
	velocity.x = clamp(velocity.x, 0, MAX_HORIZONTAL_SPEED)

	move_and_slide(velocity)
