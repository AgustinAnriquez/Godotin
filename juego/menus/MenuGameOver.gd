extends Control

var nivel_actual = ""

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	nivel_actual = DatosJuego.nivel_actual
	DatosJuego.reset()
	
func _on_BotonReintentar_pressed():
	get_tree().change_scene(nivel_actual)


func _on_BotonSalir_pressed() -> void:
	get_tree().quit()
