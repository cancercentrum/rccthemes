# Adopted from https://github.com/r-lib/scales/blob/v1.0.0/R/pal-brewer.r

#' RCC palette (discrete).
#'
#' @param direction Sets the order of colours in the scale. If 1, the default,
#'   colours are as the in RCC graphic profile. If -1, the order of
#'   colours is reversed.
# @references <https://bitbucket.org/cancercentrum/rccshiny/src/1.7.1/R/rcc2PlotLine.R#lines-120>
#' @export
#' @examples
#' library(scales)
#' library(rccthemes)
#' show_col(rcc_pal()(12))
rcc_pal <- function(direction = 1) {
  force(direction)
  function(n) {
    # # Färgskala i rccShiny-paketet
    # # jfr https://bitbucket.org/cancercentrum/rccshiny/src/1.7.1/R/rcc2PlotLine.R#lines-120
    # rcc_colours <- c(
    #   "#00b3f6", "#ffb117", "#005092", "#19975d", "#e56284",
    #   "#66cccc", "#db5524", "#7f3705", "#7c458a", "#95bf5d"
    # )

    # rcc_colours <- c(
    #   # Utifrån  i grafisk manual för INCA-plattformen
    #   # Huvud- och komplementgärger (avsnitt färger):
    #   # Färg 1 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#005092",
    #   # Färg 2 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#19975d",
    #   # Färg 3 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#00b3f6",
    #   # Färg 4 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#b70904",
    #   # Färg 5 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#ffb117",
    #   # Färg 6 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#a29b96",
    #   # Extra komplementfärger till grafer och diagram (avsnitt färger):
    #   # Färg 7 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#66cccc",
    #   # Färg 8 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#db5524",
    #   # Färg 9 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#7f3705",
    #   # Färg 10 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#7c458a",
    #   # Färg 11 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#95bf5d",
    #   # Färg 12 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
    #   "#e56284"
    # )

    rcc_colours <- c(
      # Utifrån  i grafisk manual för INCA-plattformen -- lite modifierad
      # Huvud- och komplementgärger (avsnitt färger):
      # Färg 3 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      # Huvudfärg i RCC:s grafiska manual
      "#00b3f6",
      # Färg 5 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      # Huvudfärg i RCC:s grafiska manual
      "#ffb117",
      # Färg 1 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      # Komplementfärg i RCC:s grafiska manual
      "#005092",
      # Färg 2 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      # Komplementfärg i RCC:s grafiska manual
      "#19975d",
      # Färg 4 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      "#b70904",
      # Färg 6 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      # Komplementfärg i RCC:s grafiska manual
      "#a29b96",
      # Extra komplementfärger till grafer och diagram (avsnitt färger):
      # Färg 7 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      "#66cccc",
      # Färg 8 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      "#db5524",
      # Färg 9 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      "#7f3705",
      # Färg 10 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      "#7c458a",
      # Färg 11 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      "#95bf5d",
      # Färg 12 i grafisk manual för INCA-plattformen, avsnitt grafer och diagram
      # Komplementfärg i RCC:s grafiska manual
      "#e56284"
    )

    pal <- rcc_colours[seq_len(n)]
    if (direction == -1) {
      pal <- rev(pal)
    }
    pal
  }
}
