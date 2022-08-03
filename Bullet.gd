extends Node2D
func enemyHit(area: Area2D): area.get_parent().get_node("AnimationPlayer").play("Death")
