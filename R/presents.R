#' Presentation Theme
#'
#' I designed this theme for presentation. It features sharp constrast and larger fonts.
#' It excludes details, like gridlines, that might not display clearly in a low-res format.
#'
#' @param base_size base font size
#' @param base_family base font family
#' @param base_line_size base size for line elements
#' @param base_rect_size base size for rect elements
#'
#' @details
#' \describe{
#'
#' \item{`theme_carly_presents`}{
#' The signature ggplot2 theme with a grey background and white gridlines,
#' designed to put the data forward yet make comparisons easy.}
#' }
#'@examples
#' library(ggplot2)
#' n <- 100
#' x <- rnorm(n)
#' y <- rnorm(n, x)
#' p <- qplot(x, y)
#' p + theme_carly_presents()
#' @import ggplot2
#' @export
theme_carly_presents <- function (base_size = 16, base_family = "", base_line_size = base_size/22,
                         base_rect_size = base_size/22)
{
   theme_bw(base_size = base_size, base_family = base_family,
             base_line_size = base_line_size, base_rect_size = base_rect_size) %+replace%
    theme(title = element_text(color = "grey20"),
          plot.title = element_text(hjust = 0.5, size = base_size*1.2, margin = margin(b = 10), face = "bold"),
          plot.subtitle = element_text(hjust = 0.5, size = base_size*0.9, margin = margin(t = -5, b = 10), face = "bold"),
          axis.title = element_text(color = "grey20"),
          axis.text = element_text(color = "grey20"),
          axis.title.x = element_text(hjust = 0.95, face = "bold", margin = margin(t = 5)),
          axis.title.y = element_text(vjust = 0.95, face = "bold", margin = margin(r = 10)),
          axis.line = element_blank(),
          axis.ticks = element_line(color = "grey20", size = 0.5),
          panel.grid = element_blank(),
          strip.background = element_blank(),
          strip.text = element_text(size = base_size, margin = margin(b = 2)))
}

