d <- read.csv("D:\\R practice\\Video_Games_Sales_as_at_22_Dec_2016.csv")
colnames(d)
head(d)
View(d)
vec_1 <- c(1,2,3)
x <- c(1, 3, 5)
names(x) <- c("a", "b", "c")
x
list("Hello", 1,3, TRUE)
nListed<-list(list(1,2,3,4), list("a,b,c,d"))
str(nListed)
NameList <- list('london'=1, 'tokyo'=2,'osaka'=3)

#------------------# dplyr is used to use pipes(nested functions)-----------------------
filtered_GS <- filter(d,Platform=='Wii')
View(filtered_GS)


#------------------------ Now to use Pipe ----------------------
filtered_Sale <- d %>% 
  filter(Genre=='Sports') %>% 
  arrange(Year_of_Release)

View(filtered_Sale)

#--------------------------  Multi condition filter ------------ 

salesFilt <- d %>% 
  filter(Global_Sales>15 & Genre=='Sports') %>% 
  arrange(Year_of_Release)
View(salesFilt)

#------------------------- To highlight the structure of the dataset ----

str(d)

#----------------------
as_tibble(d)

#----------------------
SamJson <- fromJSON(file='D:\\R practice\\sample-json-file.json')
SamJson
json_to_data <- as.data.frame(SamJson)
json_to_data
View(json_to_data)

#------------------------------ Use of skimr, Here, Janitor (We import these )-----------
skim_without_charts(d) # used for making summary
glimpse(d) # Used for summary as well
head(d) 
d %>% 
  select(Name) # only Name column from the dataset

d %>% 
  select(-Name)
rename_with(d,toupper)
rename_with(d,tolower)
d
