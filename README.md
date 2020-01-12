
# trackrrr

<!-- badges: start -->
<!-- badges: end -->

The goal of trackrrr is to ...

## Installation

You can install the released version of trackrrr from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("trackrrr")
```

## About

trackrrr expects to work with a project directory set up as a collection of projects. Each collection has subdirectories of individual projects, as well as an archive directory, where projects are moved to when they are no longer active.

For example:

```
projects/
  - personal/
    - trackrrr/
    - media-server/
    - degoogle/
  - work
    - tps-report-generator-pkg
    - promote-synergy
  - side-hustle
    - knowledge-graph-buildout
```

Within each project there's a `worklog.md` that contains a `# ToDo` section, with tasks to do, broken up into sections, followed by a `# meta` section, containing the project metadata, and then a `# notes` section, which has reverse-chronologically organized work notes. Additionally supporting documents / artefacts can be included in the project folder and linked to from the worklog. Ideally you would keep all the work on the project in a different folder though (your project tracking folder should be under git version control, so plan accordingly).

worklog.md

```` {markdown}
# ToDo

- [x] create package and push to GitHub
- [] create script to write out a new project
- [] write spec for folder structuer into appropriate place -- where do I do this in an R pkg?

# meta

```{r metadata}

start_date = "2020-01-01"
project_title = "trackrrr"
priority = "high"
archived_data = NA
```

# notes

## 2020-01-11

The helper scripts can easily be collected and represented as an R package. Also this R package can contain the spec for the folder structure and the metadata included in each worklog #yoloswaggins


## 2020-01-10

Clarity. Since text is the universal interface, and I want the system to be as low friction as possible, I'll develop a system to take my notes in markdown, and then write some helper scripts to parse the folder structure and give me some views of the projects. 


## 2020-01-01

Going through my yearly review I realized that I'm doing a fairly poor job of working on important but non-urgent things. This is coming from a lack of easy project overviews. I'll spend some time defining the needs I have and exploring the solutions that can meet those needs. 

````

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(trackrrr)
## basic example code
```

