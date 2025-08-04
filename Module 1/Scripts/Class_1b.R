#### Tasks ####

# 1. Set Working Directory
# Create a new folder on your computer "AI_Omics_Internship_2025".

# 2. Create Project Folder
# In RStudio, create a new project named "Module_I" in your "AI_Omics_Internship_2025" folder.
# Inside the project directory, create the following subfolders using R code:
# raw_data, clean_data, scripts, results or Tasks, plots etc

dir.create("Raw Data") 
dir.create("Clean Data") 
dir.create("Scripts") 
dir.create("Results") 
dir.create("Plots") 


# 3. Download "patient_info.csv" dataset from GitHub repository

# load the dataset into your R environment
patient_info <- read.csv("Raw Data/patient_info.csv")

# Inspect the structure of the dataset using appropriate R functions
str(patient_info)

# Identify variables with incorrect or inconsistent data types.
# Convert variables to appropriate data types where needed
patient_info$diagnosis_factor <- factor(data$diagnosis,
                         levels = c("Normal", "Cancer"))

patient_info$gender_num <- ifelse(patient_info$gender == "Female", 1, 0)


# Create a new variable for smoking status as a binary factor:
# 1 for "Yes", 0 for "No"
patient_info$smoking_num <- ifelse(patient_info$smoker == "Yes", 1, 0)


# Save the cleaned dataset in your clean_data folder with the name patient_info_clean.csv
write.csv(patient_info, file="Clean Data/patient_info_clean.csv")

# Save your R script in your script folder with name "class_1b"
# Upload "class_1b" R script into your GitHub repository

save.image(file="OliviaRippee_Class_1b_Assignment.Rdata")