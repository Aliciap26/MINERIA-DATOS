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