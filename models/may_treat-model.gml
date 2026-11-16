creator "Sixing Huang"
version "2"
graph [
	node [
		$id "e0src"
		tags "Medicine"
		$map 0
		$path "$"
		*label "medicine_name"
	]
	node [
		$id "e0tgt"
		tags "Condition"
		$map 0
		$path "$"
		*label "condition_id"
	]
	edge [
		$source "e0src"
		$target "e0tgt"
		label "MAY_TREAT"
		$single 1
	]
]
