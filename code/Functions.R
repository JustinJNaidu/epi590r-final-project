ss_clean <- read_csv(here::here("data", "clean", "ss_clean.csv"))

ss_clean <- data %>%
	rename(
		`Person ID` = Person.ID,
		`Duration of Sleep` = Sleep.Duration,
		`Quality of Sleep` = Quality.of.Sleep,
		`Physical Activity Level` = Physical.Activity.Level,
		`Stress Level` = Stress.Level,
		`BMI Category` = BMI.Category,
		`Heart Rate` = Heart.Rate,
		`Daily Steps` = Daily.Steps,
		`Sleep Disorder` = Sleep.Disorder
	)
