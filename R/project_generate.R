#' Generate a project folder
#'
#' Creates a project folder in specified category (default is current directory)
#' includes creation of `worklog.md`, and populates the metadata within.
#'
#' @param category_path path to the category to create the project under
#'     e.g. `personal_work/`. Default is ".", and it is created in reference
#'     to
#' @param project_name the name of your project. E.g. `graph-db-buildout`.
#'    No spaces please -- the text will be used to create a directory path.
#' @param priority priority level of the project, choose from "someday-maybe",
#'     "normal", "high", or "maximum-effort"
#'
project_generate <- function(project_name,
                             category_path = ".",
                             priority = "normal") {
  # check to make sure prioirity matches potential args
  if (sum(priority %in%
          c("someday-maybe", "normal", "high", "maximum-effort")) != 1){
    stop("variable `priority` does not match one of the accepted values.")
  }

  # check for spaces in names
  if(grepl(pattern = "\\s", category_path)){
    stop("category_path has whitespace in the name. Don't be a jerk, clean it up.")
  }
  if(grepl(pattern = "\\s", project_name)){
    stop("project_name has whitespace in the name. Don't be a jerk, clean it up.")
  }

  # create dir
  dir.create(file.path(category_path, project_name), showWarnings = FALSE)

  # create worklog.md
  write_worklog(file.path(category_path, project_name), priority)

}


#' Generate the worklog
#'
#' Writes a worklog.md in the current directory
#' @param write_path path to write the worklog in, file.path is used to create
#'     a file path with it.
#'     e.g. graph-db-migration/data-preparation
#' @param priority priority level of the project, choose from "someday-maybe",
#'     "normal", "high", or "maximum-effort"
#'
write_worklog <- function(write_path,
                          priority){


  metadata_version <- "bigboy"
  pkg_ver <- packageVersion("trackrrr")

  if (sum(priority %in%
          c("someday-maybe", "normal", "high", "maximum-effort")) != 1){
    stop("variable `priority` does not match one of the accepted values.")
  }

  ## Defining the sections

  todo_section <- c(
    "## TODO",
    "",
    "Group 1",
    "",
    "- [] task 1",
    "",
    ""
  )

  metad_section <- c(
    "## metadata",
    "",
    "```{r metadata}",
    paste0("worklog_version <- ", metadata_version),
    paste0("project_priority <- ", priority),
    "Stage: Exploring",
    "```",
    "",
    ""
  )

  notes_section <- c(
    "## notes",
    "",
    "### Put your date here",
    ""
  )

  alines <- c(todo_section, metad_section, notes_section)

  writeLines(alines, file.path(write_path, "worklog.md"))
}
