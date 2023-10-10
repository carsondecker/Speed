extends Node2D

#Variables
var is_visible = false
var in_hand = false
var dragging = false
var hovering_enabled = true
var play_pile = false
var contacting_playable_pile = false
var contacted_node: Node
var initial_position
var card
var rank
var suit

# Called when the node enters the scene tree for the first time.
func _ready():
	initial_position = position
	
	#Match Sprite
	if is_visible:
		_change_sprite()
	else:
		$Sprite.texture = load("res://Assets/card_back.png")

func _disable_hovering():
	hovering_enabled = false

func _enable_hovering():
	hovering_enabled = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	if dragging:
		position = get_global_mouse_position()

#Change card info
func _change_card(inc_card: Card):
	if inc_card == null:
		rank = null
		suit = null
		card = null
	else:
		rank = inc_card.rank
		suit = inc_card.suit
		card = inc_card
	
	if is_visible:
		_change_sprite()

func _make_visible():
	is_visible = true
	_change_sprite()

func _hide():
	is_visible = false
	$Sprite.texture = load("res://Assets/card_back.png")

#If hovering over card in your hand, lift card up
func _on_button_mouse_entered():
	if in_hand and hovering_enabled:
		position.y = initial_position.y - 20

#If no longer hovering over card, move it back
func _on_button_mouse_exited():
	if in_hand:
		position = initial_position
		SignalBus.p1_dragging_stopped.emit()

func _on_button_button_down():
	if in_hand:
		dragging = true
		$Sprite.z_index = 1
		SignalBus.p1_dragging.emit()

func _on_button_button_up():
	if contacting_playable_pile:
		contacted_node._add_card(card)
		rank = null
		suit = null
		card = null
		_change_sprite()
		SignalBus.cards_updated.emit()
	dragging = false
	$Sprite.z_index = 0
	position = initial_position

func _on_area_area_entered(area):
	if area.get_parent().is_in_group("Deck") and area.get_parent().play_pile:
		if _playable_check(area.get_parent()):
			contacting_playable_pile = true
			contacted_node = area.get_parent()
		else:
			contacting_playable_pile = false

func _on_area_area_exited(area):
	if area.get_parent() == contacted_node:
		contacting_playable_pile = false

#Check if Card can be played
func _playable_check(other_card) -> bool:
	return (rank == other_card.rank + 1 or rank == other_card.rank - 1) or ((rank == 13 and other_card.rank == 1) or (rank == 1 and other_card.rank == 13))

#Change sprite to match rank and suit
func _change_sprite():
	if rank == null or suit == null:
		$Sprite.texture = null
	if rank == 1 and suit == "Spades":
		$Sprite.texture = load("res://Assets/ace_of_spades.png")
	if rank == 1 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/ace_of_hearts.png")
	if rank == 1 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/ace_of_clubs.png")
	if rank == 1 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/ace_of_diamonds.png")
	if rank == 2 and suit == "Spades":
		$Sprite.texture = load("res://Assets/2_of_spades.png")
	if rank == 2 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/2_of_hearts.png")
	if rank == 2 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/2_of_clubs.png")
	if rank == 2 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/2_of_diamonds.png")
	if rank == 3 and suit == "Spades":
		$Sprite.texture = load("res://Assets/3_of_spades.png")
	if rank == 3 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/3_of_hearts.png")
	if rank == 3 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/3_of_clubs.png")
	if rank == 3 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/3_of_diamonds.png")
	if rank == 4 and suit == "Spades":
		$Sprite.texture = load("res://Assets/4_of_spades.png")
	if rank == 4 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/4_of_hearts.png")
	if rank == 4 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/4_of_clubs.png")
	if rank == 4 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/4_of_diamonds.png")
	if rank == 5 and suit == "Spades":
		$Sprite.texture = load("res://Assets/5_of_spades.png")
	if rank == 5 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/5_of_hearts.png")
	if rank == 5 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/5_of_clubs.png")
	if rank == 5 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/5_of_diamonds.png")
	if rank == 6 and suit == "Spades":
		$Sprite.texture = load("res://Assets/6_of_spades.png")
	if rank == 6 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/6_of_hearts.png")
	if rank == 6 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/6_of_clubs.png")
	if rank == 6 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/6_of_diamonds.png")
	if rank == 7 and suit == "Spades":
		$Sprite.texture = load("res://Assets/7_of_spades.png")
	if rank == 7 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/7_of_hearts.png")
	if rank == 7 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/7_of_clubs.png")
	if rank == 7 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/7_of_diamonds.png")
	if rank == 8 and suit == "Spades":
		$Sprite.texture = load("res://Assets/8_of_spades.png")
	if rank == 8 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/8_of_hearts.png")
	if rank == 8 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/8_of_clubs.png")
	if rank == 8 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/8_of_diamonds.png")
	if rank == 9 and suit == "Spades":
		$Sprite.texture = load("res://Assets/9_of_spades.png")
	if rank == 9 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/9_of_hearts.png")
	if rank == 9 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/9_of_clubs.png")
	if rank == 9 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/9_of_diamonds.png")
	if rank == 10 and suit == "Spades":
		$Sprite.texture = load("res://Assets/10_of_spades.png")
	if rank == 10 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/10_of_hearts.png")
	if rank == 10 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/10_of_clubs.png")
	if rank == 10 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/10_of_diamonds.png")
	if rank == 11 and suit == "Spades":
		$Sprite.texture = load("res://Assets/jack_of_spades.png")
	if rank == 11 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/jack_of_hearts.png")
	if rank == 11 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/jack_of_clubs.png")
	if rank == 11 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/jack_of_diamonds.png")
	if rank == 12 and suit == "Spades":
		$Sprite.texture = load("res://Assets/queen_of_spades.png")
	if rank == 12 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/queen_of_hearts.png")
	if rank == 12 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/queen_of_clubs.png")
	if rank == 12 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/queen_of_diamonds.png")
	if rank == 13 and suit == "Spades":
		$Sprite.texture = load("res://Assets/king_of_spades.png")
	if rank == 13 and suit == "Hearts":
		$Sprite.texture = load("res://Assets/king_of_hearts.png")
	if rank == 13 and suit == "Clubs":
		$Sprite.texture = load("res://Assets/king_of_clubs.png")
	if rank == 13 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/king_of_diamonds.png")
