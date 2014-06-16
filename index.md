---
title       : Statistical Modeling App
subtitle    : Using Shiny to develop data products
author      : Vlad Pascal
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Purpose
<br/>
<br><br/>
### To illustrate the nature of regression analysis by examining the linear relationship between variables. Specifically, the application estimates and shows how much effect an explanatory variable or a set of variables has on the dependent variable.



--- 

## Why Using the App?

<br><br/>

* A great illustration tool for someone who wants to understand important concepts but who may not a be statistician or a data analyst by training.

  * Can stimulate critical thinking and careful analysis to establish meaningful cause-and-effect relationships between variables
  * Can produce a valuable insight by uncovering relationships that were nor previously noticed or considered
  * Can help think of the problems in terms of statistical modeling in general and predictive analytics in particular 
* Simply put, the app is a great starting point for someone who wants to learn more:  it is clear, simple and a user-friendly tool!!! 

---
## How does the App work?

Basically, the app uses the Boston dataset from MASS package and calls lm function to fit a linear model. Here's the example with two variables *medv* (median value of owner-occupied homes, which is a dependent variable) and *lstat* (owner status of the population, which is an independent variable).


```r
library(MASS)
lm(medv~lstat, Boston)
```

```
## 
## Call:
## lm(formula = medv ~ lstat, data = Boston)
## 
## Coefficients:
## (Intercept)        lstat  
##       34.55        -0.95
```
Very simple, right.

---
## Thank you!
<br><br/>

The App can be accessed at http://pascalv.shinyapps.io/shiny/

The source is avaiable at https://github.com/vpascal/data_app

This presentation is available at https://github.com/vpascal/vpascal.github.io

