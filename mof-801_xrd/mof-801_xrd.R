install.packages("tidyverse")
library(tidyverse)
library(ggplot2)



csv_files <- list.files(pattern=".csv",all.files=TRUE, full.names=FALSE)

df_0 <- read.csv(csv_files[1:1])
df_1 <- read.csv(csv_files[2:2])
df_2 <- read.csv(csv_files[3:3])
df_3 <- read.csv(csv_files[4:4])
df_4 <- read.csv(csv_files[5:5])
df_5 <- read.csv(csv_files[6:6])


colnames(df_0)

p <- ggplot(mapping=aes(x=Pos....2θ., y=Iobs..cps.))

p + 
  geom_line(data=df_0, color="blue")+
  geom_line(data=df_1, color="red")+
  geom_line(data=df_2, color="yellow")+
  geom_line(data=df_3, color="green")+
  geom_line(data=df_4, color="black")+
  geom_line(data=df_5, color="purple")
  
  


# open csv file that contains all data
df <- read.csv("5L-all.csv")

col = colnames(df)
df_filtered <- filter(df, df$angle < 29 & df$angle > 5)


ggplot(data=df_filtered)+
  geom_line(mapping=aes(x=angle, y=X5L.0))+
  geom_line(mapping=aes(x=angle, y=X5L.1))+
  geom_line(mapping=aes(x=angle, y=X5L.2))+
  geom_line(mapping=aes(x=angle, y=X5L.3))+
  geom_line(mapping=aes(x=angle, y=X5L.4))+
  geom_line(mapping=aes(x=angle, y=X5L.5))

# Backup
df <- read.csv(csv_files[1:1]) # This is the way of slicing a list in R
wd <- getwd() # Get the path of the working directory
new_string <- paste("df_", sep="", type.convert(x, as.is = "string")) # Combine two string


# for loop
for (x in 1:10) {
  dname <- paste("df_", sep="", type.convert(x, as.is = "string"))
  print(dname)
}










