# MINERIA-DATOS
 
# Unit # 3 

## Practica #1
[Link PDF](https://github.com/Aliciap26/MINERIA-DATOS/blob/Unit-3/Practices/_Pr%C3%A1ctica%201%20-%20Unidad%203.pdf)

[Link R](https://github.com/Aliciap26/MINERIA-DATOS/blob/Unit-3/Practices/practice%231)

 ~~~
 ##We will import the file to R
##Importing the dataset
        dataset <- read.csv('Salary_Data.csv')

##Splitting the dataset into the Training set and Test set
##Install.packages('caTools')

        library(caTools)
        set.seed(123)
        split <- sample.split(dataset$Salary, SplitRatio = 2/3)
        training_set <- subset(dataset, split == TRUE)
        test_set <- subset(dataset, split == FALSE)

##Fitting Simple Linear Regression to the Training set
            regressor = lm(formula = Salary ~ YearsExperience,
                       data = dataset)
            summary(regressor)

##Predicting the Test set results

        y_pred = predict(regressor, newdata = test_set)

##Visualising the Training set results

            library(ggplot2)
            ggplot() + geom_point(aes(x=training_set$YearsExperience, y=training_set$Salary) + color = 'red') + geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
                    color = 'blue') + ggtitle('Salary vs Experience (Training Set)') + xlab('Years of experience') + ylab('Salary')

##Visualising the Test set results

            ggplot() + geom_point(aes(x=test_set$YearsExperience, y=test_set$Salary), color = 'red') + geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
                    color = 'blue') + ggtitle('Salary vs Experience (Test Set)') + xlab('Years of experience') + ylab('Salary')
 ~~~
 ## Practica #2
[Link PDF](https://github.com/Aliciap26/MINERIA-DATOS/blob/Unit-3/Practices/Pr%C3%A1ctica-2-U3.pdf)

[Link R](   )
                    
~~~

~~~



## Practica #3
[Link PDF](https://github.com/Aliciap26/MINERIA-DATOS/blob/Unit-3/Practices/Pr%C3%A1ctica-2-U3.pdf)

[Link R](   )

~~~
~~~


## Practica #4
[Link PDF](   )

[Link R](   )
~~~ 

~~~

## Practica evaluatoria
[Link DOC](https://github.com/Aliciap26/MINERIA-DATOS/blob/Unit-3/Practices/Unidad_3_Mineria_De_Datos.docx )

[Link R](   )
~~~ 

~~~



