extends KinematicBody2D


var speed = 600
var velocity = Vector2.ZERO

# Send the ball in a random direction
func _ready():
	randomize() # Randomizes the seed the numbers the engine chooses from below
	velocity.x = [-1,1] [randi() % 2]
	velocity.y = [-0.8,0.8] [randi() % 2]

# Make the ball move and calculate the collision with walls/paddles
func _physics_process(delta):
	var collision_object = move_and_collide(velocity * speed * delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.normal)
		
func stop_ball():
	speed = 0
	
func start_ball():
	speed = 600
	
