Mtcars Visualizer App
========================================================
author: Dmitry B.
date: 08 April 2019
autosize: true
transition: zoom 
transition-speed: slow

Introduction
========================================================
type: section
The **goal** of this application is:

- Enable visual analysis of mtcars R dataset
- Provide simple GUI for aesthetics management

This app is **easy** to use. Just 

1. Set input parameters
2. See the generated plot

Input paramenter
========================================================
type: sub-section
The app enables user to select the following aesthetics:

1. X axis
2. Y axis
3. Color
4. Shape
5. Size

App also **calculates** the trend line at **server side**.

Visualization example
========================================================
type: prompt
The app can shows plots similar to this one



```r
qplot(wt, mpg, color=cyl, shape=am, size=hp, data=mtcars)
```

![plot of chunk sample_plot](shinyapp-presentation-figure/sample_plot-1.png)

Thank you !
========================================================
type:sub-section

![Bye](hand.jpg)

***

Thanks for your attention.

See the app in action  
at [Shinyapps site here](https://elborh.shinyapps.io/mtcars-visualizer/)




