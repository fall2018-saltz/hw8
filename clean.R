





library(rjson)
library(jsonlite)
json_link<-getURL("https://blackboard.syracuse.edu/bbcswebdav/pid-5159146-dt-content-rid-38224657_1/courses/21341.1191/hotelSurveySherison.json")
json_data<-fromJSON(json_link)
str(json_data)
