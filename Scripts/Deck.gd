class_name Deck

#Instance variables for Deck
var deck = []

#Array of all possible suits
var suits = ["Spades", "Hearts", "Clubs", "Diamonds"]

#BOTTOM OF DECK IS START OF ARRAY, TOP IS END OF ARRAY

#Add Card to bottom of the deck
func _add_to_bottom(card: Card):
	deck.insert(0, card)

#Add Card to top of the deck
func _add_to_top(card: Card):
	deck.append(card)

#Deal top card from the deck
#Remove Card from deck & return the Card
func _deal():
	deck.pop_back()

#Shuffle deck
func _shuffle():
	deck.shuffle()

#Fill deck with all 52 cards
func _fill_full_deck():
	deck = []
	for i in range(1,14):
		for j in suits:
			deck.append(Card.new(i, j))

#Empty deck
func _empty():
	deck.clear()

#Print the deck
func _print_deck():
	for i in deck:
		i._print()
