extends Node2D


func _on_LeftGoal_body_entered(body):
	$Ball.position = Vector2(640, 360)


func _on_RightGoal_body_entered(body):
	$Ball.position = Vector2(640, 360)
