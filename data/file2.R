x = 5

v1=("A")

m1 = matrix(1:25, nrow = 5, byrow=T)
m1
m1[,1]
m1[1,]
m1[2,5]
m1[2:4,3:4]
m1[,c(2,3)]
colSums(m1)
rowSums(m1)
rowMeans(m1)
colMeans(m1)
marks = rnorm(60, mean=60, sd=10)
marks
plot(density(marks))
matrix(marks,ncol=6)

(a1 = array(1:24, dim=c(4,3,2)))
apply(a1,1,sum)
apply(a1,2,mean)
apply(a1,2,sum)
(a1 = array(1:24, dim=c(4,3,2), dimnames = list (c('S1','S2','S3','S4'), c('Sub1','Sub2','Sub3'),))
  
  
#data frame
  (rollno = c('MBA-01', 'MBA-02'))
  (name = c('Student1', 'Student2'))
  df = data.frame(rollno, name )
  df
  
  (rollno = paste('MBA', 1:60,sep='-'))
  (name = paste('Student', 1:60,sep='-'))
  df= data.frame(rollno,name)
  df
  
  (gender = sample(c('M','F'),size=60, replace=T))
  
  set.seed(1234)
  (gender = sample(c('M','F'),size=60, replace=T, prob=c(.4, .6)))
  table(gender)
  prop.table(table(gender))
  
  marks = rnorm(60, mean=60, sd=15)
  x =c(23.323445, 34.7344)
  floor(x); ceiling(x); trunc(x); round(x,3)
  floor(marks)
  
  
  grades = factor(grades, levels =c('E','A','B'), ordered=T)
  
  (grades = sample(c('Poor','Good','Excellent'), size = 60, replace = T, prob = c(.2,.3,.5)))
  table(grades)
grades = factor(grades, levels =c('Poor','Good','Excellent'), ordered=T)
  grades
  summary(grades)
  
df=data.frame(rollno, name, gender,grades,marks, stringsAsFactors = F)  
df  
head(df,n=5)
tail(df)

marks = rnorm(60, mean=60, sd=15)
marks
plot(density(marks))



str(df)
summary(df)
df$gender = factor(df$gender)
str(df)
summary(df)
dim(df)
class(df)

aggregate(df$marks, by=list(df$gender), FUN=sum)
aggregate(df$marks, by=list(df$gender), FUN=mean)
aggregate(marks ~ gender, data=df, FUN=mean)
aggregate(marks ~ gender + grades, data=df, FUN=mean)

df$marks2 = runif(60,50,100)
head(df)
aggregate(cbind(marks, marks2) ~ gender, data=df, FUN=mean)

df[df$gender=='M',]
df[df$gender=='M',c(1,2,4)]
df[df$gender=='M',c('rollno','gender')]
