Mtcars Visualizer App
========================================================
author: Dmitry B.
date: 08 April 2019
autosize: true

Introduction
========================================================

The goal of the app is to 

- Enable visual analysis of mtcars R dataset
- Provide simple GUI for aesthetics management

The app is easy to use. Just 

1. Set input parameters
2. See autogenerated plot

Input paramenter
========================================================

The app enables user to select the following aesthetics:

1. X axis
2. Y axis
3. Color
4. Shape
5. Size

Visualization example
========================================================

The App can shows plots of the following type



```r
qplot(wt, mpg, color=cyl, shape=am, size=hp, data=mtcars)
```

![plot of chunk sample_plot](shinyapp-presentation-figure/sample_plot-1.png)

Thank you
========================================================

Thanks for your attention.

See the app in action at [Shinyapps here](https://elborh.shinyapps.io/mtcars-visualizer/)
