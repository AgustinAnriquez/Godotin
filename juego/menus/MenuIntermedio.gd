#MenuIntermedio.gd
extends Control

onready var titulo = $Titulo/Label
onready var puntos = $Puntaje/Label

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	titulo.text = "Nivel {num} completo".format({"num": DatosJuego.num_nivel_actual})
	puntos.text = "{puntos} \n Puntos Totales".format({"puntos": DatosJuego.generar_puntaje()})
	
func _on_BotonSiguienteNivel_pressed() -> void:
	get_tree().change_scene(DatosJuego.nivel_proximo)
