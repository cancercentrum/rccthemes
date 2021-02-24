# Adopted from https://github.com/r-lib/scales/blob/v1.0.0/R/pal-brewer.r

#' RCC palette (discrete).
#'
#' @param direction Sets the order of colours in the scale. If 1, the default,
#'   colours are as the in RCC graphic profile. If -1, the order of
#'   colours is reversed.
#' @references <https://bitbucket.org/cancercentrum/rccshiny/src/1.7.1/R/rcc2PlotLine.R#lines-120>
#' @export
#' @examples
#' library(scales)
#' library(rccthemes)
#' show_col(rcc_pal()(10))
rcc_pal <- function(direction = 1) {
  force(direction)
  function(n) {
    rcc_colours <- c(
      "#00b3f6", "#ffb117", "#005092", "#19975d", "#e56284",
      "#66cccc", "#db5524", "#7f3705", "#7c458a", "#95bf5d"
    )
    pal <- rcc_colours[seq_len(n)]
    if (direction == -1) {
      pal <- rev(pal)
    }
    pal
  }
}
