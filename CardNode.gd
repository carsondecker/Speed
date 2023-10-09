extends Node2D

#Variables
var is_visible = false
var in_hand = false
var initial_position
var rank
var suit

# Called when the node enters the scene tree for the first time.
func _ready():
	initial_position = position
	
	#Match Sprite
	if is_visible:
		_change_sprite()
	else:
		$Sprite.texture = load("res://Assets/ace_of_spades.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#Change card info
func _change_card(card: Card):
	rank = card.rank
	suit = card.suit
	if is_visible:
		_change_sprite()

func _make_visible():
	is_visible = true
	_change_sprite()

func _hide():
	is_visible = false
	$Sprite.texture = load("res://Assets/ace_of_spades.png")

#If hovering over card in your hand, lift card up
func _on_area_mouse_entered():
	if in_hand:
		position.y = initial_position.y - 20

#If no longer hovering over card, move it back
func _on_area_mouse_exited():
	if in_hand and not position == initial_position:
		position = initial_position

#Change sprite to match rank and suit
func _change_sprite():
	if rank == null or suit == null:
		$Sprite.texture = load("res://Assets/ace_of_spades.png")
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
		$Sprite.texture = load("res://Assets/kind_of_clubs.png")
	if rank == 13 and suit == "Diamonds":
		$Sprite.texture = load("res://Assets/king_of_diamonds.png")
