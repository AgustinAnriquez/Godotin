## Sierra.gd
extends Area
class_name Sierra

func _on_body_entered(body: Node) -> void:
	var player: Godotin = body
	player.respawn()

