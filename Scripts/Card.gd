class_name Card

#Instance variables for Card
var rank: int
var suit: String

#Instantiate Card
func _init(r, s):
	rank = r
	suit = s

#Return the rank of the card
func get_rank():
	return rank

#Return the suit of the card
func get_suit():
	return suit

func _print():
	print(str(rank) + " of " + suit)
