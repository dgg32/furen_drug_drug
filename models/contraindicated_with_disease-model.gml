creator "Sixing Huang"
version "2"
graph [
	node [
		$id "e2src"
		tags "Medicine"
		$map 0
		$path "$"
		*label "medicine_name"
	]
	node [
		$id "e2tgt"
		tags "Condition"
		$map 0
		$path "$"
		*label "condition_id"
	]
	edge [
		$source "e2src"
		$target "e2tgt"
		label "CONTRAINDICATED_WITH_DISEASE"
		$single 1
	]
]
