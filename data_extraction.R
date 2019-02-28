library(dplyr)
library(jsonlite)

df <- read.csv("data/num_od_15-24.csv", stringsAsFactors = F)
df <- flatten(df)
df <- df[7:60, ]
df <- df[, 2:22]
years <- c("", 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 
           2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, "2007-2017 Fold Change")
df <- `colnames<-`(df, years)

df <- df[-c(19, 20, 21), ]

write.csv(df, "data/data.csv")
