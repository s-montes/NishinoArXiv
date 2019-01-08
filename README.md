# Nishino DMRG list

Get all the (interesting) arXiv information from the extensive list of preprints kept by Tomotoshi Nishino about [DMRG and tensor networks](http://quattro.phys.sci.kobe-u.ac.jp/dmrg.html).

## Contains:
- ExtractingIDs.ipynb: Jupyter notebook (in R) for scrapping all the arXiv ids from Nishino's webpage.
- getArXivInformation.R: Script for running the [arXiv API](https://github.com/ropensci/aRxiv) using the list of ids.
- NishinoPreprints.csv: Nishino's list of preprints (1998-2018).