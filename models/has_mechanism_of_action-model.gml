creator "Sixing Huang"
version "2"
graph [
	node [
		$id "e3src"
		tags "Medicine"
		$map 0
		$path "$"
		*label "medicine_name"
	]
	node [
		$id "e3tgt"
		tags "Action"
		$map 0
		$path "$"
		*label "action_id"
	]
	edge [
		$source "e3src"
		$target "e3tgt"
		label "HAS_MECHANISM_OF_ACTION"
		$single 1
	]
]
