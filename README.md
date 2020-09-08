
<!-- README.md is generated from README.Rmd. Please edit that file. -->

rccthemes
=========

[![Travis build
status](https://travis-ci.org/oc1lojo/rccthemes.svg?branch=master)](https://travis-ci.org/oc1lojo/rccthemes)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/qgkdgjy8rc8e60x7/branch/master?svg=true)](https://ci.appveyor.com/project/oc1lojo/rccthemes/branch/master)

RCC themes, scales and geoms for
[ggplot2](https://ggplot2.tidyverse.org).

The longterm goal is to provide ggplot2 themes, scales and geoms that
adhere to the graphic rules at [Regional Cancer Centers
(RCC)](https://www.cancercentrum.se) in Sweden. Currently, RCC scales
are implemented.

Installation
------------

    if (!requireNamespace("remotes"))
      install.packages("remotes")

    remotes::install_bitbucket("cancercentrum/rccthemes")
    # remotes::install_bitbucket("cancercentrum/rccthemes", build_vignettes = TRUE) # also vignette

Usage
-----

    library(ggplot2)
    library(rccthemes)

    theme_set(theme_minimal()) # ggplot2::theme_minimal, not an RCC theme
    scale_colour_discrete <- scale_colour_rcc
    scale_fill_discrete <- scale_fill_rcc

    ggplot(mpg, aes(displ, hwy, colour = class)) +
      geom_point()

![](man/figures/README-example-1.png)<!-- -->
