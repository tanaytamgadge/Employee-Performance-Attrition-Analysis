import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score

# Load the model and scaler saved earlier
import pickle
with open('energy_consumption_model.pkl', 'rb') as model_file:
    regressor = pickle.load(model_file)

with open('scaler.pkl', 'rb') as scaler_file:
    scaler = pickle.load(scaler_file)

# Assuming X_test and y_test are already preloaded and scaled from previous steps
# Evaluate the model using the test data
y_pred = regressor.predict(X_test_scaled)

# Calculate error metrics
mse = mean_squared_error(y_test, y_pred)
rmse = np.sqrt(mse)
mae = mean_absolute_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

# Print the evaluation results
print(f'Mean Squared Error (MSE): {mse}')
print(f'Root Mean Squared Error (RMSE): {rmse}')
print(f'Mean Absolute Error (MAE): {mae}')
print(f'R-squared (R²): {r2}')

# Visualizing model performance metrics
fig, axs = plt.subplots(2, 2, figsize=(14, 12))

# Plotting Actual vs Predicted Consumption
axs[0, 0].plot(y_test.values, label='Actual Consumption', color='blue', linewidth=2)
axs[0, 0].plot(y_pred, label='Predicted Consumption', color='red', linestyle='dashed', linewidth=2)
axs[0, 0].set_title('Actual vs Predicted Energy Consumption')
axs[0, 0].set_xlabel('Data Points')
axs[0, 0].set_ylabel('Consumption (kWh)')
axs[0, 0].legend()

# Residuals Plot
residuals = y_test - y_pred
axs[0, 1].scatter(y_pred, residuals, color='green', alpha=0.5)
axs[0, 1].axhline(0, color='black', linestyle='--')
axs[0, 1].set_title('Residuals vs Predicted Values')
axs[0, 1].set_xlabel('Predicted Values')
axs[0, 1].set_ylabel('Residuals')

# Histogram of Residuals
axs[1, 0].hist(residuals, bins=30, color='purple', edgecolor='black', alpha=0.7)
axs[1, 0].set_title('Histogram of Residuals')
axs[1, 0].set_xlabel('Residuals (kWh)')
axs[1, 0].set_ylabel('Frequency')

# Error Distribution Plot (Kernel Density Estimation)
sns.kdeplot(residuals, shade=True, color='orange', ax=axs[1, 1])
axs[1, 1].set_title('Error Distribution (KDE)')
axs[1, 1].set_xlabel('Residuals (kWh)')
axs[1, 1].set_ylabel('Density')

plt.tight_layout()
plt.show()

# Detailed Summary of Errors
error_summary = pd.DataFrame({
    'Actual': y_test,
    'Predicted': y_pred,
    'Error': residuals
})

# Mean, Max, Min errors
print(f"Mean Error: {np.mean(residuals)}")
print(f"Maximum Error: {np.max(residuals)}")
print(f"Minimum Error: {np.min(residuals)}")

# Display a summary of errors
print(error_summary.describe())

# Plotting the distribution of errors based on day of the week
error_by_day = pd.DataFrame({
    'Day': X_test['Weekday'],
    'Error': residuals
})

plt.figure(figsize=(12, 6))
error_by_day.groupby('Day').mean()['Error'].plot(kind='bar', color='teal')
plt.title('Average Prediction Error by Day of the Week')
plt.xlabel('Day of the Week')
plt.ylabel('Average Error (kWh)')
plt.xticks(ticks=range(7), labels=["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"], rotation=0)
plt.grid(True)
plt.show()

# Error based on hour of the day ()
error_by_hour = pd.DataFrame({
    'Hour': X_test['Hour'],
    'Error': residuals
})

plt.figure(figsize=(12, 6))
error_by_hour.groupby('Hour').mean()['Error'].plot(kind='bar', color='navy')
plt.title('Average Prediction Error by Hour of the Day')
plt.xlabel('Hour of the Day')
plt.ylabel('Average Error (kWh)')
plt.grid(True)
plt.show()

# Plotting the error correlation with temperature ()
error_by_temp = pd.DataFrame({
    'Temperature': X_test['Temperature'],
    'Error': residuals
})

plt.figure(figsize=(12, 6))
sns.scatterplot(data=error_by_temp, x='Temperature', y='Error', color='darkred')
plt.title('Prediction Error vs Temperature')
plt.xlabel('Temperature (°C)')
plt.ylabel('Prediction Error (kWh)')
plt.grid(True)
plt.show()
