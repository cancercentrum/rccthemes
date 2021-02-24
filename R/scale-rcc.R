# Adopted from https://github.com/tidyverse/ggplot2/blob/v3.0.0/R/scale-brewer.r

#' RCC colours for discrete data
#'
#' @description
#' Colour scale for categorical variables based on RCC graphic profile.
#'
#' @inheritParams rcc_pal
#' @inheritParams ggplot2::scale_colour_hue
#' @param ... Other arguments passed on to [ggplot2::discrete_scale()] to
#'   control name, limits, breaks, labels and so forth.
#' @family colour scales
#' @rdname scale_rcc
# @references <https://bitbucket.org/cancercentrum/rccshiny/src/1.7.1/R/rcc2PlotLine.R#lines-120>
#' @export
#' @examples
#' library(ggplot2)
#' library(rccthemes)
#' theme_set(theme_minimal())
#'
#' # Example of using the RCC scale for the esthetic colour
#' ggplot(mpg, aes(x = displ, y = hwy, colour = class)) +
#'   geom_point() +
#'   scale_colour_rcc()
#'
#' # Example of using the RCC scale for the esthetic fill
#' g <- ggplot(mpg, aes(x = class, fill = drv)) +
#'   geom_bar()
#'
#' g + scale_fill_rcc()
#' g + scale_fill_rcc(direction = -1)
scale_colour_rcc <- function(..., aesthetics = "colour", direction = 1, na.value = "grey50") {
  ggplot2::discrete_scale(aesthetics, "rcc", rcc_pal(direction), na.value = na.value, ...)
}

#' @rdname scale_rcc
#' @importFrom ggplot2 discrete_scale
#' @export
scale_fill_rcc <- function(..., aesthetics = "fill", direction = 1, na.value = "grey50") {
  ggplot2::discrete_scale(aesthetics, "rcc", rcc_pal(direction), na.value = na.value, ...)
}
