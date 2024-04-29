library(ggplot2)
data <- readxl::read_xlsx("/home/rocha/Desktop/PE/PE_proj/electricity.xlsx")

relevant_years <- subset(data,YEAR >= 2015)
relevant_countries <- subset(relevant_years, COUNTRY %in% c("IEA Total", "Hungary","Iceland"))
relevant_product <- subset(relevant_countries, PRODUCT == "Renewables")
relevant_product$Date <- as.Date(paste(relevant_product$YEAR, relevant_product$MONTH, "01", sep = "-"))
ggplot(relevant_product, aes(x = Date, y = signif(as.numeric(share), digits = 2) * 100, color = COUNTRY)) +
  geom_line() +
  scale_y_continuous(limits = c(0, 100), expand = c(0, 0))
  labs(title = "Proportion of Electricity Produced from Renewables (2015-2022)",
       x = "Date",
       y = "Renewables Percentage (%)",
       color = "Country") 


