extends CharacterBody2D

func _ready():
	position = get_parent().get_node("Player").position + Vector2(1000, 0).rotated(randf_range(0, 2*PI))
	var direction = (get_parent().get_node("Player").position - position).normalized()
	set_velocity(direction * $AnimatedSprite2D.speed_scale)
	move_and_slide()

func _physics_process(delta):
	# Your code here for handling physics-related updates
	velocity
