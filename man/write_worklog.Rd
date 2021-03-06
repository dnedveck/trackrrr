% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/project_generate.R
\name{write_worklog}
\alias{write_worklog}
\title{Generate the worklog}
\usage{
write_worklog(write_path, priority)
}
\arguments{
\item{write_path}{path to write the worklog in, file.path is used to create
a file path with it.
e.g. graph-db-migration/data-preparation}

\item{priority}{priority level of the project, choose from "someday-maybe",
"normal", "high", or "maximum-effort"}
}
\description{
Writes a worklog.md in the current directory
}
