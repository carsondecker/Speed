extends Node2D

#Variables
var is_visible = false
var rank
var suit

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible:
		_change_sprite()
	else:
		$Sprite.set_texture("res://Assets/2_of_clubs.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#Change sprite to match rank and suit
func _change_sprite():
	pass
