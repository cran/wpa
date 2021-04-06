## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width=8,
  fig.height=8
)

## ----message=FALSE, warning=FALSE---------------------------------------------
library(wpa)
library(dplyr)

## ----message=FALSE, warning=FALSE---------------------------------------------
data("sq_data") # Standard Query data

# Check what the first ten columns look like
sq_data %>%
  .[,1:10] %>%
  glimpse()

## -----------------------------------------------------------------------------
sq_data %>% collaboration_summary(hrvar = "LevelDesignation")

## -----------------------------------------------------------------------------
sq_data %>% collaboration_summary(hrvar = "Organization")

## -----------------------------------------------------------------------------
sq_data %>% collaboration_summary(hrvar = "LevelDesignation", return = "table")

## -----------------------------------------------------------------------------
sq_data %>% keymetrics_scan(hrvar = "Organization", return = "plot")

## -----------------------------------------------------------------------------
sq_data %>% keymetrics_scan(hrvar = "Organization", return = "table")

## -----------------------------------------------------------------------------
sq_data %>% meeting_summary(hrvar = "Organization", return = "plot")

## -----------------------------------------------------------------------------
sq_data %>% meeting_summary(hrvar = "Organization", return = "table")

## -----------------------------------------------------------------------------
sq_data %>% mgrrel_matrix()

## -----------------------------------------------------------------------------
sq_data %>% mgrrel_matrix(hrvar = "LevelDesignation", return = "table")

## -----------------------------------------------------------------------------
sq_data %>% mgrrel_matrix(hrvar = "LevelDesignation", return = "chartdata")

## -----------------------------------------------------------------------------
sq_data %>% mgrcoatt_dist(hrvar = "LevelDesignation")

## -----------------------------------------------------------------------------
sq_data %>% mgrcoatt_dist(hrvar = "LevelDesignation", return = "table")

## -----------------------------------------------------------------------------
sq_data %>%
  workloads_fizz(hrvar = "LevelDesignation", return = "plot")

## -----------------------------------------------------------------------------
library(ggplot2) # Requires ggplot2 for customizations

sq_data %>%
  workloads_fizz(hrvar = "LevelDesignation", return = "plot") +
  labs(title = "This is a custom title",
       subtitle = "This is a custom sub-title") +
  coord_flip() # Flip coordinates

