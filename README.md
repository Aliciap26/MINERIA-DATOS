![Logo](https://user-images.githubusercontent.com/44456885/171971249-f141529d-aea1-4a8c-a94c-ad55db31c968.PNG)

# MINERIA-DATOS

### Howard Herrera Erwin - 18210716
### Perez Lopez Alicia Guadalupe - 18210514

## Unit 4

- [Evaluation](/Evaluation/Evaluacion-unit4.r)  

## Code.
~~~
#ALicia Pérez 
# Erwind Howard
#Evaluation unit 4

# K-Means Clustering
# Set our workspace
getwd()
setwd("")
getwd()

# Importing the dataset
iris = read.csv('iris.csv')
iris.species<- iris[,"species"]
iris = iris[1:4]

# Using the elbow method to find the optimal number of clusters
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(iris, i)$withinss)plot(1:10,wcss, type = 'b', main = paste('The Elbow Method'), xlab = 'Number of clusters', ylab = 'WCSS')


# Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = iris, centers = 3)
y_kmeans = kmeans$cluster
y_kmeans

# K-means cluster table
table(iris.species,kmeans$cluster,dnn=c("Species","Cluster"))

# Visualize the clusters
# Results
# Cluster 3 - Purple - setosa
# Cluster 2 - Red - virginica
# Cluster 1 - Blue - versicolor
library(cluster)
clusplot(iris, y_kmeans, lines = 0, shade = TRUE, color = TRUE, labels = 4, plotchar = TRUE, span = TRUE, main = paste('Clusters of iris'),)


~~~

## Results
![image](https://user-images.githubusercontent.com/44456885/171971082-e9d4237e-abc7-4344-a607-bfe0386c22d3.png)

![image](https://user-images.githubusercontent.com/44456885/171971114-3d869db2-fd05-44be-9de1-915626fec7ed.png)

## Conclusions

- Alicia Pérez: 
Note that the data in the distribution table of the groups does not coincide exactly with the graph, it was interesting to see how the k-means works.

- Erwin Howard: 
We can see that the data are grouped, separated according to the similarity between dimensions, and we see that between group 1 and group 2 they have similarities and group 3 is completely isolated, that is, 'Iris setosa', and on the other hand we are 'Iris' virginica and 'vergicolor', because their sizes are similar and that is why they share the same characteristics that are shown in the diagram.

[Link video Youtube](https://youtu.be/gTbCQZfE2J4)

