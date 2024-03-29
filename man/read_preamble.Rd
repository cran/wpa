% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_report.R
\name{read_preamble}
\alias{read_preamble}
\title{Read preamble}
\usage{
read_preamble(path)
}
\arguments{
\item{path}{Text string containing the path for the appropriate Markdown file.}
}
\value{
String containing the text read in from the specified Markdown file.
}
\description{
Read in a preamble to be used within each individual reporting function.
Reads from the Markdown file installed with the package.
}
\seealso{
Other Support: 
\code{\link{camel_clean}()},
\code{\link{check_inputs}()},
\code{\link{combine_signals}()},
\code{\link{cut_hour}()},
\code{\link{extract_date_range}()},
\code{\link{extract_hr}()},
\code{\link{heat_colours}()},
\code{\link{is_date_format}()},
\code{\link{maxmin}()},
\code{\link{p_test}()},
\code{\link{pairwise_count}()},
\code{\link{plot_WOE}()},
\code{\link{rgb2hex}()},
\code{\link{totals_bind}()},
\code{\link{totals_col}()},
\code{\link{totals_reorder}()},
\code{\link{tstamp}()},
\code{\link{us_to_space}()},
\code{\link{wrap}()}

Other Reports: 
\code{\link{IV_report}()},
\code{\link{capacity_report}()},
\code{\link{coaching_report}()},
\code{\link{collaboration_report}()},
\code{\link{connectivity_report}()},
\code{\link{generate_report}()},
\code{\link{meeting_tm_report}()},
\code{\link{subject_validate_report}()},
\code{\link{validation_report}()},
\code{\link{workpatterns_report}()}
}
\concept{Reports}
\concept{Support}
