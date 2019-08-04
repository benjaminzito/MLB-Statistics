## Orioles 2018 - dplyr filter

## Creating data frame w/ all 2018 players and stats from Batting data frame

> batting_2018 <- filter(Batting, yearID == 2018)

## Now we want the 2018 Orioles
> orioles_2018 <- filter(batting_2018, teamID == "BAL")

## I want to calcualte players batting average

> orioles_2018 <- mutate(orioles_2018, avg = H/AB)

==============================================================
## Lets get the pitchers now

## importing Pitching

> Pitching <- read_csv("baseballdatabank-2019.2/core/Pitching.csv")

## Filtering 2018 orioles pitchers

> orioles_pitching <- filter(Pitching, yearID == 2018, teamID == "BAL")