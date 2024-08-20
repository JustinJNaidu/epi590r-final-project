library(tidyverse)

ss_clean <- read_csv(here::here("data", "clean", "ss_clean.csv"))

ss_clean <- ss_clean %>%
	rename(
		Person_ID = `Person ID`,
		Sleep_Duration = `Sleep Duration`,
		Sleep_Quality = `Quality of Sleep`,
		Physical_Activity_Level = `Physical Activity Level`,
		Stress_Level = `Stress Level`,
		BMI_Category = `BMI Category`,
		Heart_Rate = `Heart Rate`,
		Daily_Steps = `Daily Steps`,
		Sleep_Disorder = `Sleep Disorder`
	)


# Define the custom function to calculate standard deviation
custom_sd <- function(x) {
	# Calculate the standard deviation
	result <- sd(x, na.rm = TRUE)
	return(result)
}

# Calculate the standard deviation of Sleep_Duration
sleep_duration_sd <- custom_sd(ss_clean$Sleep_Duration)

# Print the result
print(sleep_duration_sd)


# Calculate standard deviations for other variables
stress_level_sd <- custom_sd(ss_clean$Stress_Level)
heart_rate_sd <- custom_sd(ss_clean$Heart_Rate)

# Print the results
print(stress_level_sd)
print(heart_rate_sd)
