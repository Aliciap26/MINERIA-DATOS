# Evaluation Unit 2

### We assign the graphics library, and open the file that we will analyze called Project data.
    library(ggplot2)

### Read doc "Project-Data"
    movies <- read.csv(file.choose())
    movies

### Filters, we filter the information (data) that we want to obtain, in this case the genre and the production studies.
    movies<-movies[movies$Studio=="Buena Vista Studios"|movies$Studio=="Fox"|movies$Studio=="Paramount Pictures"|movies$Studio=="Sony"|movies$Studio=="Universal"|movies$Studio=="WB",]
    
    movies<-movies[movies$Genre=="action"|movies$Genre=="adventure"|movies$Genre=="animation"|movies$Genre=="comedy"|movies$Genre=="drama",]

### Graphs, We designate the value X the gender data. Y percentage

    Ggraph <- ggplot(movies, aes(x=Genre, y=Gross...US))

    Ggraph + geom_jitter(aes(size=Budget...mill.,color=Studio)) + geom_boxplot(size=0.4, alpha=0.8)

    GGgraph <- Ggraph + geom_jitter(aes(size=Budget...mill.,color=Studio)) + geom_boxplot(size=0.4, alpha=0.8)

    GGgraph

### Graphs/colors date, We define the color of the points and the size.
    GGgraph + xlab("Genre") + ylab("Groos % US") + ggtitle("Domestic Gross % by Genre")+ theme(axis.title.x = element_text(color = "Purple", size=14), axis.title.y = element_text(color = "Purple", size=14), plot.title = element_text(color = "Black", size=18,hjust=0.5))
    
    
    
   ![image](https://user-images.githubusercontent.com/44456885/171971615-50befaf6-a9e5-44fa-80d7-696492df1355.png)
## Conclusions

- Alicia Pérez: We had a bit of difficulty knowing which was the
correct filter to obtain the graph, as similar as possible to the one
we were asked to match, after investigating, we managed to have a
similar one, in particular, it is interesting to me as a data can make
the graph look very different, it makes a big difference.
- Erwin Howard: It was really interesting to see how the graph
changes when trying to resemble the one that was asked of us in
the evaluation. In the end we succeeded and reinforced teamwork
and communication, seeing my partner's points of view.
In this practice reinforce knowledge learned in the last unit.

[Link video Youtube](https://www.youtube.com/watch?v=uaQcs3C_VFc)
