# These two functions are to help us make crescents. Don't worry it you do not understand all this code.
# The important bit is the object "cres", which consists of two columns (x and y coordinates of two crescents).
is.insideCircle <- function(co, r=0.5, offs=c(0,0)){
  sqrt((co[,1]+offs[1])^2 + (co[,2]+offs[2])^2) <= r
}
make.crescent <- function(n){
  raw <- cbind(x=runif(n)-0.5, y=runif(n)-0.5)
  raw[is.insideCircle(raw) & !is.insideCircle(raw, offs=c(0, -0.2)),]
}
# make x/y data in shape of two crescents
set.seed(123)
cres1 <- make.crescent(1000) # 1st crescent
cres2 <- make.crescent(1000) # 2nd crescent
cres2[,2] <- -cres2[,2] -0.1 # flip 2nd crescent upside-down and shift down
cres2[,1] <- cres2[,1] + 0.5 # shift second crescent to the right

cres <- rbind(cres1, cres2) # concatente x/y values
saveRDS(cres, here::here("episodes/data/cres.rds"))
