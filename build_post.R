build_post <- function(post) {
  stopifnot(file.exists("_config.yml"))   # make sure you're in the site root
  knitr::opts_knit$set(base.dir = getwd(), base.url = "/")
  knitr::opts_chunk$set(fig.path = paste0("assets/img/", post, "/"))
  knitr::knit(
    input  = paste0("_rmd/", post, ".Rmd"),
    output = paste0("_posts/", post, ".md"),
    envir  = new.env()                     # clean environment each time
  )
}