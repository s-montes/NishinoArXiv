# Nishino DMRG dataset

For over 20 years, Professor [Tomotoshi Nishino](http://quattro.phys.sci.kobe-u.ac.jp/nishino_e.html) has been searching for preprints related to DMRG, tensor networks and other related topics. In his words:

>"Every morning (or evening), he accesses arXiv.org, and search key word such as DMRG, Renormalization, Entropy, Fidelity, Density, etc. from the abstract. After finding out preprints in this way, he reads tytle of most of the preprint listed in arXive again from the top to the bottom, or sometimes looks at authors. Articles detected in this primitive way is listed during the day." (http://quattro.phys.sci.kobe-u.ac.jp/dmrg/admin.html)

Over time he has created an [extensive dataset](http://quattro.phys.sci.kobe-u.ac.jp/dmrg.html), detailing the evolution of a very interesting corner of the many-body physics community. I have scrapped the arXiv IDs from Nishino's page and obtained the relevant information for each paper via the [arXiv API](https://arxiv.org/help/api/index).

This is an informal project. My goal is to use some common data analysis tools to get some qualitative understanding of the evolution of the tensor network / DMRG community using the information kindly gathered by Prof. Nishino.

## Contains:
### Notebooks:
- [*NishinoDMRG-Authors.ipynb*](https://nbviewer.jupyter.org/github/s-montes/NishinoArXiv/blob/master/notebooks/NishinoDMRG-Authors.ipynb): A notebook that studies the relations between the authors as inferred from their collaborations.
- [*NishinoDMRG-Abstracts.ipynb*](https://nbviewer.jupyter.org/github/s-montes/NishinoArXiv/blob/master/notebooks/NishinoDMRG-Abstracts.ipynb): A notebook that studies the most common topics in the dataset using probabilistic topic modeling.
- *prolificGraph.pdf*: Collaboration graph of the most prolific authors in the dataset.

### Data
Messy scripts:
- *ExtractingIDs.ipynb*: Jupyter notebook (in R) for scrapping all the arXiv ids from Nishino's webpage.
- *getArXivInformation.R*: Script for running the [arXiv API](https://github.com/ropensci/aRxiv) using the list of ids.
- *NishinoPreprints.csv*: Relevant information about the preprints in Nishino's list (arXiv ID, title, authors, abstract, submission date) (between January 1998 and March 2018).
