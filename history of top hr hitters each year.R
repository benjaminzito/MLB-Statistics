## History of home runs by player

tophrhittereachyear <- group_by(Batting, yearID) %>%
      filter(HR == max(HR))

> x <- group_by(Batting, yearID) %>%
  +     filter(HR == max(HR))
> View(x)
> tophrhittereachyear <- group_by(Batting, yearID) %>%
  +       filter(HR == max(HR))
> library("ggplot2", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")
> tophrhittereachyear <- group_by(Batting, yearID) %>%
  +       filter(HR == max(HR))
> View(tophrhittereachyear)
> ggplot(tophrhittereachyear, aes(x = yearID, y = HR))+
  + geom_line(stat = "identity")