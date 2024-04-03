library(ggplot2)

csv_url <- 'https://web.tecnico.ulisboa.pt/~paulo.soares/pe/projeto/Paises_PIB_ICH.csv'

data <- read.csv(csv_url, check.names = FALSE)

continents <- c("Europe", "Americas")
countries <- c("Lithuania", "Iceland", "United States", "Saint Lucia")

final_data <- subset(data, Continent %in% continents)
text_data = subset(final_data, Country %in% countries)
rest_data = final_data[!(final_data$Country %in% countries), ]

country_labels <- text_data[, !(names(text_data) %in% "Continent")] 

ggplot(final_data, aes(x = GDP, y = HCI, color = Continent)) + 
  geom_point(data = rest_data) +
  scale_x_log10() +
  geom_text(data = country_labels,
            aes(label = Country), vjust = -0.5, show.legend = TRUE) +
  geom_point(data = country_labels, shape = 17, size = 2) +
  labs(title = "HCI / GDP")
print (country_labels)

