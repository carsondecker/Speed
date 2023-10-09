extends Node

#THIS IS A TEST WITH THE RULES OF SPEED.
#THIS SHOULD BE USED AS A REFERENCE OF HOW TO WORK THIS INTO THE REAL GAME.

#Instance variables
var p1_hand = Deck.new()
var p2_hand = Deck.new()
var p1_deck = Deck.new()
var p2_deck = Deck.new()
var draw_deck_1 = Deck.new()
var draw_deck_2 = Deck.new()
var play_pile_1 = Deck.new()
var play_pile_2 = Deck.new()
var full_deck = Deck.new()

#Set up game
func _ready():
	_starting_setup()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#Setup
func _starting_setup():
	#Empty all decks
	p1_hand._empty()
	p2_hand._empty()
	p1_deck._empty()
	p2_deck._empty()
	draw_deck_1._empty()
	draw_deck_2._empty()
	play_pile_1._empty()
	play_pile_2._empty()
	full_deck._empty()
	
	#Get deck ready to split
	full_deck._fill_full_deck()
	full_deck._shuffle()
	
	#Player hands
	for i in range(0,5):
		draw_deck_1._add_to_top(full_deck._deal())
	for i in range(0,5):
		draw_deck_2._add_to_top(full_deck._deal())
	
	#Draw piles
	for i in range(0,5):
		draw_deck_1._add_to_top(full_deck._deal())
	for i in range(0,5):
		draw_deck_2._add_to_top(full_deck._deal())
	
	#Play piles
	play_pile_1._add_to_top(full_deck._deal())
	play_pile_2._add_to_top(full_deck._deal())
	
	#Player decks
	for i in range(0,18):
		draw_deck_1._add_to_top(full_deck._deal())
	for i in range(0,18):
		draw_deck_2._add_to_top(full_deck._deal())
