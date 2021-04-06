# --------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See LICENSE.txt in the project root for license information.
# --------------------------------------------------------------------------------------------

#' @title Manager meeting coattendance distribution
#'
#' @description
#' Analyze degree of attendance between employes and their managers.
#' Returns a stacked bar plot of different buckets of coattendance.
#' Additional options available to return a table with distribution elements.
#'
#' @template spq-params
#'
#' @param return String specifying what to return. This must be one of the
#'   following strings:
#'   - `"plot"`
#'   - `"table"`
#'
#' See `Value` for more information.
#'
#' @return
#' A different output is returned depending on the value passed to the `return`
#' argument:
#'   - `"plot"`: ggplot object. A stacked bar plot showing the distribution of
#'   manager co-attendance time.
#'   - `"table"`: data frame. A summary table for manager co-attendance time.
#'
#' @import dplyr
#' @import ggplot2
#' @import reshape2
#' @import scales
#' @importFrom stats median
#' @importFrom stats sd
#'
#' @family Visualization
#' @family Managerial Relations
#'
#' @examples
#' # Return plot
#' mgrcoatt_dist(sq_data, hrvar = "Organization", return = "plot")
#'
#' # Return summary table
#' mgrcoatt_dist(sq_data, hrvar = "Organization", return = "table")
#'
#' @export

mgrcoatt_dist <- function(data,
                          hrvar = "Organization",
                          mingroup = 5,
                          return = "plot") {

myPeriod <-
    data %>%
    mutate(Date=as.Date(Date, "%m/%d/%Y")) %>%
    arrange(Date) %>%
    mutate(Start=first(Date), End=last(Date)) %>%
    filter(row_number()==1) %>%
    select(Start, End)

  ## Basic Data for bar plot
  plot_data <-
    data %>%
    rename(group = !!sym(hrvar)) %>%
    group_by(PersonId) %>%
	filter(Meeting_hours>0) %>%
	mutate(coattendman_rate = Meeting_hours_with_manager / Meeting_hours) %>%
    summarise(periods = n(),
              group = first(group), coattendman_rate=mean(coattendman_rate)) %>%
    group_by(group) %>%
    mutate(Employee_Count = n_distinct(PersonId)) %>%
    filter(Employee_Count >= mingroup)

  ## Create buckets of coattendance time
  plot_data <-
    plot_data %>%
    mutate(bucket_coattendman_rate =
             case_when(coattendman_rate>=0 &  coattendman_rate<.25 ~ "0 - 25%",
                       coattendman_rate>=.25 & coattendman_rate<.5 ~ "25 - 50%",
                       coattendman_rate>=.50 & coattendman_rate<.75 ~ "50 - 75%",
                       coattendman_rate>=.75 ~ "75% +"))


  ## Employee count / base size table
  plot_legend <-
    plot_data %>%
    group_by(group) %>%
    summarize(Employee_Count=first(Employee_Count)) %>%
    mutate(Employee_Count = paste("n=",Employee_Count))

  ## Data for bar plot
  plot_table <-
    plot_data %>%
    group_by(group, bucket_coattendman_rate) %>%
    summarize(Employees=n(),
              Employee_Count=first(Employee_Count),
              percent= Employees / Employee_Count) %>%
    arrange(group, bucket_coattendman_rate)

  ## Table for annotation
  annot_table <-
    plot_legend %>%
    dplyr::left_join(plot_table, by = "group")

  ## Bar plot
  plot_object <-
    plot_table %>%
    ggplot(aes(x = group, y=Employees, fill = bucket_coattendman_rate)) +
    geom_bar(stat = "identity", position = position_fill(reverse = TRUE)) +
  	coord_flip() +
  	scale_y_continuous(labels = function(x) paste0(x*100, "%")) +
  	annotate("text",
  	         x = plot_legend$group,
  	         y = -.05,
  	         label = plot_legend$Employee_Count) +
  	scale_fill_manual(name="",
  	                  values = c("#bed6f2",
  	                             "#e9f1fb",
  	                             "#ffdfd3",
  	                             "#FE7F4F")) +
    theme_wpa_basic() +
  	labs(title = "Time with Manager",
  	     subtitle = paste("Meeting Co-attendance Rate by", hrvar),
  	     x = camel_clean(hrvar),
  	     y = "Fraction of Employees",
  	     caption = extract_date_range(data, return = "text"))

  ## Table to return
  return_table <-
    plot_table %>%
    select(group, bucket_coattendman_rate,  percent) %>%
    spread(bucket_coattendman_rate,  percent)

  if(return == "table"){

    return_table %>%
      as_tibble() %>%
      return()

  } else if(return == "plot"){

    return(plot_object)

  } else {

    stop("Please enter a valid input for `return`.")

  }
}