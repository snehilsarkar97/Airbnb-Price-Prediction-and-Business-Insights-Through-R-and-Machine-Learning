models <- read_xlsx("data/Model_Summary.xlsx")

# Load ggplot2 library
library(ggplot2)

# RMSE Bar Graph
ggplot(models, aes(x = Prediction_Model, y = RMSE, fill = Prediction_Model)) +
  geom_bar(stat = "identity", width = 0.7) +
  geom_text(aes(label = round(RMSE, 2)),  # Add labels and round RMSE values to 2 decimal places
            vjust = -0.5,                 # Adjust label position above the bar
            size = 4,                     # Adjust font size
            color = "black") +            # Set label color
  labs(title = "RMSE for Prediction Models",
       x = "Prediction Model",
       y = "RMSE") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_fill_brewer(palette = "Set2") +
  ylim(0, 0.7)

#-----------------------R2----------------------#
# Reorder Prediction_Model based on R2 values
models$Prediction_Model <- factor(models$Prediction_Model, levels = models$Prediction_Model[order(models$R2)])

# Plot with reordered bars
ggplot(models, aes(x = Prediction_Model, y = R2, fill = Prediction_Model)) +
  geom_bar(stat = "identity", width = 0.7) +  # Adjust width for narrower bars
  geom_text(aes(label = round(R2, 2)),  # Add labels and round R2 values to 2 decimal places
            vjust = -0.5,                 # Adjust label position above the bar
            size = 4,                     # Adjust font size
            color = "black") +            # Set label color
  labs(title = "R² for Prediction Models",
       x = "Prediction Model",
       y = "R²") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_fill_brewer(palette = "Set2") +
  ylim(0, 0.7)

