extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	var block_red = get_node("RedGenerator")
	block_red.button_down.connect(count_new_instance)
	var block_violet = get_node("VioletGenerator")
	block_violet.button.down.connect(count_new_instance)
	pass


func count_new_instance():
	instancesCount += 1
	$CountLabel.text = str(instancesCount)

func delete():
	instancesCount = 0
	$CountLabel.text = str(instancesCount)
