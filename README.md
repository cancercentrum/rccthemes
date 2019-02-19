
<!-- README.md is generated from README.Rmd. Please edit that file. -->

# rccthemes

[![Travis build
status](https://travis-ci.org/oc1lojo/rccthemes.svg?branch=master)](https://travis-ci.org/oc1lojo/rccthemes)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/oc1lojo/rccthemes?branch=master&svg=true)](https://ci.appveyor.com/project/oc1lojo/rccthemes)

RCC themes, scales and geoms for
[ggplot2](https://ggplot2.tidyverse.org).

The longterm goal is to provide ggplot2 themes, scales and geoms that
adhere to the graphic rules at Regional Cancer Centers (RCC) in Sweden.
Currently, RCC scales are implemented.

<mark> Man kan tänka sig att denna funktionalitet ligger i ett eget
paket, såsom detta, eller kanske som en del av något av befintliga
R-paketen på RCC, <https://bitbucket.org/cancercentrum/> </mark>

<mark> John Lövrot, 2019-02-18:  
På RCC använder jag främst ggplot när jag vill göra initiala
utforskningar av dataset eller snabba sammanställningar. För final
publikation/produktion på t.ex. INCA används ofta mer skräddarsydda
funktioner. </mark>

<mark> Namnet är inspirerat av
[ggthemes](https://cran.r-project.org/package=ggthemes) </mark>

## Installation

``` r
# install.packages("devtools")
devtools::install_bitbucket("oc1lojo/rccthemes", build_op = NULL)
```

## Usage

``` r
library(ggplot2)
library(rccthemes)

theme_set(theme_minimal()) # ggplot2::theme_minimal, not an RCC theme
scale_colour_discrete <- scale_colour_rcc
scale_fill_discrete <- scale_fill_rcc

ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point()
```

![](man/figures/README-example-1.png)<!-- -->
