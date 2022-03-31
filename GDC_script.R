library(GenomicDataCommons)
GenomicDataCommons::status()

available_fields('projects') %>% length()
available_fields('files') %>% length()
available_fields('cases') %>% length()
available_fields('annotations') %>% length()

pQuery = projects()
default_fields(pQuery)
presults = pQuery %>% results() # or optionally results_all()

class(presults)
str(presults)
ids(presults)

default_fields(files())

files() %>% count() #without filters, and only 10 Cohorts has 358,679 files

qcases = cases() #patient samples
qcases$fields #grep_fields(), field_picker() can be useful here
head(available_fields('cases')) #clinical data elements "columns"
qcases %>% count() #number of patient cases/samples

#Use available fields and grep fields to find the facets you want.
available_fields(files())
grep_fields('files','analysis.workflow')

#Use aggregrate to summarize the total number of files for each facet.
res = files() %>%
  #Default is to set facets from default_fields()
  facet(c('type','data_type','data_format',
          'cases.project.project_id')) %>%
  aggregations()

str(res)
res$cases.project.project_id$key  %>% .[order(.)]
