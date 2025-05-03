extends TextureButton

var block_red = load("res://scenes/Blocks/Red/BlockRed.tscn")

func _on_button_down() -> void:
	generate_block()


func generate_block():
	var block = block_red.instantiate()
	add_child(block)
