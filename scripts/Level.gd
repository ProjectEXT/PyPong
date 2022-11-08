extends Node2D

var PlayerScore = 0
var ComputerScore = 0

func _on_LeftGoal_body_entered(body):
	$Ball.position = Vector2(640, 360)
	ComputerScore +=1

func _on_RightGoal_body_entered(body):
	$Ball.position = Vector2(640, 360)
	PlayerScore +=1
	
func _process(delta):
	$Scoreboard/PlayerScore.text = "Player 1 :   " + str(PlayerScore)
	$Scoreboard/ComputerScore.text = str(ComputerScore) + "   : Computer"
