
# CLV (Customer Lifetime Value) operations
# M:Margin, r:Retention Rate, d: Discount Rate

M <- 100
r <- 0.9
d <- 0.1
CLV <- M*(r/(1+d-r))
CLV

# CLV with initial margin
CLV <- M*((1+d)/(1+d-r))
CLV

# CLV with finite setting up to 5 years
CLV_fin <- 0
for (i in 1:5) {
      CLV_year <- M*( r^i / ((1+d)^i))
      CLV_fin <- CLV_fin + CLV_year
      #print(CLV_year)
}
CLV_fin

# CLV with finite setting with initial margin up to 5 years
CLV_fin <- 0
for (i in 0:5) {
    CLV_year <- M*( r^i / ((1+d)^i) )
    CLV_fin <- CLV_fin + CLV_year
    #print(CLV_year)
}
CLV_fin 