# Airbnb-Price-Prediction-and-Business-Insights-Through-R-and-Machine-Learning
CIS5550: Data Mining for Business Analytics

## Objective

The goal of this analysis is to predict **Airbnb listing prices** based on various features, such as room type, host status, location, reviews, and more. By identifying key factors influencing pricing, the analysis offers actionable insights that can help Airbnb hosts optimize their pricing strategies.

## Dataset Overview

The dataset includes details on Airbnb listings, including pricing, host features, listing characteristics, reviews, and neighborhood information.

### Unit of Analysis:
- **Listing**: Details about each Airbnb listing (location, room type, pricing, etc.).
- **Host**: Information about the host, including their status (Superhost or not).
- **Pricing**: The price of the listing.
- **Reviews**: Ratings and feedback from guests.
- **Neighborhood**: The geographical location of the listing.

### Key Features Used:
- **Categorical**:
  - Room type (Entire home/apartment, Private room, Shared room)
  - Host status (Superhost or not)
  - Location (Geographical area)
  - Neighborhood group (Specific neighborhood)
  - Instant bookable (Whether the listing is instant bookable)
- **Numerical**:
  - Accommodates (Number of people the listing can accommodate)
  - Beds (Number of beds in the listing)
  - Minimum nights (The minimum number of nights required for booking)
  - Price (Price of the listing)
- **Interaction Features**:
  - Accommodates_beds (Interaction between the accommodates and beds features)

## Key Libraries Used

- **RStudio**: Conducted the analysis using RStudio with the following key libraries:
  - **readxl**: Importing Excel files
  - **tidyverse & tidyr**: Data wrangling and cleaning
  - **leaflet**: Interactive map visualizations
  - **ggcorrplot**: Correlation visualization
  - **rpart & rpart.plot**: Decision tree creation and visualization
  - **randomForest**: Building random forest models
  - **caret**: Model evaluation and validation

## Data Preprocessing

- **Data Wrangling**: Handled missing values, converted categorical variables, and standardized numerical features.
- **Feature Engineering**: Created interaction features like `Accommodates_beds` and applied one-hot encoding to prepare the data for modeling.
- **Normalization**: Normalized numerical features to improve model performance.


## Key Insights

1. **Room Type**:
   - **Entire homes/apartments** are the most popular and profitable, with higher prices and ratings.
   - **Private rooms** are more affordable, while **shared rooms** and **hotel rooms** tend to be cheaper.
   
2. **Location and Price**:
   - **Coastal neighborhoods** (e.g., Malibu, Santa Monica) and **luxury neighborhoods** (e.g., Hidden Hills) have premium prices.
   - **Inland areas** are more affordable due to their distance from tourist attractions.

3. **Host Performance**:
   - **Superhosts** maintain exceptionally high ratings, resulting in higher prices and more bookings.
   - Hosts with more listings tend to have slightly lower ratings due to the challenges of managing multiple properties.

4. **Price and Size**:
   - Larger listings with more beds and accommodates tend to have higher prices.
   - **Entire homes/apartments** (median price $200) are ideal for larger groups, while **private rooms** (median price $75) attract solo travelers.

5. **Reviews**:
   - Higher-rated listings attract more reviews, which leads to increased bookings and income.

## Regional Distribution of Airbnb Listings

- **Entire home/apartment listings** dominate across all regions, comprising over 75% of listings.
- **Private room listings** account for 20-25%, while **shared rooms** and **hotel rooms** represent less than 10% in each region.

## Model Development

Three models were developed to predict Airbnb listing prices:

1. **Linear Regression**: A simple linear model.
2. **Decision Tree**: A tree-based model to capture non-linear relationships.
3. **Random Forest**: An ensemble model for improved accuracy.

## Pricing Model Performance

### Top Features Influencing Price:
- **Room type** (Entire home/apartment) is the most important predictor.
- **Accommodates** and **beds** also significantly impact pricing.
- **Host status** (Superhost) contributes to higher pricing.

### Model Evaluation:
- The **Random Forest** model provided the best prediction accuracy with an **RMSE of 0.38** and **R² of 0.59**.
- **Linear Regression** had lower performance with an **R² of 0.33**.
- The **Decision Tree** model was more accurate than linear regression but still outperformed by Random Forest.

## Key Takeaways

1. **Room Type and Size Matter**: Entire homes and larger listings tend to have higher prices.
2. **Superhosts Lead**: Superhosts maintain higher ratings, attracting more bookings and higher prices.
3. **Location Drives Pricing**: Coastal and luxury neighborhoods command higher prices, while inland areas are more affordable.
4. **Reviews Impact Success**: Positive reviews lead to more bookings and higher income.

## Best Model
**Random Forest**: Achieved the best performance with **RMSE = 0.38** and **R² = 0.59**, outperforming both linear regression and decision tree models.

## Conclusion

This analysis provides key insights into the factors influencing Airbnb pricing. By using machine learning models like Random Forest, we were able to predict prices with high accuracy, offering valuable guidance for hosts on optimizing their pricing strategies.

## Platform

The analysis was conducted using **RStudio**, leveraging **R** for data wrangling, statistical modeling, and visualization.

