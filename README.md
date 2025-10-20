# i2dhs

Each 'week' should be using `renv::init()`

The question is - does this actually work from the pov of `R` - i.e. can I add multi folders with separate `renv` settings - or does it really need to be separated?

Does work, but if working from the 'full root' (i.e. where the readme etc is - `setwd()` to the correct week to get `renv` to work).

## `renv`

To use (from root) - nb. if looking at this from the _full root_ (i.e. `i2dhs` folder) - you will want to `setwd` - if you just open one of the folders in Positron - you can just run it from there without the need to `setwd`

1. Activate `renv` -- `renv::activate()`
2. Restore `renv::restore()`
3. Restart R Terminal (`CTRL+SHIFT+F10`)
4. Now start using things.

### New Project?

`rev::init()`

Can now use `renv::install("tidyverse")` (e.g.) to install from multi sources not just CRAN

NB: Lock file is ONLY updated when a package is used, and probably need to call `renv::snapshot()` to get it to work.

## Shortcuts

`CTRL` + `SHIFT` + `F10` = Restart R Session
`CTRL` + `L`  = Clear console
