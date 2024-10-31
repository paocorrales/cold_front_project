#' Calculate p value from lm output
#'
#' @param estimate 
#' @param std.error 
#' @param df 
#' @param adjustment 
#'
#' @returns a vector of the same lengh as `estimate`
#' @export
#'
#' @examples
Pvaluate <- function(estimate, std.error, df, adjustment = "none") {
  stats::p.adjust(2*stats::pt(abs(estimate)/std.error, df, lower.tail = FALSE), method = adjustment)
}