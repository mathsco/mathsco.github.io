isInside = function(param, ciBounds) {
  ciBounds[1] <= param & param <= ciBounds[2]
}
enn <- 7
tStar <- qt(0.975, df = enn - 1)
runResults <- do(10000) * {
  sampledVals <- rnorm(enn, 70, 3);
  xbar <- mean(~ sampledVals);
  ess <- sd(~ sampledVals);
  myCI <- xbar + c(-1,1) * tStar * ess / sqrt(enn);
  isInside(70, myCI)
}
prop(runResults == TRUE)    # the effective coverage rate of the simulation

