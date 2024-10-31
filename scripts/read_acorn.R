#' Read ACORN-SAT data
#'
#' @param file_path where the data file is stored 
#'
#' @returns a data.table with date, tmax and site_number variables
#' @export
#'
#' @examples
read_acorn <- function(file_path) {
  
  fread(file_path) |> 
    janitor::clean_names() |> 
    setnames("maximum_temperature_deg_c", "tmax") |> 
    _[, let(site_number = site_number[1],
            site_name = site_name[1])] |>
    _[!is.na(date)] |> 
    _[, site_name := NULL]
  
}