extends Node2D

#Variables
var is_visible = false
var play_pile = false
var player1_deck = false
var player2_deck = false
var deck = Deck.new()
var card
var rank
var suit

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalBus.cards_updated.connect(_show_card)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _make_visible():
	is_visible = true
	_change_sprite()

func _hide():
	is_visible = false
	$Sprite.texture = load("res://Assets/card_back.png")

func _on_button_button_down():
	if not deck.is_empty():
		if player1_deck:
			SignalBus.player1_draw.emit()
		if player2_deck:
			SignalBus.player2_draw.emit()

func _add_card(inc_card: Card):
	deck._add_to_top(inc_card)

func _show_card():
	if deck.is_empty():
		card = null
		rank = null
		suit = null
	else:
		card = deck._get_top()
		rank = card.rank
		suit = card.suit
	
	if is_visible:
		_change_sprite()
	else:
		$Sprite.texture = load("res://Assets/card_back.png")

func _set_deck(inc_deck: Deck):
	deck = inc_deck
	_show_card()

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
