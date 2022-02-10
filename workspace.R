library(tercen)
library(dplyr)

options("tercen.workflowId" = "5f8ff8c8c6b0e2dda612c715f200ad11")
options("tercen.stepId"     = "7dc05c03-3faa-43bc-aedb-307e30f06709")

ctx <- tercenCtx()

ctx  %>% 
  select(.x, .y) %>% 
  transmute(difference = .y - .x) %>%
  ctx$addNamespace() %>%
  ctx$save()
  