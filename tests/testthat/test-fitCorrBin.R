context("Scenario of un wanted inputs")
test_that("NA values are avoided",{
          expect_that(fitCorrBin(0:7,c(47,54,43,40,40,41,39,95),NA,0.003),
          throws_error("NA or Infinite or NAN values in the Input"))
          })
test_that("Infinite values are avoided",{
          expect_that(fitCorrBin(0:7,c(47,54,43,40,40,41,39,95),Inf,0.003),
          throws_error("NA or Infinite or NAN values in the Input"))
          })
test_that("NAN values are avoided",{
          expect_that(fitCorrBin(0:7,c(47,54,43,40,40,41,39,95),NaN,0.003),
          throws_error("NA or Infinite or NAN values in the Input"))
          })

context("Chi-squared issues")
test_that("Chi-squared approximation issues",{
          expect_that(fitCorrBin(0:7,c(47,54,43,40,40,41,39,95),0.1,0.003),
          shows_message("Chi-squared approximation is not suitable because expected frequency approximates to zero"))
          })
test_that("Chi-squared approximation issues",{
          expect_that(fitCorrBin(0:7,c(47,54,43,40,40,41,39,95),0.2,0.03),
          shows_message("Chi-squared approximation may be doubtful because expected frequency is less than 5"))
          })

context("Degree of Freedom")
test_that("Degree of freedom less than zero",{
          expect_that(fitCorrBin(c(0,1,2),c(11,12,12),0.91,0.03),
          throws_error("Degrees of freedom cannot be less than or equal to zero"))
          })
test_that("Degree of freedom equal to zero",{
          expect_that(fitCorrBin(c(0,1,2),c(11,12,12),0.1,0.03),
          throws_error("Degrees of freedom cannot be less than or equal to zero"))
          })
