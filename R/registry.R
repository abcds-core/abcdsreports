#' Create a registry summary table
#'
#' This function generates a summarized enrollment table from the ATRI registry,
#' counting participants by year and event, and appending a total row at
#' the bottom. The resulting table is formatted as a `flextable` with
#' a custom ATRI theme.
#'
#' @return A `flextable` object summarizing enrollment by year and event.
#'
#' @importFrom dplyr mutate if_else count summarise across where bind_rows
#' @importFrom tidyr pivot_wider
#' @importFrom flextable flextable
#' @export

create_registry_table <- function() {
  registry <- atriR::get_registry("examdate", apply_labels = TRUE)
  registry$event_label <- gsub(" - Month [0-9]{1,2}", "", registry$event_label)

  enrollment_tbl <- registry |>
    dplyr::mutate(
      Year = dplyr::if_else(
        !is.na(.data$examdate),
        format(as.Date(.data$examdate), "%Y"),
        "Unknown Date"
      )
    ) |>
    dplyr::count(.data$Year, .data$event_label) |>
    tidyr::pivot_wider(
      names_from = .data$event_label,
      values_from = .data$n,
      values_fill = 0
    )

  enrollment_tbl |>
    dplyr::bind_rows(
      enrollment_tbl |>
        dplyr::summarise(dplyr::across(dplyr::where(is.numeric), ~ sum(.x))) |>
        dplyr::mutate(Year = "Totals", .before = 1)
    ) |>
    flextable::flextable() |>
    ft_add_abcds_theme()
}
