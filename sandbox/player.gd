extends CharacterBody2D

const speed = 300.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var directionX: float = Input.get_axis("ui_left", "ui_right")
	var directionY: float = Input.get_axis("ui_up", "ui_down")
	velocity.x = directionX * speed
	velocity.y = directionY * speed
	move_and_slide()
