test_that("converting DNA to RNA", {
  expect_equal(dna_to_rna('ATGC'), 'AUGC')
})
