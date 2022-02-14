context("mapple core function")

library(dplyr)
library(rlang)
df <- tibble::rownames_to_column(mtcars,"kind")

test_that("mapple works in mtcars data",{
    expect_equal(mapple(df,"kind","Mazda RX4","hp"),110)
})
