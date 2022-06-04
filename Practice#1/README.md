# Practice 1

1. Find a data source with csv format(Free topic)
2. Read the csv and parse the data with R
3. Generate three plots with R that tell the story of the data,
the first one that is a scatterplot of points,
the second that is a graph in facets and
the third a graph that tells us something statistical like the distribution of the data and
containing the themes layer.

## Read Doc "cereal(acomodado)"
    cereal <- read.csv(file.choose())

    head(cereal)

    library(ggplot2)

## plot dot scatter plot
    ggplot(cereal, aes(x=calories, y=protein, color=name)) + geom_point()

## facet scatterplot
    facetas <- ggplot(cereal, aes(x=calories, y=fat, color=name))

    facetas + geom_point() + facet_grid(name~.)

## distribution graph

    ggplot(cereal, aes(x= fat, y = calories))+ geom_point()+ geom_point(aes(color= protein ))+ theme_grey ()
    
   
   ![image](https://user-images.githubusercontent.com/44456885/171971518-f4d8aef4-74a4-4a0d-8562-2fbbe69ccff8.png)
    
![image](https://user-images.githubusercontent.com/44456885/171971529-4629e0e2-f77e-4462-8b70-97f46158933b.png)
![image](https://user-images.githubusercontent.com/44456885/171971546-32cf09c1-9769-436e-804e-c1a7b272ab3b.png)
