#' @title ATRI API Tools
#' @description
#' The **ATRI API Tools** package provides a suite of helper
#' functions for interacting with the ATRI EDC data lake API
#' and managing study data. It supports authentication, file
#' retrieval, importing, summarization, and standardized
#' formatting of tables and reports.
#'
#'
#' @section Data Management Functions:
#' Tools for cleaning, transforming, and preparing ATRI data sets for analysis.
#'
#' - \code{\link{split_factor_labels}} — Expand delimited factor variables (e.g., "1|2|3") into binary indicator columns.
#' - \code{\link{to_snake_case}} — Convert character strings to snake_case.
#' - \code{\link{collapse_and}} — Collapse a character vector with commas and “and” (Oxford comma style).
#'
#' @section Utility Operators:
#' JavaScript-inspired conditional operators to simplify inline logic.
#'
#' - \code{\link{\%?\%}} — Define a conditional test expression.
#' - \code{\link{\%:\%}} — Provide the else-value in a JavaScript-style conditional.
#'
#' @section Author:
#' Brian Helsel (\email{bhelsel@@kumc.edu})
#'
#' @section See Also:
#' - \link[dplyr:join]{dplyr joins}
#' - \link[httr2:request]{httr2 request workflow}
#'
#' @importFrom rlang .data
#' @importFrom bhelselR sendmail
#' @import atriR
#'
#' @docType package
#' @name abcdsreports
#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end

## mockable bindings: start
## mockable bindings: end

NULL
