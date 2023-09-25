



# DVB Chp 1: Problem 41
# Kentucky Derby 2018 on the computer Load the Kentucky Derby 2018 data into your preferred statistics package and answer the following questions;
# a) What was the name of the winning horse in 1880?
# b) When did the length of the race change?
# c) What was the winning time in 1974?
# d) Only one horse has run the Derby in less than 2 minutes. Which horse and in what year?

# load tidyverse package
install.packages("tidyverse") # only run this once!
library(tidyverse)

# load the data (note that it's a "tab-separated value" file so you read it in with tsv)
dat <- read_tsv("/Users/caroline/Downloads/crim2040-stats/kentucky-derby-2018.txt")

# see the first few rows of the data
dat

# see all the data
View(dat)

# check the dimensions of the data
dim(dat)

# a) find the name of the winning horse in 1880
dat$Winner[dat$Year==1880]

# filter to only keep the observation from 1880
dat %>% filter(Year == 1880)

# b) When did the length of the race change?

dat$Year[!dat$Distance==1.5]

    #The length of the year changed in 1896

# view full dataset to see in what year did Distance (mi) change.
View(dat)

  #The length of the race changed in 1896

# c) What was the winning time in 1974?

dat$Time.in.Sec[dat$Year==1974]

  #the winning time in 1974 is 124 seconds, or 2 minutes, 4 seconds
  

# filter to only keep the observation from 1974
dat %>% filter(Year == 1974)

# d) Only one horse has run the Derby in less than 2 minutes. Which horse and in what year?

dat$Winner[dat$Mins<2]
dat$Year[dat$Mins<2]
    #secretariat won the race in 1973 in under 2 minutes, and Monarchos won the race in 2001 in less than 2 minutes
  

# filter to only keep the observations that have fewer than 2 minutes.
dat %>% filter(Mins < 2)







