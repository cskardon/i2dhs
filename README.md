# i2dhs

Each 'week' should be using `renv::init()`

The question is - does this actually work from the pov of `R` - i.e. can I add multi folders with separate `renv` settings - or does it really need to be separated?

Does work, but if working from the 'full root' (i.e. where the readme etc is - `setwd()` to the correct week to get `renv` to work).

## `renv`

To use (from root)
1. Activate `renv`
2. Restart R Terminal
3. Now start using things.


Can now use `renv::install("tidyverse")` (e.g.) to install from multi sources not just CRAN

NB: Lock file is ONLY updated when a package is used, and probably need to call `renv::snapshot()` to get it to work.