print ("machine learning")
demo<- 65*980/98
demo1<- demo + 900*39100
print(demo)
print(demo1)
asap<- "use my pycharm"
print(asap)


years<-c(2008,2009,2010,2011,2012,2013,"YEAR")
type_years<-typeof(years)
class_type_years<-class(years)
is_numeric<-isClass(years,numeric(TRUE))

numeric_years<-as.numeric(years)
is.numeric(numeric_years)  
factor_years<- factor(years)
ordinal_years<-sort(factor_years[-7])
number_levels<-length(ordinal_years)
first_three_days_march<- as.Date(c("March 01,2019","March 02,2019","March 03,2019"),format ="%B%d,%Y")
first_three_days_march
day<- format(first_three_days_march,format = "%d")

15/(10**2)
#precedence
10*3*5+3
10**2**3
2**6**3
1**2**3
#creating vectors by c(name)
tukr = c(22,44,TRUE,"manish")
typeof(tukr)
class(tukr)
#for mean
mrk<- c(22,44,36,78,90)
mrk/2
# adjusted_weight
mrk<- c(22,44,36,78,90)
adjusted_weight<-c(-0.1,0.2,-0.3,-0.9,0.2)
mrk+adjusted_weight
# and fun n length fun
srk<-c(12,3,45,66,78)
m<-c(srk,mrk)
m>40 & length(m)

ages<-c(16,27,37,NA,29,40)
mean(ages)
mean(ages,na.rm = TRUE)
sort(ages)
ages<-c(16,27,37,NA,29,40)
names(ages)<-c("k","b","d","f","c","p")
print(ages)
#removing and updating
ages=ages[-c(4)]
print(ages)

ages$b=NULL
ages
cunty<- c(100020,90889,127839,40000,309287)
names(cunty)<-c("france","aus","ind","tur","wi")
print(cunty)
print(cunty>100000)
print(which(cunty>100000))
library(stringr)
# paste n paste0 func.   ---- concatination in R
paste("i","luv","u")
paste0("i","luv","u")
paste("i","luv","u",sep = "")
paste0("label",1:17)
paste(c("ROCKET","FIRECRACKER"),rep(1:3,4))
paste((1:10),c("st","nd","rd",rep("th",7)))
paste(c("a","b"),1:6,sep= "_",collapse =" and ")
library(stringr)
str_c("x","yoy")
name="kapil"
time_of_day="morning"
str_c(" good ",time_of_day," ",name,".")
#lower and upper case
str_to_lower(c("Apple","Banana","Peaars"))
str_to_upper(c("Apple","Banana","Peaars"))
#conversions
num=c(12.33,"kl")
as.character(num)
is.character(num)
###diagonal matrix
matrix_1<- matrix(c(7,8,9,1,2,3,3,2,1),nrow = 3,ncol = 3)
print(matrix_1)
diag(matrix_1)
sum<-sum(matrix_1)
print(sum)
app1<-sum(matrix_1[1,])
print(app1)
app2<-(matrix_1[,1])
print(app2)
my_matrix<-matrix(data = 1:9,nrow = 3,ncol = 3)
print(my_matrix)
my_matrix[2,2:3]
my_matrix<-matrix(data = 1:9,nrow = 3,ncol = 3, byrow = TRUE)
print(my_matrix)
mat2<-array(data = 1:9,dim = c(3,3))
mat2
my_matrix*mat2
ma<-my_matrix%*%mat2
ma
det(ma)
diag(ma)


#####Loops in R###

matrix_1<- matrix(c(7,8,9,1,2,3,3,2,1),nrow = 3,ncol = 3)
for(row in 1:nrow(matrix_1)) {
  for(col in 1:ncol(matrix_1)) {
    print(paste('row',row,'col',col,'value',matrix_1[row,col]))
  }
}


#LIST
my_list<-list(1,2,3,4,5)
rep(my_list)

data<- list(movie_name<-c("lion","ran","css","rct","pin"),"interr"<-c(900,200,3889,3617,3839),"re"= data.frame(scores=c(22,32),source=c("inj","png"),tup=c("yes","no")))
print(data)
data[[1]][1]
data[[3]][2]
data[[3]][3][1]


#function


x=1:10
for(n in 1:10){
  print(x*n)
  
}

ep<- function(n)
{
  print(n^(1:length(n)))
  
}
ep(n =1:10)



ep<- function(n)
{
  print(n^(1:length(n))/1:length(n))
  
}
ep(n =1:10)


##DATA_FRAMES--
data<- list(movie_name<-c("lion","ran","css","rct","pin"),"interr"<-c(900,200,3889,3617,3839),data.frame(189,2827,837))
View(data)
data[[1]]
vinn<- data.frame(prizes<-c(99,10,38,28),row.names=c("toma","pat","oni","spin"))
View(vinn)
vinn[[1]]
vinn[[1]][2]
sort(prizes)


###loops in DF--


super_sleepers <- data.frame(rating=1:4,
                             anima=c("koala","sloth","hedlog","panda"),
                             countrrry=c('australia','italy','peruu','china'),
                             avg_sleep_hr=c(21,43,26,48))
print(super_sleepers)


for(row in 1:nrow(super_sleepers)) {
  for(col in 1:ncol(super_sleepers)) {
    print(paste('row',row,'col',col,'value',super_sleepers[row,col]))
  }
}



#hard exerc

boolean_vec<-c(TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE)
typeof(boolean_vec)
numeric_vec<-as.numeric(boolean_vec)
is.numeric(numeric_vec)

char_vec<-as.character(numeric_vec)
char_vec
paste(numeric_vec[5], collapse = "")


getwd()
data("diabetes")
#inspecting data
View(diabetes)
head(diabetes)
str(diabetes)

##filtering data



diab_tab<- table(diabetes$Pregnancies)
diab_tab

as.character(diabetes[order(diabetes$Pregnancies),'Age'[1]])


###plotting

plot(diab_tab)

mean(diabetes$Age)
var(diabetes$Age)
sd(diabetes$Age)

summary(diabetes)
diabetes[,2:4]
diabetes[diabetes$Age>25,c(1,3)]


#final plot prediction 
plot(diabetes$Age,diabetes$Pregnancies,
     
     col= "red" ,
     lwd= 2, 
     xlab = "age",
     ylab = "insulin level",
     
     main = "insulin level in different ages of people")  




pec<-sort(diabetes$Glucose[1:10])
con<-sort(diabetes$DiabetesPedigreeFunction[1:10])

plot(pec,con,
     type= "l",
     col= "blue" ,
     xlab= "glucose",
     ylab= "diabetes",
     main = "diabetes func on increament of glucose  for first ten")



