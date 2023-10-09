extends Node2D

#Variables
var p1_hand = Deck.new()
var p2_hand = Deck.new()
var p1_deck = Deck.new()
var p2_deck = Deck.new()
var draw_deck_1 = Deck.new()
var draw_deck_2 = Deck.new()
var play_pile_1 = Deck.new()
var play_pile_2 = Deck.new()
var full_deck = Deck.new()

var p1c1
var p1c2
var p1c3
var p1c4
var p1c5
var p2c1
var p2c2
var p2c3
var p2c4
var p2c5
var pp1
var pp2
var dd1
var dd2

#Set up game
func _ready():
	#Get all Card nodes
	p1c1 = get_node("Player1Card1/Card")
	p1c2 = get_node("Player1Card2/Card")
	p1c3 = get_node("Player1Card3/Card")
	p1c4 = get_node("Player1Card4/Card")
	p1c5 = get_node("Player1Card5/Card")
	p2c1 = get_node("Player2Card1/Card")
	p2c2 = get_node("Player2Card2/Card")
	p2c3 = get_node("Player2Card3/Card")
	p2c4 = get_node("Player2Card4/Card")
	p2c5 = get_node("Player2Card5/Card")
	pp1 = get_node("PlayPile1/Card")
	pp2 = get_node("PlayPile2/Card")
	dd1 = get_node("DrawDeck1/Card")
	dd2 = get_node("DrawDeck2/Card")
	
	_starting_setup()
	
	p1c1.in_hand = true
	p1c2.in_hand = true
	p1c3.in_hand = true
	p1c4.in_hand = true
	p1c5.in_hand = true
	p1c1._make_visible()
	p1c2._make_visible()
	p1c3._make_visible()
	p1c4._make_visible()
	p1c5._make_visible()
	pp1._make_visible()
	pp2._make_visible()

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
	
	#Player hands
	for i in range(0,5):
		p1_hand._add_to_top(full_deck._deal())
	for i in range(0,5):
		p2_hand._add_to_top(full_deck._deal())
	
	#Player decks
	for i in range(0,10):
		p1_deck._add_to_top(full_deck._deal())
	for i in range(0,10):
		p2_deck._add_to_top(full_deck._deal())
	
	p1c1._change_card(p1_hand.deck[0])
	p1c2._change_card(p1_hand.deck[1])
	p1c3._change_card(p1_hand.deck[2])
	p1c4._change_card(p1_hand.deck[3])
	p1c5._change_card(p1_hand.deck[4])
	p2c1._change_card(p2_hand.deck[0])
	p2c2._change_card(p2_hand.deck[1])
	p2c3._change_card(p2_hand.deck[2])
	p2c4._change_card(p2_hand.deck[3])
	p2c5._change_card(p2_hand.deck[4])
	pp1._change_card(play_pile_1._get_top())
	pp2._change_card(play_pile_2._get_top())
	dd1._change_card(draw_deck_1._get_top())
	dd2._change_card(draw_deck_2._get_top())
