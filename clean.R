




library(rjson)
json_file<-fromJSON(file = "hotelSurveySherison.json")
str(json_file)


hotel_df<-as.data.frame(do.call("cbind", json_file))
hotel_df
