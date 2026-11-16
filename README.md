# Know Your Drugs: A Drug Knowledge Graph

Taking two medicines together can be riskier than taking either one alone. This repository contains a small **knowledge graph** of medicines: what they treat, what they should not be used with, how they work, and how they interact with each other.

You will load the graph into **[Gemini Explore](https://demo.geminidata.com)** and ask it questions in plain English. The chatbot turns your question into a database query and shows you the answer.

> **Disclaimer:** This data is for learning only. It is **not medical advice**. Always ask a doctor or pharmacist about your own medicines.

## What's in the graph

| | Count |
|---|---|
| Medicines | 499 |
| Conditions (diseases and symptoms) | 869 |
| Drug–drug interactions | 1,395 |

The graph has five kinds of things (**nodes**) and the links between them (**relationships**):

```
                 (Structure)    (Therapeutic class)
                       \          /
 (Medicine) --INTERACTS_WITH-- (Medicine) --MAY_TREAT-------------------> (Condition)
                       /                 --MAY_PREVENT----------------->
              (Mechanism of action)      --CONTRAINDICATED_WITH_DISEASE->
```

- **Medicine**: a drug, with its side effects and its chemical structure (SMILES).
- **Condition**: a disease or symptom, e.g. *Hypertension*.
- **INTERACTS_WITH** has a **severity**: `LIFE-THREATENING`, `SERIOUS`, `MODERATE`, `MINOR` or `BENEFICIAL`.
- **CONTRAINDICATED_WITH_DISEASE** means the medicine should **not** be used by people with that condition.

## Files

| File | What it is |
|---|---|
| [data.zip](data.zip) | The data: 12 CSV files (also unpacked in [data/](data/)) |
| [models.zip](models.zip) | One model file (`.gml`) per CSV, telling Gemini Explore how to read it (also in [models/](models/)) |
| [IMPORT_ORDER.md](IMPORT_ORDER.md) | The order in which to add the files |
| [prompt.txt](prompt.txt) | Instructions for the chatbot, describing the graph |
| [question.txt](question.txt) | 10 example questions to try |
| [unknown_structure.txt](unknown_structure.txt) | A mystery molecule for the challenge below |

## Getting started

1. **Download** [data.zip](https://github.com/dgg32/furen_drug_drug/blob/main/data.zip), [models.zip](https://github.com/dgg32/furen_drug_drug/blob/main/models.zip) and [prompt.txt](https://github.com/dgg32/furen_drug_drug/blob/main/prompt.txt), then unzip the two zip files.
2. **Open** [demo.geminidata.com](https://demo.geminidata.com).
3. **Import** each CSV file together with its model file, **in the order** listed in [IMPORT_ORDER.md](IMPORT_ORDER.md). Medicines and conditions must be added before the relationships that connect them.
4. **Paste** the contents of [prompt.txt](prompt.txt) into the chatbot's instructions.
5. **Ask** a question, for example:
   - *Which medicines interact with Rasagiline?*
   - *Is it safe to take Fenofibrate with Ezetimibe?*
   - *Which medicines are contraindicated in pregnancy?*
   - *What are the side effects of Sodium Valproate?*

More questions are in [question.txt](question.txt).

## Tips for asking good questions

- **Use the medicine's name**, e.g. *Ibuprofen*. The graph uses generic names, not brand names.
- **Ask one thing at a time.** "Which medicines treat hypertension?" works better than a long question with several parts.
- **If the answer is empty**, the information may simply not be in this small dataset. Some well-known pairs (e.g. Warfarin + Aspirin) are not included.
- **Check the query.** The chatbot shows the query it wrote; look at it to see how your question was understood.

## Challenge: the mystery molecule

[unknown_structure.txt](unknown_structure.txt) holds the chemical structure of a "new" drug, written in SMILES (a way of writing a molecule as text). There is no interaction data for it yet. Can you predict what it might interact with?

1. Copy the SMILES text and search for similar structures in [PubChem](https://pubchem.ncbi.nlm.nih.gov/) (draw/structure search) or [KEGG SIMCOMP](https://www.genome.jp/tools/simcomp/).
2. Find the most similar medicine that is also in our graph.
3. Ask the chatbot what that medicine interacts with, and how severe it is.

Similar molecules often behave similarly, so these interactions are good candidates to test first for the new drug.

## Discussion questions

- Some medicines are listed as **treating** a condition and also being **contraindicated** with it. How can both be true?
- More than 90% of the interactions are serious or life-threatening. Why might a dataset look like this?
- Who should have access to this kind of information: drug makers, regulators, doctors, patients?

## Data sources

- [Indian Medicine Data](https://www.kaggle.com/datasets/mohneesh7/indian-medicine-data/data) (Kaggle, Apache 2.0): interactions and side effects
- [11000 Medicine Details](https://www.kaggle.com/datasets/singhnavjot2062001/11000-medicine-details) (Kaggle, CC0): side effects
- [RxNorm / UMLS](https://www.nlm.nih.gov/research/umls/rxnorm/index.html): treats, prevents, contraindications and drug classes
- [PubChem](https://pubchem.ncbi.nlm.nih.gov/) and [KEGG](https://www.genome.jp/kegg/): chemical structures and IDs

Read more about how the graph was built in the article [Know Your Drugs: A Knowledge Graph for Drug-Drug-Disease Interactions](https://medium.com/codex/know-your-drugs-a-knowledge-graph-for-drug-drug-disease-interactions-a0629d192419). The original pipeline is at [dgg32/drug-drug-interactions](https://github.com/dgg32/drug-drug-interactions).
