extends TextEdit

@onready var textEdit = $"."
@onready var para = "Today, we are looking into one of the most fascinating mysteries in the universe, black holes. These cosmic entities form when a massive star runs out of fuel, dies, and collapses entirely under its own crushing gravity into an infinitely small, dense point called a singularity. Surrounding this singularity is an invisible boundary known as the event horizon, which acts as the ultimate point of no return. Once anything crosses this threshold whether it is a spaceship, an asteroid, or even light, the fastest element in the cosmos the gravitational pull is so immense that escape becomes completely impossible. In fact, this extreme gravity is so powerful that it warps the very fabric of space and physically slows down time itself, meaning a clock near a black hole ticks much slower than a clock on Earth. Because black holes emit no light, detection relies on observing the glowing disks of gas swirling around the perimeter or watching nearby stars wobble from the invisible pull. It is a place where ordinary laws of physics completely break down, serving as the ultimate cosmic laboratory."
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _on_text_changed_process() -> void:
	var playerInput = textEdit.text
	
	if para.begins_with(playerInput):
		textEdit.add_theme_color_override("font_color", Color.DARK_GREEN)
	else:
		textEdit.add_theme_color_override("font_color", Color.INDIAN_RED)
