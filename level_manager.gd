extends Node2D

func _ready():
	var maze:Area2D = get_node("Player/Maze")
	maze.body_exited.connect(_on_player_body_exited)

func _on_player_body_exited(body:Node):
	if (body.name == "Player"):
		call_deferred("reset_level")

func reset_level() -> void:
	var sceneTree: SceneTree = get_tree()
	sceneTree.reload_current_scene()