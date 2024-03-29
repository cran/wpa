% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/em_data.R
\docType{data}
\name{em_data}
\alias{em_data}
\title{Sample Hourly Collaboration data}
\format{
A data frame with 2000 rows and 105 variables:
\describe{
\item{PersonId}{ }
\item{Date}{ }
\item{Unscheduled_calls_23_24}{ }
\item{Unscheduled_calls_22_23}{ }
\item{Unscheduled_calls_21_22}{ }
\item{Unscheduled_calls_20_21}{ }
\item{Unscheduled_calls_19_20}{ }
\item{Unscheduled_calls_18_19}{ }
\item{Unscheduled_calls_17_18}{ }
\item{Unscheduled_calls_16_17}{ }
\item{Unscheduled_calls_15_16}{ }
\item{Unscheduled_calls_14_15}{ }
\item{Unscheduled_calls_13_14}{ }
\item{Unscheduled_calls_12_13}{ }
\item{Unscheduled_calls_11_12}{ }
\item{Unscheduled_calls_10_11}{ }
\item{Unscheduled_calls_09_10}{ }
\item{Unscheduled_calls_08_09}{ }
\item{Unscheduled_calls_07_08}{ }
\item{Unscheduled_calls_06_07}{ }
\item{Unscheduled_calls_05_06}{ }
\item{Unscheduled_calls_04_05}{ }
\item{Unscheduled_calls_03_04}{ }
\item{Unscheduled_calls_02_03}{ }
\item{Unscheduled_calls_01_02}{ }
\item{Unscheduled_calls_00_01}{ }
\item{IMs_sent_23_24}{ }
\item{IMs_sent_22_23}{ }
\item{IMs_sent_21_22}{ }
\item{IMs_sent_20_21}{ }
\item{IMs_sent_19_20}{ }
\item{IMs_sent_18_19}{ }
\item{IMs_sent_17_18}{ }
\item{IMs_sent_16_17}{ }
\item{IMs_sent_15_16}{ }
\item{IMs_sent_14_15}{ }
\item{IMs_sent_13_14}{ }
\item{IMs_sent_12_13}{ }
\item{IMs_sent_11_12}{ }
\item{IMs_sent_10_11}{ }
\item{IMs_sent_09_10}{ }
\item{IMs_sent_08_09}{ }
\item{IMs_sent_07_08}{ }
\item{IMs_sent_06_07}{ }
\item{IMs_sent_05_06}{ }
\item{IMs_sent_04_05}{ }
\item{IMs_sent_03_04}{ }
\item{IMs_sent_02_03}{ }
\item{IMs_sent_01_02}{ }
\item{IMs_sent_00_01}{ }
\item{Emails_sent_23_24}{ }
\item{Emails_sent_22_23}{ }
\item{Emails_sent_21_22}{ }
\item{Emails_sent_20_21}{ }
\item{Emails_sent_19_20}{ }
\item{Emails_sent_18_19}{ }
\item{Emails_sent_17_18}{ }
\item{Emails_sent_16_17}{ }
\item{Emails_sent_15_16}{ }
\item{Emails_sent_14_15}{ }
\item{Emails_sent_13_14}{ }
\item{Emails_sent_12_13}{ }
\item{Emails_sent_11_12}{ }
\item{Emails_sent_10_11}{ }
\item{Emails_sent_09_10}{ }
\item{Emails_sent_08_09}{ }
\item{Emails_sent_07_08}{ }
\item{Emails_sent_06_07}{ }
\item{Emails_sent_05_06}{ }
\item{Emails_sent_04_05}{ }
\item{Emails_sent_03_04}{ }
\item{Emails_sent_02_03}{ }
\item{Emails_sent_01_02}{ }
\item{Emails_sent_00_01}{ }
\item{Meetings_23_24}{ }
\item{Meetings_22_23}{ }
\item{Meetings_21_22}{ }
\item{Meetings_20_21}{ }
\item{Meetings_19_20}{ }
\item{Meetings_18_19}{ }
\item{Meetings_17_18}{ }
\item{Meetings_16_17}{ }
\item{Meetings_15_16}{ }
\item{Meetings_14_15}{ }
\item{Meetings_13_14}{ }
\item{Meetings_12_13}{ }
\item{Meetings_11_12}{ }
\item{Meetings_10_11}{ }
\item{Meetings_09_10}{ }
\item{Meetings_08_09}{ }
\item{Meetings_07_08}{ }
\item{Meetings_06_07}{ }
\item{Meetings_05_06}{ }
\item{Meetings_04_05}{ }
\item{Meetings_03_04}{ }
\item{Meetings_02_03}{ }
\item{Meetings_01_02}{ }
\item{Meetings_00_01}{ }
\item{LevelDesignation}{ }
\item{Organization}{ }
\item{TimeZone}{ }
\item{IsActive}{ }
\item{WorkingStartTimeSetInOutlook}{ }
\item{WorkingEndTimeSetInOutlook}{ }
\item{WorkingDaysSetInOutlook}{ }

...
}
}
\usage{
em_data
}
\value{
data frame.
}
\description{
A sample dataset representing an Hourly Collaboration query. The data is
grouped by week and contains columns for unscheduled calls, IMs sent, emails
sent, and meetings. There are 24 columns per collaboration signal,
representing each hour of the day.
}
\seealso{
Other Data: 
\code{\link{dv_data}},
\code{\link{g2g_data}},
\code{\link{mt_data}},
\code{\link{p2p_data_sim}()},
\code{\link{sq_data}}
}
\concept{Data}
\keyword{datasets}
