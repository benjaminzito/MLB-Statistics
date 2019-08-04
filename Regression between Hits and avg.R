> load("~/Desktop/R Studio/R for Excel Users/Top Hitters Project/Filterted Data.RData")

> Data <- Batting_2018

> Data$Average <- Data$H / Batting$AB

Error in `$<-.data.frame`(`*tmp*`, "Average", value = c(33, 1.07627118644068,  : 
  replacement has 105861 rows, data has 1535
In addition: Warning message:
In Data$H/Batting$AB :
  longer object length is not a multiple of shorter object length

## so this didn't work....

> Batting_2018$Average <- Batting_2018$H / Batting_2018$AB

## but this did

## let's try a ggplot, with a regression

> ggplot(Batting_2018, aes(x = Batting_2018$H, y = Batting_2018$Average)) +
   geom_point(shape=1) +
   geom_smooth(method = lm)

## let's try antoher one (I changed the geom_point aspect)

> ggplot(Batting_2018, aes(x = Batting_2018$H, y = Batting_2018$Average)) +
       geom_point() +
       geom_smooth(method = lm)
  