extends RigidBody2D

@export var _movement_speed: int = 200


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var movement_direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	apply_impulse(movement_direction * _movement_speed)
