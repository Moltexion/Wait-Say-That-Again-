extends TextEdit

@onready var textEdit = $"."
@onready var para = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales facilisis tellus, sed placerat lacus vestibulum ac. Duis vel facilisis neque. Phasellus pretium cursus quam ac consectetur. Aliquam mattis malesuada arcu non tincidunt. Fusce risus mauris, auctor eu ullamcorper eu, convallis ac massa. Maecenas auctor sollicitudin ultrices. Nulla facilisi. Donec egestas tincidunt mauris pretium posuere. Nulla libero erat, gravida eu orci vitae, cursus maximus urna. Nulla et consectetur lacus. Nullam a mi nunc. Donec nec placerat ligula, sed interdum neque. In blandit placerat tellus quis viverra. Duis congue vulputate tincidunt. Nam porttitor pretium dignissim."
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	var playerInput = textEdit.text
	# this is a text
	if para.begins_with(playerInput):
		textEdit.add_theme_color_override("font_color", Color.DARK_GREEN)
	else:
		textEdit.add_theme_color_override("font_color", Color.INDIAN_RED)
