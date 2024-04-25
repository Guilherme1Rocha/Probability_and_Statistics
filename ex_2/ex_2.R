library(ggplot2)

csv_url <- 'https://web.tecnico.ulisboa.pt/~paulo.soares/pe/projeto/master.csv'

data <- read.csv(csv_url, check.names = FALSE)

relevant_data <- subset(data, year == 1986 & age == "25-34 years")
ggplot(relevant_data, aes(x = country, y = `suicides/100k pop`, color = sex)) +
  geom_boxplot() +
  coord_flip() +
  labs(x = "Country", y = "Suicides per 100k people")


