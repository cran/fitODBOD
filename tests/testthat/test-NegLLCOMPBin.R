context ("Scenario of un wanted inputs")
test_that("NA values are avoided",{
          expect_that(NegLLCOMPBin(NA,4,0.1,.3),
          throws_error("NA or Infinite or NAN values in the Input"))
          })
test_that("Infinite values are avoided",{
          expect_that(NegLLCOMPBin(Inf,4,0.1,.3),
          throws_error("NA or Infinite or NAN values in the Input"))
          })
test_that("NAN values are avoided",{
          expect_that(NegLLCOMPBin(NaN,4,0.1,.3),
          throws_error("NA or Infinite or NAN values in the Input"))
          })

context("Binomial Random variable or frequency issues")
test_that("Negativity Binomial random variable",{
          expect_that(NegLLCOMPBin(-3,4,0.2,0.4),
          throws_error("Binomial random variable or frequency values cannot be negative"))
          })
test_that("Negativity frequency values",{
          expect_that(NegLLCOMPBin(-13,4,0.2,0.4),
          throws_error("Binomial random variable or frequency values cannot be negative"))
          })
context("Probability value issues")
test_that("Probability issues",{
          expect_that(NegLLCOMPBin(3,5,3,0.4),
          throws_error("Probability value doesnot satisfy conditions"))
          })
test_that("Probability issues",{
          expect_that(NegLLCOMPBin(3,5,-3,0.4),
          throws_error("Probability value doesnot satisfy conditions"))
          })

context("Checking outputs")
test_that("Output value expected",{
          expect_identical(round(NegLLCOMPBin(Chromosome_data$No.of.Asso,Chromosome_data$fre,0.7,1),4),
                          472.6649)
                          })

test_that("Checking class of output",{
          expect_that(NegLLCOMPBin(Chromosome_data$No.of.Asso,Chromosome_data$fre,0.7,1),
          is_a("numeric"))
          })
