#' A Welcome Function
#'
#' This function welcomes you to CUSD.
#' @param district This is the default parameter. Defaults to TRUE.
#' @keywords TEST_TEST
#' @export
#' @examples
#' welcome()

welcome <- function(district = TRUE)
{
  if (district == TRUE)
  {
    print("Welcome to Cabrillo Unified School District")
  }
  else
  {
    print("You are doing something wrong")
  }
}

#' A test Function
#'
#' This function will determine if I am using github correctly
#' @param a This is the default parameter. Defaults to TRUE.
#' @keywords TEST_TEST
#' @export
#' @examples
#' test()
#' 

test <- function(a = TRUE)
{
  if (a == TRUE)
  {
    print("You know how to update the git repository")
  }
  else
  {
    print("Something is wrong")
  }
}