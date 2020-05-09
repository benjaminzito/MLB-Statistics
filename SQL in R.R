
library(sqldf)  
sqldf("Select playerID, max(HR) 
      from Batting
      Where teamID ='BAL'
      And yearID=2008")
  
  
library(tidyquery)
query("Select MAX(HR) as top_HR
      From Batting 
      Where teamID ='BAL'
      And yearID=2008")
