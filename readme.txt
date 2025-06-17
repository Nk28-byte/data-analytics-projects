📊 Healthcare Appointment No-Show Prediction
🧠 Objective:
To predict whether a patient will miss their scheduled appointment using machine learning, and provide actionable insights to optimize hospital scheduling and reduce no-shows.

🛠️ Tools & Technologies Used:
Python (Pandas, NumPy, Sklearn)

Power BI (For Insightful Dashboard)

Jupyter Notebook / VS Code

Decision Tree Classifier

📁 Dataset:
Source: Public dataset of medical appointments with features like patient demographics, appointment details, SMS reminders, and no-show status.

Key Columns:
PatientId, AppointmentID, Gender, ScheduledDay, AppointmentDay, Age, Neighbourhood, Scholarship, Hypertension, Diabetes, Alcoholism, SMS_received, No-show

✅ Steps Performed:
1. Data Cleaning & Preprocessing
Removed invalid values (negative ages, etc.)

Converted date columns to proper datetime format

Created new features like day of the week

Encoded categorical variables for modeling

2. Exploratory Data Analysis (EDA)
Identified patterns between no-show rates and:

Age

SMS reminders

Day of week

Health conditions (Diabetes, Hypertension)

3. Model Building (Machine Learning)
Used Decision Tree Classifier

Target Variable: No-show

Evaluated performance using accuracy and confusion matrix

4. Visualization (Power BI)
Created an interactive dashboard to:

Show no-show trends by age, weekday, gender

Compare show vs no-show by health conditions

Highlight overall no-show rate

5. Optimization Recommendations
Send SMS reminders 24 hours prior

Avoid overbooking on Fridays (high no-show trend)

Target youth with follow-ups

Schedule chronic patients at peak hours

Use past history for personalized scheduling

📌 Key Insights:
Patients who received SMS were more likely to show up.

Younger patients (under 25) had higher no-show rates.

Appointments on Fridays showed more no-shows.

Patients with diabetes or hypertension showed up more regularly.

📎 Deliverables:
✅ Cleaned & processed dataset (CSV)

✅ Trained Decision Tree model

✅ Power BI Dashboard (interactive insights)

✅ Final Report with Recommendations (PDF)

📈 Project Outcome:
Improved understanding of patient no-show behavior using data analysis and predictive modeling. Suggestions can help hospitals increase appointment efficiency and reduce losses.

🙋‍♂️ Author:
Nitesh Badwaiya
Data Analyst Intern | Python • Power BI • SQL • Excel
📧 [YourEmail@example.com]
🔗 LinkedIn | GitHub