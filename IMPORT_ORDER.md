# Import Order

Add the files in this order. The CSV files are in `data/` and the model files are in `models/`.

| Order | CSV file | Model file |
|:-----:|:---------|:-----------|
| 1 | medicine.csv | medicine-model.gml |
| 2 | condition.csv | condition-model.gml |
| 3 | may_treat.csv | may_treat-model.gml |
| 4 | may_prevent.csv | may_prevent-model.gml |
| 5 | contraindicated_with_disease.csv | contraindicated_with_disease-model.gml |
| 6 | action.csv | action-model.gml |
| 7 | has_mechanism_of_action.csv | has_mechanism_of_action-model.gml |
| 8 | structure.csv | structure-model.gml |
| 9 | has_structural_class.csv | has_structural_class-model.gml |
| 10 | therapeutic.csv | therapeutic-model.gml |
| 11 | has_therapeutic_class.csv | has_therapeutic_class-model.gml |
| 12 | interacts_with.csv | interacts_with-model.gml |

Why this order: a relationship can only be drawn between nodes that already exist. Always import the node files (for example `medicine.csv`, `condition.csv`) before the relationship files that connect them (for example `may_treat.csv`).
