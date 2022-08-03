extends KinematicBody2D
func _ready(): position = get_parent().get_node("Player").position + Vector2(1000, 0).rotated(rand_range(0, 2*PI))
func _physics_process(delta): move_and_slide((get_parent().get_node("Player").position - position).normalized() * $AnimatedSprite.speed_scale / delta)
