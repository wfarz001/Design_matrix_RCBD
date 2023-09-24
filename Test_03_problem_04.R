library('pracma')
data.a <- c(1,1,0,0,1,0,0,1,1,0,0,0,1,0,1,1,0,0,-1,-1,-1,
            1,0,1,0,0,1,0,1,0,1,0,0,0,1,1,0,1,0,-1,-1,-1,
            1,0,0,1,1,0,0,1,0,0,1,0,1,0,1,0,0,1,0,0,1,
            1,-1,-1,-1,1,0,0,1,-1,-1,-1,0,0,1,1,-1,-1,-1,-1,-1,-1)


matrix.x <- matrix(data.a, nrow = 12, ncol = 7, byrow = TRUE)

matrix.x

transpose_x=t(matrix.x)

transpose_x

B=inv(transpose_x%*%matrix.x) #need to write this like that
B

#Do not write like the following manner#################
#let's muliply matrix.x and transpose_x and denote it as 'a'

#a=(matrix.x%*%transpose_x) # it is a 12 by 12 matrix
#a

#det(a)
#(AI  <- solve(a))
y<-matrix(c(9.3,9.4,10,9.3,9.8,9.9,9.2,9.4,9.5,9.7,10,10.2), nrow = 12, ncol = 1, byrow = TRUE)

result=B%*%transpose_x%*%y
result

##############################################################################################

#Another method of Solution#################################################
##################################################

data1 <- c(1,1,0,0,0,1,0,0,0,
           1,1,0,0,0,0,1,0,0,
           1,1,0,0,0,0,0,0,1,
           1,0,1,0,0,0,1,0,0,
           1,0,1,0,0,0,0,1,0,
           1,0,1,0,0,0,0,0,1,
           1,0,0,1,0,1,0,0,0,
           1,0,0,1,0,0,1,0,0,
           1,0,0,1,0,0,0,1,0,
           1,0,0,0,1,1,0,0,0,
           1,0,0,0,1,0,0,1,0,
           1,0,0,0,1,0,0,0,1,
           0,1,1,1,1,0,0,0,0,
           0,0,0,0,0,1,1,1,1)


x <- matrix(data1, nrow = 14, ncol = 9, byrow = TRUE)     
x
tx=t(x) 
y<-matrix(c(9.3,9.4,10,9.3,9.8,9.9,9.2,9.4,9.5,9.7,10,10.2,0,0), nrow = 14, ncol = 1, byrow = TRUE)
B=solve(tx%*%x)%*%tx%*%y
B=solve(tx%*%x)
B

B=inv(tx%*%x)
B

result=B%*%tx%*%y
result

