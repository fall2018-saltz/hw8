




library(rjson)

json_file<-fromJSON(file = "hotelSurveySherison.json")
str(json_file)


hotel_df<-as.data.frame(do.call("cbind", json_file))
hotel_df

hotel_size_plot<-plot(hotel_df$hotelSize,hotel_df$overallCustSat,xlab = "Hotel Size",ylab = "Customer Satisfaction")
