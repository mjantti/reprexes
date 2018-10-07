Site 'reprexes' is for reproducible examples demonstrating issues for reports on
github or elsewhere.


# Creating a minimal package

In some cases a minimal example needs to be a package. 
A convenient way to create this is with `usethis::create_package()`, see [minimal
package](https://github.com/r-lib/pkgdown/blob/master/.github/CONTRIBUTING.md).
It is useful to set up additional details (e.g. author, email) as described in 
`?usethis::use_description`.

For example, the package demonstrating 'pkgdown' issue#786 could have been
created initially with something like:
```
issue <- 786; 
usethis::create_package(
  paste0("pkgdownIssue", issue), 
  fields = list(Title = paste0("Demonstrates issue ", issue), 
  Description = paste0("Demonstrates issue ", issue, "."))
  )
```
Then the necessary additional files are copied from the original source and
cleaned up from anything not related to the issue, while keeping the package
valid. In this example, I copied an Rd file from package 'lagged' and cleaned it
up.


