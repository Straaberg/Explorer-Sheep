extends RigidBody2D

const AMOUNT_MOVE = 100

func _ready():
	set_process_input(true)
	set_linear_damp(2.5)
	
func _input(event):
	if event.is_action_pressed("ui_up"):
		move_character(0,-AMOUNT_MOVE)
	if event.is_action_pressed("ui_down"):
		move_character(0,AMOUNT_MOVE)
	if event.is_action_pressed("ui_left"):
		move_character(-AMOUNT_MOVE,0)
	if event.is_action_pressed("ui_right"):
		move_character(AMOUNT_MOVE,0)
		
func move_character(x,y):
	set_axis_velocity(Vector2(x,y))
	