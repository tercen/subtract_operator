library(tercen)
library(dplyr)

ctx <- tercenCtx()

ctx  %>% 
  select(.x, .y) %>% 
  transmute(difference = .y - .x) %>%
  ctx$addNamespace() %>%
  ctx$save()
  