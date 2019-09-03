#testing preamble in Sanu code

a <- read_csv('section_csv/register_interview_child_psychiatric.csv')

b <- read_csv('section_csv/timeline.csv')

c <- read_csv('section_csv/screener.csv')

MLtest3 <- bind_rows(a,b,c)

MLtest3[is.na(MLtest3)] <- ""

write_csv(MLtest3, 'MLtest3.csv')
