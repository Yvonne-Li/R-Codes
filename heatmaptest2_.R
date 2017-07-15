contour plot r datt <- data.frame(person=factor(paste0("id#", 1:50), 
                                               levels =rev(paste0("id#", 1:50))), matrix(sample(LETTERS[1:3], 150, T), ncol = 3))

library(ggplot2); library(reshape2)
dat3 <- melt(dat, id.var = 'person')
ggplot(dat3, aes(variable, person)) + geom_tile(aes(fill = value),
                                                colour = "white") + scale_fill_manual(values=c("red", "blue", "black"))