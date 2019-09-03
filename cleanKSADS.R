library(tidyverse)

datadic <- read_csv('KSADS_DataDictionary_2019-07-25.csv', na = "NA")

#get rid of  HTML in 'Field Label' and 'Section Header' columns

#test34

#test <- datadic[34,]$`Section Header`

#str_replace_all(test, "<[^>]+>", "\n")

datadic <- datadic %>% mutate(`Field Label` = str_replace_all(`Field Label`, "<[^>]+>", "\n" ),
                              `Section Header` = str_replace_all(`Section Header`, "<[^>]+>", "\n"))



#divide into sections then hand clean

for (i in sections) {
  
  sec <- datadic %>% filter(`Form Name` == i)
  
  write_csv(sec, paste0("section_csv/", i, ".csv"))
  
}







