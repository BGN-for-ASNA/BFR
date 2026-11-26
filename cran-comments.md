## Resubmission

This is a resubmission. The incoming pre-tests of the first upload of 0.0.2
found:

* LaTeX errors in the PDF manual (Unicode characters and broken equations
  in some help pages): fixed, the PDF manual now builds without errors.
* HTML math rendering problems in bf.dist.logistic.Rd and
  bf.dist.wishart.Rd: fixed.
* Tests CPU time 3.4 times elapsed time: the tests now cap OpenMP/BLAS
  threads at 2.

## Update

This is an update of BayesForge from 0.0.1 to 0.0.2 (see NEWS.md).

## Test environments

* Local: Ubuntu (WSL2), R 4.6.1, `R CMD check --as-cran`, with and without the
  BayesForge Python environment.
* GitHub Actions: ubuntu-latest (R release, devel, oldrel-1), macos-latest
  (R release), windows-latest (R release).

## R CMD check results

0 errors | 0 warnings | 0 notes

(Locally, the URL check could not reach https://www.gnu.org/licenses/gpl-3.0
from our network; the URL is valid.)

## Notes for CRAN

Examples and tests need the 'bayesforge' Python package, installed by the
user with `setup_env()`. They run only when it is available
(`@examplesIf bf_available()`, `skip_if_not()` in the tests), so the checks
do not install Python packages or write outside the temporary directory.

## Reverse dependencies

None.
