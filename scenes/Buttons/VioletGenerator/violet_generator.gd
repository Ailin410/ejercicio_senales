extends TextureButton

var block_violet = load("res://scenes/Blocks/Violet/BlockViolet.tscn")

func _on_button_down() -> void:
	generate_block()

func generate_block():
	var block = block_violet.instantiate()
	add_child(block)
