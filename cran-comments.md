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
