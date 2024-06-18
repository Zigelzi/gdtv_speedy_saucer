extends RigidBody2D

@export var _movement_speed: int = 200
@export var _max_speed = 800

var _start_position

func _ready():
	_start_position = position

func _physics_process(delta):
	var movement_direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	apply_force(movement_direction * _movement_speed)
	
func _integrate_forces(state):
	if state.linear_velocity.length() > _max_speed:
		state.linear_velocity = state.linear_velocity.normalized() * _max_speed