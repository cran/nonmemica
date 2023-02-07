# library(nonmemica)
# dir.NONMEM <- "C:/Desktop/Example" # This is the general directory where the folders of the runs are located.
options(project = '.')
undebug(nonmemica:::partab.character)
partab("logreg", relative=F)
