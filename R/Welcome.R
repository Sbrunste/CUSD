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