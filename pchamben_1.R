# Importing students dataset
library(readr)
student_mat <- read_delim("student-mat.csv", 
                          delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(student_mat)


# Descriptive Statistics on students dataset
library(dplyr)
# Glimpse of dataset
glimpse(student_mat)

# Average student age
mean(student_mat$age)

# Median of study time of students
median(sort(student_mat$studytime))

# Mode on free time column
table(student_mat$freetime)

sort(table(student_mat$freetime),decreasing = TRUE)[1]

# Measure of Dispersion
# Range
range(student_mat$age, na.rm = TRUE)

# Interquartile Range(IQR)
#IQR on absence column
quantile(student_mat$absences, na.rm = TRUE)

# Variance on grade 1  coulmn
var(student_mat$G1, na.rm = TRUE)

# Standard Deviation
sd(student_mat$G1, na.rm = TRUE)

# Visualization
# Histogram plot
library(ggplot2)
ggplot(student_mat, aes(x=age))+geom_histogram(fill="light blue",bins = 8)+theme_classic()+ggtitle("Histogram of age of the students")

# bar plot
barplot(table(student_mat$guardian), xlab = 'Guardian type', ylab = 'Count', col = 'light blue')

# box plot
boxplot(student_mat$G1,  col = 'light green')
