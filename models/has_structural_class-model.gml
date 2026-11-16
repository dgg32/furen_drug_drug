creator "Sixing Huang"
version "2"
graph [
	node [
		$id "e4src"
		tags "Medicine"
		$map 0
		$path "$"
		*label "medicine_name"
	]
	node [
		$id "e4tgt"
		tags "Structure"
		$map 0
		$path "$"
		*label "structure_id"
	]
	edge [
		$source "e4src"
		$target "e4tgt"
		label "HAS_STRUCTURAL_CLASS"
		$single 1
	]
]
