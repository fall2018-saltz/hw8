




library(rjson)

json_file<-fromJSON(file = "hotelSurveySherison.json")
str(json_file)


hotel_df<-as.data.frame(do.call("cbind", json_file))
hotel_df

hotel_size_plot<-plot(hotel_df$hotelSize,hotel_df$overallCustSat,xlab = "Hotel Size",ylab = "Customer Satisfaction")
hotel_size_plot

library(ggmap)
library(ggplot2)

hotel_df$hotelState<-tolower(hotel_df$hotelState)


state_map<-ggplot(hotel_df,aes(map_id=hotelState))+geom_map(map=US,aes(fill=overallCustSat),color="black")
state_map<-state_map+expand_limits(x=US$long,y=US$lat)+coord_map()+ggtitle("Customer Satisfaction according to state")
state_map
