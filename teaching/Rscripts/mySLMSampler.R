sampleAndRegress <- 
  function(
    sigma = 8,
    sampleSize = 18,
    beta0 =  -17,
    beta1 = 2.5
  ) {
    
    myLabData <- tibble(
      x = rnorm(sampleSize, 30, 6),
      y = beta1 * x + beta0 + rnorm(sampleSize, 0, sigma)
    )
    
    lmResult <- lm(y ~ x, data = myLabData)
    meanx = mean(myLabData$x)
    meany = mean(myLabData$y)
    ssx = sum((myLabData$x - meanx)^2)
    ssy = sum((myLabData$y - meany)^2)
    ssr = sum(resid(lmResult)^2)
    sigmaEst = sqrt(ssr / (sampleSize - 2))
    
    data.frame(
      b0 = value(lmResult$coefficients[1]),
      b1 = value(lmResult$coefficients[2]),
      SSModel = sum( (fitted(lmResult) - meany)^2 ),
      SSResiduals = ssr,
      SSTotal = sum( (myLabData$y- meany)^2 ),
      sigmaHat = sqrt(ssr / (sampleSize - 2)),
      SE.b0 = sigmaEst * sqrt(1/sampleSize + meanx^2/ssx),
      SE.b1 = sqrt(sigmaEst^2 / ssx)
    )
  }

