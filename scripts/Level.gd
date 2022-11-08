extends Node2D

var PlayerScore = 0
var Player2Score = 0

# When the ball leaves either side of the screen
func _on_LeftGoal_body_entered(body):
	scored_achieved()
	Player2Score +=1
	
func _on_RightGoal_body_entered(body):
	scored_achieved()
	PlayerScore += 1

# Update the scoreboard & listen for ESC key
func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene("res://scenes/Menu.tscn")
	$Scoreboard/PlayerScore.text = "Player 1 :   " + str(PlayerScore)
	$Scoreboard/Player2Score.text = str(Player2Score) + "   : Player 2"

# Change the speed of the ball from 0 to 600 once the starting Timer has finished counting.
func _on_Timer_timeout():
	$Ball.start_ball()
	
# When a goal has been made by either side
func scored_achieved():
	$Ball.position = Vector2(640, 360)
	$Ball.stop_ball()
	$Timer.start()
	$Player.position = Vector2(15, 360)
	$Player2.position = Vector2(1265, 360)
