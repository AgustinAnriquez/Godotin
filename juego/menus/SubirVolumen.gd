#CambiarVolumen.gd
extends Button

export(NodePath) var nodo_sfx
var boton_sfx: AudioStreamPlayer

func _ready() -> void:
	connect("pressed", self, "presionando")
	boton_sfx = get_node(nodo_sfx)
	
func presionando() -> void:
	boton_sfx.play()
