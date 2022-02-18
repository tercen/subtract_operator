library(tercen)
library(dplyr)

options("tercen.workflowId" = "4ba553e4b19c5411dc78e22a19000675")
options("tercen.stepId"     = "bf7cd24c-fc38-471e-a053-8336a7b98c1d")

ctx <- tercenCtx()

ctx  %>% 
  select(.x, .y) %>% 
  transmute(difference = .y - .x) %>%
  ctx$addNamespace() %>%
  ctx$save()
  