##########################Numerical and Graphical Summaries####
##########################Week 1     #
#                         STAT 614   #
#                         R Script   #
  
##############################################################
#Descriptive Statistics
#Load the data into an object name called Strength
Strength <- c(5.9,7.2,7.3,6.3,8.1,6.8,7,7.6,6.8,6.5,7,6.3,7.9,9,
              8.2,8.7,7.8,9.7,7.4,7.7,9.7,7.8,7.7,11.6,11.3,11.8,10.7)

# min, 1Q, Median, Mean, 3Q, Max
summary(Strength)
#output looks like
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#5.900   7.000   7.700   8.141   8.850  11.800 

#Standard Deviation
sd(Strength)
#output:
#[1] 1.659532

#Variance
var(Strength)
#output:
#[1] 2.754046

IQR(Strength)
#output:
#[1] 1.85


#Bar Chart
# Load the data in an object called Age1
Age1<-c(33,32,32,28,29,29,29,33,31,32)
#summarize age into a table containig ages and counts
Age1.table<-table(Age1)
barplot(Age1.table)
# plot is created in the Plots window

#Pie Chart with labels and relative sized slices
#use data from a table such as the one created above
pie(Age1.table)
# plot is created in the Plots window

#install package if not installed
#install.packages("epiDisplay")
library(epiDisplay)

tab1(Age1)


#Histogram
#For CSV:
#Use File->Import Dataset -> From text (readr)
#Read in file Lec1_exp121_sodiumcereal.csv
# main is the main title "Sodium"
# xlab is the x label title
# R refers to a variable in the dataset with datasetname$variablename
hist(Lec1_exp121_sodiumcereal$Sodium, main="Histogram of Sodium", xlab="Sodium")

# if setting the number of bins use breaks=n option in hist()

#Boxplot
#Sodium data
# horizontal = FALSE means vertical orientation, TRUE is horizontal
boxplot(Lec1_exp121_sodiumcereal$Sodium,horizontal=TRUE,main="Boxplot of Sodium")
summary(Lec1_exp121_sodiumcereal$Sodium)

#Side-by-Side Boxplots
#Creates boxplots for each Cereal manufacturer on the same scale
# the 'by' variable is after the tilde ~
boxplot(Lec1_exp121_sodiumcereal$Sodium ~ Lec1_exp121_sodiumcereal$Cereal,
        main="Boxplot of Sodium in Cereal",
        xlab="Manufacturer",
        ylab="Sodium Content")

#Normal Probability Plot
#Compares the Sodium data to a normal distribution and adds
#A blue line for a strict correspondence with a normal distribution
qqnorm(Lec1_exp121_sodiumcereal$Sodium)
qqline(Lec1_exp121_sodiumcereal$Sodium, col="blue")

#Scatterplot
#For CSV:
#Use File->Import Dataset -> From text (readr)
# Import CSV file Lec1_exp1201_widthbyOSA.csv
# Plot x-axis is Width, y-axis is OSA with labels on chart
# Set x and y axis to start at 0 and end around the maximum value


plot(Lec1_exp1201_widthbyOSA$Width,Lec1_exp1201_widthbyOSA$OSA,
     main="Eye Width by Ocular Surface Area (OSA)",
     xlab="Eye Width",
     ylab="OSA",
     xlim=c(0,1.6),
     ylim=c(0,5))

#time series plot
#Read in data
month1 <- c(1,2,3,4,5,6,7,8,9,10,11,12)
HbA1c <- c(5.2,5.8,5.9,5.9,5.5,5.6,5.3,5.2,5.3,5.4,5.5,5.6)

plot(month1, HbA1c, type="o", xlab="Month", ylab="HbA1c",
     main="Monthly Glycated Hemoglobin for Group A")
