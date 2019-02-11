# R script for obtaining all the relevant arXiv information
# from Nishino's DMRG extensive selection
# See: http://quattro.phys.sci.kobe-u.ac.jp/dmrg.html
# April, 2018

library(dplyr)
library(aRxiv)

preprints = read.csv('./NishinoPreprints.csv', header = TRUE, sep = ",")

preprints$Nishino_Rating = as.factor(preprints$Nishino_Rating)
preprints = distinct(preprints, arXiv_id, .keep_all = TRUE)

arXiv_info = data.frame(arXiv_id = character(),
                        NishinoRating = character(),
                        title = character(),
                        authors = character(),
                        submitted = character(),
                        abstract = character(),
                        doi = character())

for (pp in 1:nrow(preprints)){
# for (pp in 1:5){
    z = arxiv_search(id_list = as.character(preprints[pp,1]))
    new_row = cbind(preprints[pp,], z$title, z$authors, z$submitted, z$abstract, z$doi)
    arXiv_info = rbind(arXiv_info, new_row)
    
    if (pp %% 100 == 0){
        print(pp)
        write.csv(arXiv_info, file="./arxiv_search.csv", row.names = FALSE)
        }
}

# names(arXiv_info)=c("arXiv_id", "Nishino_Rating", "title", "authors", "submitted", "abstract", "doi")

write.csv(arXiv_info, file="./arxiv_search.csv", row.names = FALSE)
