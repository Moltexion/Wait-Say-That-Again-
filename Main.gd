extends Control

@onready var notebookButton = $Button
@onready var notebook = $Notebook
@onready var notebookOpen: bool
@onready var closedPosition = Vector2(574.5, 902.935)
@onready var openedPosition = Vector2(574.5, 328.905)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func _on_button_pressed() -> void:
	var tween = create_tween()
	
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.set_ease(Tween.EASE_OUT)
	
	if notebookOpen == false:
		tween.tween_property(notebook, "position", openedPosition, 1)
		notebookOpen = true
		notebook.sprite_frames.set_animation_loop("Open", false)
		notebook.play("Open")
	elif notebookOpen == true:
		tween.tween_property(notebook, "position", closedPosition, 1)
		notebookOpen = false
		notebook.sprite_frames.set_animation_loop("Close", false)
		notebook.play("Close")
	 # Replace with function body.
