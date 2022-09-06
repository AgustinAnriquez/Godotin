#MenuInicio.gd
tool
extends Control

export(String, FILE, "*.tscn") var menu_ajustes = ""
export(String, FILE, "*.tscn") var nivel_inicial = ""

func _on_BotonSalir_pressed() -> void:
	get_tree().quit()

func _on_BotonOpciones_pressed() -> void:
	$BotonSFX.play()
	get_tree().change_scene(menu_ajustes)

func _get_configuration_warning() -> String:
	if menu_ajustes == "":
		return "Chequear rutas"
	return ""

func _on_BotonNuevo_pressed() -> void:
	get_tree().change_scene(nivel_inicial)
