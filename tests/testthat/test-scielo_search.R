test_that("searching scielo works", {
  skip_on_cran()
  a <- scielo_search_all(list(q = "dengue"))
  # facet
  b <- scielo_search_all(list(q = "*:*"), facet = TRUE)
  # pageing
  c <- scielo_search_all(list(q = "*:*", rows = 1200))

  # correct classes
  expect_is(a, "tbl_df")
  expect_is(b, "list")
  expect_is(b$mlt$docs, "tbl_df")
  expect_is(b$facet$facet_fields$type, "tbl_df")
  expect_is(c, "tbl_df")



  # correct dimensions
  expect_equal(nrow(a), 10)
  expect_equal(nrow(b$mlt$docs), 10)
  expect_equal(nrow(c), 1200)
})
