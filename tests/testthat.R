# Runs the testthat suite during R CMD check. Tests needing Python skip
# themselves when the 'BayesForge' Python package is not available.

# CRAN asks that checks use at most 2 cores: cap the thread pools of
# OpenMP/BLAS (also inherited by the Python processes started here).
Sys.setenv(OMP_THREAD_LIMIT = "2", OMP_NUM_THREADS = "2",
           OPENBLAS_NUM_THREADS = "2", MKL_NUM_THREADS = "2")

library(testthat)
library(BayesForge)

test_check("BayesForge")
