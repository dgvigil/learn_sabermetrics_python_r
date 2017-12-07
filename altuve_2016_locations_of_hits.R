library(ggplot2)
library(dplyr) 

# Import all of the data from the Altuve-2016-hitting.csv file
altuve2016_all <- read.csv("Altuve-2016-hitting.csv", header = TRUE, sep = ',')

# Let's just get hits and filter out all the outs
hits <- filter(altuve2016_all, type == 'H')


hits$type<-factor(hits$type,levels = c("Single","Double", "Triple","Home Run"))

ggplot()+
  geom_point(data=hits,aes(x=x,y=y,color=des)) +
  coord_equal()+
  scale_x_continuous(breaks = NULL,name="") +
  scale_y_reverse(breaks = NULL,name="") +
  scale_size_manual(values = c(2,4,6,10)) +
  scale_color_manual(values = c("red","green","blue","purple"))