extends KinematicBody2D

var velocity = Vector2()
const UP = Vector2(0,-1)
const MAX_GRAVITY = 200
const HORIZONTAL_SPEED = 20
const HORIZONTAL_MAX_SPEED = 100
const FLAP = 350
var GRAVITY = 20

func _ready():
	$AnimatedSprite.play("fly")


func _physics_process(delta):
	

	velocity.x += HORIZONTAL_SPEED
	velocity.x = clamp(velocity.x, -HORIZONTAL_MAX_SPEED, HORIZONTAL_MAX_SPEED)
	velocity.y += GRAVITY
	velocity.y = clamp(velocity.y, -MAX_GRAVITY, MAX_GRAVITY)
	
	if Input.is_action_just_pressed("Space"):
		velocity.y -= FLAP
	
	velocity = move_and_slide(velocity, UP)
