test_that("Codon indexing is working", {
  expect_equal(codon_list('ATGGGTA',3), "GGG")
  expect_equal(codon_list('ATGG',1), "ATG")
  expect_equal(codon_list('ATGG',2), "TGG")
  expect_equal(codon_list('ATGGGTA',2), c("TGG","GTA"))
  expect_equal(codon_list('ATGGGTA',1), c("ATG","GGT"))
})

