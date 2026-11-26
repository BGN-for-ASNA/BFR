# BayesForge 0.0.2

## New features

* `loo::loo(m)` returns an R `loo` object for a fitted model, usable with
  `loo::loo_compare()`.
* `bf_draws(m, format = "long")` returns tidy draws (one row per draw and
  parameter element, with optional factor labels); `format = "draws_df"`
  returns a `posterior` draws data frame.
* `as.array(m)` returns draws as iterations x chains x parameters, for
  `bayesplot`.
* `bf_model()` names R model parameters automatically.
* R math functions (`exp()`, `log()`, ...) work on JAX arrays in model code.
* Discrete latent variables: `enum = TRUE` and `infer =` on discrete
  distributions; `m$fit(sampler = ...)`.
* Observed sites are named after the observed variable (`obs = y` gives `"y"`).
* `m$run_simulations()` runs simulation studies in parallel from R.
* `bf_sample()` and display of plotly figures in R.
* `bf_available()` tells whether the BayesForge Python environment is ready,
  without installing anything.

## Python environment

* `setup_env()` creates (or upgrades) the 'BFR' virtual environment with the
  `bayesforge` Python package; `importBF()` offers to create it in interactive
  sessions. A Python chosen by the user (`RETICULATE_PYTHON`) that has
  BayesForge is used as is.
* Requires `bayesforge` >= 0.0.59, Python >= 3.12 and reticulate >= 1.45.0
  (first version that converts pandas 3 data frames). An environment made by
  BayesForge 0.0.1 (older `bayesforge`, or Python < 3.12) is detected by
  `importBF()`, which offers to update it; `setup_env()` upgrades it, and
  rebuilds it when its Python is older than 3.12.

## Bug fixes

* `importBF()` failed with "module 'BayesForge' has no attribute 'bf'" when
  the working directory contained a folder named `BayesForge`.
* Moved or dead URLs in the README and help pages.

## Documentation and checks

* The help of the distribution wrappers is generated from the Python
  docstrings.
* Examples and tests that need Python run only when it is available
  (`@examplesIf bf_available()`).
