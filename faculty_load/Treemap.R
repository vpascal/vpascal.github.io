library(readxl); library(treemap); library(highcharter);library("viridis")

data <- read_excel("Faculty Credits AY 2014-15_29JAN16.XLS",sheet = "Faculty_Load_2014_2015")[c(2,7,32)]

data_summary <- data %>% dplyr:: filter(`Dept Code`!="ST") %>% 
  group_by(`Dept Code`,`Faculty Type`) %>% 
  summarise(Total=sum(`Difference AY`)) %>% mutate(Percent=round(Total/sum(Total)*100,1))


tm <- treemap(data_summary, index = c("Dept Code", "Faculty Type"),
              vSize = "Total", vColor = "Percent", type="dens", 
              draw = FALSE)

highchart() %>% 
  hc_add_series_treemap(tm, allowDrillToNode = TRUE,
                        layoutAlgorithm = "squarified",
                        levelIsConstant= F,
                        borderWidth= 3,
                        borderColor= "#FFFFFF")
  
  
  
  # hc_tooltip(pointFormat = "<b>{point.name}</b>:<br>
  #                            Defference: {point.value:,.0f}<br>
  #                            Percent: {point.valuecolor:,.0f}") 


################################################