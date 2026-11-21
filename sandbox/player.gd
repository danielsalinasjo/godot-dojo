extends CharacterBody2D

const SPEED = 300.0
const GRAVITY = 980.0
const JUMP_VELOCITY = -450.0
var jumps = 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var directionX: float = Input.get_axis("ui_left", "ui_right")
	velocity.x = directionX * SPEED

	if not is_on_floor():
		velocity.y += (GRAVITY * delta)
		
	if is_on_floor():
		jumps = 2
		
	if Input.is_action_just_pressed("ui_accept") and jumps > 0:
		jumps -= 1
		velocity.y = JUMP_VELOCITY
		
	move_and_slide()
