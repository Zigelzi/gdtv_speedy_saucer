extends RigidBody2D

@export var _movement_speed: int = 200
@export var _max_speed = 800

func _physics_process(delta):
	var movement_direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	apply_force(movement_direction * _movement_speed)
	print(linear_velocity)

func _integrate_forces(state):
	if state.linear_velocity.length() > _max_speed:
		state.linear_velocity = state.linear_velocity.normalized() * _max_speed