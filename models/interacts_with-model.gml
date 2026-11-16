creator "Sixing Huang"
version "2"
graph [
	node [
		$id "iwsrc"
		tags "Medicine"
		$map 0
		$path "$"
		*label "medicine_name"
	]
	node [
		$id "iwtgt"
		tags "Medicine"
		$map 0
		$path "$"
		*label "interacting_medicine_name"
	]
	edge [
		$source "iwsrc"
		$target "iwtgt"
		label "INTERACTS_WITH"
		$single 1
		severity "severity"
	]
]
