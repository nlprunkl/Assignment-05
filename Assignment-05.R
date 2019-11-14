rm(list=ls(all=TRUE))
cat("\014")

if (!require("data.table")) install.packages("data.table")
library("data.table")

header <- read.table("A191RL1Q225SBEA.csv", header = TRUE,
                     sep=",", nrow = 1)
A191RL1Q225SBEA <- fread("A191RL1Q225SBEA.csv",
                                 skip=1, sep=",",header=FALSE,
                                 data.table=FALSE)
setnames(A191RL1Q225SBEA, colnames(header))
rm(header)

View(A191RL1Q225SBEA)
str(A191RL1Q225SBEA)

summary(A191RL1Q225SBEA)
