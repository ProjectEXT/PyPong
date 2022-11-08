extends Node2D

var PlayerScore = 0
var ComputerScore = 0

func _on_LeftGoal_body_entered(body):
	scored_achieved()
	ComputerScore +=1
	
func _on_RightGoal_body_entered(body):
	scored_achieved()
	PlayerScore += 1
	
func _process(delta):
	$Scoreboard/PlayerScore.text = "Player 1 :   " + str(PlayerScore)
	$Scoreboard/ComputerScore.text = str(ComputerScore) + "   : Computer"

func _on_Timer_timeout():
	$Ball.start_ball()
	
func scored_achieved():
	$Ball.position = Vector2(640, 360)
	$Ball.stop_ball()
	$Timer.start()
	$Player.position = Vector2(15, 360)
	$Computer.position = Vector2(1265, 360)
