creator "Sixing Huang"
version "2"
graph [
	node [
		$id "e5src"
		tags "Medicine"
		$map 0
		$path "$"
		*label "medicine_name"
	]
	node [
		$id "e5tgt"
		tags "Therapeutic"
		$map 0
		$path "$"
		*label "therapeutic_id"
	]
	edge [
		$source "e5src"
		$target "e5tgt"
		label "HAS_THERAPEUTIC_CLASS"
		$single 1
	]
]
