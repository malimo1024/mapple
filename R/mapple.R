#' Return value which matched a key in a column
#'
#' @param df data frame to be searched
#' @param col A character. A column from which you search the key.
#' @param key A character. A value which matches the condition of col.
#' @param val A character. A column name to be returned from data frame. 
#'
#' @return A vector.
#' @export
#'
#' @import dplyr
#' @import rlang
#' @examples
#' 
#' df <- tibble::rownames_to_column(mtcars,"kind")
#' mapple(df,"kind","Mazda RX4","hp")
mapple <- function(df, col, key, val){

    col <- rlang::ensym(col)
    val <- rlang::ensym(val)

    # [to be implemented] check if data frame has 1-to-1 correspondence

    df %>%
        dplyr::filter(!!col == key) %>%
        dplyr::pull(!!val)

    # [to be implemented] check if the length of returned vector is 1

}
