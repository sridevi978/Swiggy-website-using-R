# ============================================================
# FINDING PATTERNS IN SWIGGY FOOD DELIVERY DATA USING R
# ============================================================


data <- read.csv("Swiggy_Food_Delivery_Analysis_Dataset.csv")


print(head(data, 10))


# ============================================================
# DATA PREPROCESSING
# ============================================================




print(colSums(is.na(data)))


data <- na.omit(data)


# ============================================================
# BASIC DATA ANALYSIS
# ============================================================


age <- data$Customer_Age


food_category <- data$Food_Category


amount <- data$Order_Amount


location <- data$Location


rating <- data$Rating


order_time <- data$Order_Time


delivery_time <- data$Delivery_Time_Min


# ============================================================
# AVERAGE VALUES
# ============================================================

average_age <- mean(age)
average_amount <- mean(amount)
average_rating <- mean(rating)
average_delivery_time <- mean(delivery_time)

cat("\nAverage Customer Age:\n")
print(round(average_age, 2))

cat("\nAverage Order Amount:\n")
print(round(average_amount, 2))

cat("\nAverage Customer Rating:\n")
print(round(average_rating, 2))

cat("\nAverage Delivery Time:\n")
print(round(average_delivery_time, 2))


# ============================================================
# FREQUENCY ANALYSIS
# ============================================================

cat("\nFood Category Frequency:\n")
food_frequency <- table(food_category)
print(food_frequency)

cat("\nLocation Frequency:\n")
location_frequency <- table(location)
print(location_frequency)

cat("\nOrder Time Frequency:\n")
time_frequency <- table(order_time)
print(time_frequency)

cat("\nRating Frequency:\n")
rating_frequency <- table(rating)

print(rating_frequency)


# ============================================================
# SUMMARY
# ============================================================

cat("\nOrder Amount Summary:\n")
print(summary(amount))

cat("\nDelivery Time Summary:\n")
print(summary(delivery_time))


# ============================================================
# GRAPH 1 - CUSTOMER AGE
# ============================================================

hist(
  age,
  main = "Age of Swiggy Customers",
  xlab = "Customer Age",
  ylab = "Number of Customers"
)


# ============================================================
# GRAPH 2 - FOOD CATEGORY
# ============================================================

barplot(
  food_frequency,
  main = "Swiggy Food Category Preference",
  xlab = "Food Category",
  ylab = "Number of Orders",
  las = 2
)


# ============================================================
# GRAPH 3 - LOCATION
# ============================================================

barplot(
  location_frequency,
  main = "Swiggy Orders by Location",
  xlab = "Location",
  ylab = "Number of Orders",
  las = 2
)


# ============================================================
# GRAPH 4 - ORDER TIME
# ============================================================

barplot(
  time_frequency,
  main = "Swiggy Orders by Time",
  xlab = "Order Time",
  ylab = "Number of Orders"
)


# ============================================================
# GRAPH 5 - CUSTOMER RATINGS
# ============================================================

barplot(
  rating_frequency,
  main = "Swiggy Customer Ratings",
  xlab = "Rating",
  ylab = "Number of Customers"
)
