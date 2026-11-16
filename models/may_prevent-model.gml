creator "Sixing Huang"
version "2"
graph [
	node [
		$id "e1src"
		tags "Medicine"
		$map 0
		$path "$"
		*label "medicine_name"
	]
	node [
		$id "e1tgt"
		tags "Condition"
		$map 0
		$path "$"
		*label "condition_id"
	]
	edge [
		$source "e1src"
		$target "e1tgt"
		label "MAY_PREVENT"
		$single 1
	]
]
