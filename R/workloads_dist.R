# --------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See LICENSE.txt in the project root for license information.
# --------------------------------------------------------------------------------------------

#' @title Distribution of Work Week Span as a 100% stacked bar
#'
#' @description
#' Analyze Work Week Span distribution.
#' Returns a stacked bar plot by default.
#' Additional options available to return a table with distribution elements.
#'
#' @inheritParams create_dist
#' @inherit create_dist return
#'
#' @family Visualization
#' @family Workweek Span
#'
#' @examples
#' # Return plot
#' workloads_dist(sq_data, hrvar = "Organization", return = "plot")
#'
#' # Return a summary table
#' workloads_dist(sq_data, hrvar = "Organization", return = "table")
#'
#' @export

workloads_dist <- function(data,
                           hrvar = "Organization",
                           mingroup = 5,
                           return = "plot",
                           cut = c(15, 30, 45)) {

  ## Inherit arguments
  create_dist(data = data,
              metric = "Workweek_span",
              hrvar = hrvar,
              mingroup = mingroup,
              return = return,
              cut = cut)

}
