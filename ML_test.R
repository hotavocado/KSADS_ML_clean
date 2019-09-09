#testing new format
library(tidyverse)


a <- read_csv('section_csv/register_interview_child_psychiatric.csv')

b <- read_csv('section_csv/timeline.csv')

c <- read_csv('section_csv/screener.csv')

d <- read_csv('section_csv/major_depression.csv')

MLtest3 <- bind_rows(a,b,c,d)

MLtest3[is.na(MLtest3)] <- ""

MLtest3 <- MLtest3 %>% mutate(`Field Type` = recode(`Field Type`, descriptive = 'text'))

write_csv(MLtest3, 'MLtest3.1.csv')
