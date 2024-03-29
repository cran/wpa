% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_dt.R
\name{create_dt}
\alias{create_dt}
\title{Create interactive tables in HTML with 'download' buttons.}
\usage{
create_dt(x, rounding = 1, freeze = 2, percent = FALSE)
}
\arguments{
\item{x}{Data frame to be passed through.}

\item{rounding}{Numeric vector to specify the number of decimal points to display}

\item{freeze}{Number of columns from the left to 'freeze'. Defaults to 2,
which includes the row number column.}

\item{percent}{Logical value specifying whether to display numeric columns
as percentages.}
}
\value{
Returns an HTML widget displaying rectangular data.
}
\description{
See
\url{https://martinctc.github.io/blog/vignette-downloadable-tables-in-rmarkdown-with-the-dt-package/}
for more.
}
\examples{
out_tb <- hrvar_count(sq_data, hrvar = "Organization", return = "table")
create_dt(out_tb)

}
\seealso{
Other Import and Export: 
\code{\link{copy_df}()},
\code{\link{export}()},
\code{\link{import_to_fst}()},
\code{\link{import_wpa}()},
\code{\link{standardise_pq}()}
}
\concept{Import and Export}
