install.packages("ggplot2")
install.packages("GGally")
library(ggplot2)
library(GGally)

library(MASS)
Boston
?Boston

# 2 (b),(c)
ggpairs(Boston)
pairs(Boston)

mean_value <- mean(Boston$crim, na.rm = TRUE)
print(mean_value)

median_value <- median(Boston$crim, na.rm = TRUE)
print(median_value)

max(Boston$crim)

count_values <- sum(Boston$crim > 20, na.rm = TRUE)
print(count_values)

# 2(d)
high_crime_suburbs <- subset(Boston, crim > 10)
print(high_crime_suburbs)
high_crime_percentage <- (nrow(high_crime_suburbs) / nrow(Boston)) * 100
cat("Suburbs with high crime rates: ",high_crime_percentage, "%\n")
# Output: Suburbs with high crime rates:  10.67194 %

high_tax_suburbs <- subset(Boston, tax > 400)
high_tax_percentage <- (nrow(high_tax_suburbs) / nrow(Boston)) * 100
cat("Suburbs with high tax rates: ", high_tax_percentage, "%\n")
# Output: Suburbs with high tax rates:  39.52569 %

high_ptratio_suburbs <- subset(Boston, ptratio > 20)
high_ptratio_percentage <- (nrow(high_ptratio_suburbs) / nrow(Boston)) * 100
cat("Suburbs with high pupil-teacher ratio: ",high_ptratio_percentage, "%\n")
# Output: Suburbs with high pupil-teacher ratio:  39.72332 %

range_crim <- range(Boston$crim)
range_tax <- range(Boston$tax)
range_ptratio <- range(Boston$ptratio)

cat("Range of per capita crime rate (crim):", range_crim, "\n")
# Output: Range of per capita crime rate (crim): 0.00632 88.9762 

cat("Range of tax rate (tax):", range_tax, "\n")
# Output: Range of tax rate (tax): 187 711 

cat("Range of pupil-teacher ratio (ptratio):", range_ptratio, "\n")
#Output: Range of pupil-teacher ratio (ptratio): 12.6 22 


# 2 (e)
charles_river_bound_suburbs <- nrow(subset(Boston, chas ==1))
cat("Number of suburbs bound by the Charles river are", charles_river_bound_suburbs, "\n")
# Output: Number of suburbs bound by the Charles river are 35

# 2 (f)
median_ptratio <- median(Boston$ptratio)
cat("Median pupil-teacher ratio - ", median_ptratio, "\n")
# Output: Median pupil-teacher ratio -  19.05

# 2 (g)
lowest_medv_suburb <- Boston[order(Boston$medv),]
lowest_medv_suburb[1,]
# Output: 
#       crim zn indus chas   nox    rm age    dis rad tax ptratio black lstat medv
#399 38.3518  0  18.1    0 0.693 5.453 100 1.4896  24 666    20.2 396.9 30.59    5
summary(lowest_medv_suburb[1,])
#crim             zn        indus           chas        nox              rm       
#Min.   :38.35   Min.   :0   Min.   :18.1   Min.   :0   Min.   :0.693   Min.   :5.453  
#1st Qu.:38.35   1st Qu.:0   1st Qu.:18.1   1st Qu.:0   1st Qu.:0.693   1st Qu.:5.453  
#Median :38.35   Median :0   Median :18.1   Median :0   Median :0.693   Median :5.453  
#Mean   :38.35   Mean   :0   Mean   :18.1   Mean   :0   Mean   :0.693   Mean   :5.453  
#3rd Qu.:38.35   3rd Qu.:0   3rd Qu.:18.1   3rd Qu.:0   3rd Qu.:0.693   3rd Qu.:5.453  
#Max.   :38.35   Max.   :0   Max.   :18.1   Max.   :0   Max.   :0.693   Max.   :5.453  
#age           dis            rad          tax         ptratio         black      
#Min.   :100   Min.   :1.49   Min.   :24   Min.   :666   Min.   :20.2   Min.   :396.9  
#1st Qu.:100   1st Qu.:1.49   1st Qu.:24   1st Qu.:666   1st Qu.:20.2   1st Qu.:396.9  
#Median :100   Median :1.49   Median :24   Median :666   Median :20.2   Median :396.9  
#Mean   :100   Mean   :1.49   Mean   :24   Mean   :666   Mean   :20.2   Mean   :396.9  
#3rd Qu.:100   3rd Qu.:1.49   3rd Qu.:24   3rd Qu.:666   3rd Qu.:20.2   3rd Qu.:396.9  
#Max.   :100   Max.   :1.49   Max.   :24   Max.   :666   Max.   :20.2   Max.   :396.9  
#lstat            medv  
#Min.   :30.59   Min.   :5  
#1st Qu.:30.59   1st Qu.:5  
#Median :30.59   Median :5  
#Mean   :30.59   Mean   :5  
#3rd Qu.:30.59   3rd Qu.:5  
#Max.   :30.59   Max.   :5  

more_than_seven_rooms <- nrow(subset(Boston, rm>7))

more_than_eight_rooms <- nrow(subset(Boston, rm>8))

cat("Suburbs with more than seven rooms per dwelling:", more_than_seven_rooms, "\n")
# Output: Suburbs with more than seven rooms per dwelling: 64 

cat("Suburbs with more than eight rooms per dwelling:", more_than_eight_rooms, "\n")
# Output: Suburbs with more than eight rooms per dwelling: 13 

# 2 (h)
summary(subset(Boston, rm>8))

