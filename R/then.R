# Deprecated because the pipe is often pronounced 'then', additionally I think
# it's a good idea to just have one function instead of two that do the same
# thing

# #' Match an expression
# #'
# #' @description This expression uses a \emph{non capturing group} to identify a
# #' specific pattern when you do not need the group to capture its match. Alias
# #' for then. Meant for semantics when used at the beginning of a verbal
# #' expression. For example, \code{rx_find(value = 'foo')} is more readable than
# #' \code{then(value = 'foo')}.
# #'
# #' @param .data Expression to append, typically pulled from the pipe \code{ \%>\% }
# #' @param value Expression to match
# #'
# #' @examples
# #' then(value = "apple")
# #'
# #' # create expression
# #' x <- start_of_line() %>%
# #'   then("apple") %>%
# #'   end_of_line()
# #'
# #' grepl(x, "apples") # should be false
# #' grepl(x, "apple")  # should be true
# #'
# #' @references
# #' Non capturing group: \url{https://www.regular-expressions.info/brackets.html}
# #'
# #' Stack Overflow: \url{https://stackoverflow.com/questions/3512471}
# # #' @export
# then <- function(.data = NULL, value) {
#   paste0(.data, "(?:", sanitize(value), ")")
# }
