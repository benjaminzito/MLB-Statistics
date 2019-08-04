> load("~/Desktop/R Studio/R for Excel Users/Top Hitters Project/Filterted Data.RData")
> library(dplyr)

## sorting 2018 hitters and putting them in new df

Sorted_by_team <- Batting_2018[order(Batting_2018$teamID, decreasing = FALSE), ]

## Making it easier

data1 <- Sorted_by_team

## So first I tried this...

> group_by(data1, playerID) %>%
  + filter(HR == max(HR))
# A tibble: 1,476 x 22
# Groups:   playerID [1,379]
   playerID yearID stint teamID lgID      G    AB     R     H  `2B`  `3B`    HR   RBI    SB    CS    BB    SO
   <chr>     <dbl> <dbl> <chr>  <chr> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
1 ahmedni…   2018     1 ARI    NL      153   516    61   121    33     5    16    70     5     4    40   109
2 andrima…   2018     2 ARI    NL       14     1     0     0     0     0     0     0     0     0     0     1
3 avilaal…   2018     1 ARI    NL       80   194    13    32     6     0     7    20     0     0    37    90
4 barreja…   2018     1 ARI    NL        7     0     0     0     0     0     0     0     0     0     0     0
5 boxbebr…   2018     1 ARI    NL       60     0     0     0     0     0     0     0     0     0     0     0
6 brachsi…   2018     1 ARI    NL       31     0     0     0     0     0     0     0     0     0     0     0
7 bradlar…   2018     1 ARI    NL       76     0     0     0     0     0     0     0     0     0     0     0
8 britoso…   2018     1 ARI    NL       24    40     3     7     0     0     1     3     0     1     3     9
9 buchhcl…   2018     1 ARI    NL       17    31     0     2     1     0     0     1     0     0     1    17
10 chafian…   2018     1 ARI    NL       77     0     0     0     0     0     0     0     0     0     0     0
# … with 1,466 more rows, and 5 more variables: IBB <lgl>, HBP <lgl>, SH <lgl>, SF <lgl>, GIDP <dbl>

## But this wasn't what I was looking for

> group_by(data1, teamID) %>%
  +      filter(HR == max(HR))

# A tibble: 32 x 22
# Groups:   teamID [30]
  playerID yearID stint teamID lgID      G    AB     R     H  `2B`  `3B`    HR   RBI    SB    CS    BB    SO
  <chr>     <dbl> <dbl> <chr>  <chr> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
1 goldspa…   2018     1 ARI    NL      158   593    95   172    35     5    33    83     7     4    90   173
2 acunaro…   2018     1 ATL    NL      111   433    78   127    26     4    26    64    16     5    45   123
3 machama…   2018     1 BAL    AL       96   365    48   115    21     1    24    65     8     1    45    51
4 mancitr…   2018     1 BAL    AL      156   582    69   141    23     3    24    58     0     1    44   153
5 martijd…   2018     1 BOS    AL      150   569   111   188    37     2    43   130     6     1    69   146
6 palkada…   2018     1 CHA    AL      124   417    56   100    15     3    27    67     2     1    30   153
7 baezja01   2018     1 CHN    NL      160   606   101   176    40     9    34   111    21     9    29   167
8 suareeu…   2018     1 CIN    NL      143   527    79   149    22     2    34   104     1     1    64   142
9 ramirjo…   2018     1 CLE    AL      157   578   110   156    38     4    39   105    34     6   106    80
10 arenano…   2018     1 COL    NL      156   590   104   175    38     2    38   110     2     2    73   122
# … with 22 more rows, and 5 more variables: IBB <lgl>, HBP <lgl>, SH <lgl>, SF <lgl>, GIDP <dbl>
> 
  
## This is what I wanted
  
data2 <- group_by(data1, teamID) %>%
      filter(HR == max(HR))