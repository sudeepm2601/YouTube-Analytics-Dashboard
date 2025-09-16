# 📊 YouTube Trending Analytics Dashboard

This project analyzes **YouTube trending videos data** (from Kaggle) using **MySQL + Power BI**.  
The goal is to extract insights about trending videos, channels, and categories and visualize them in a dashboard.

---

## 🔹 Project Workflow

1. **Dataset Preparation**
   - Used Kaggle dataset: `ind_csv_sql.csv`
   - Cleaned and stored the dataset in MySQL (`youtube_trending` table)

2. **SQL Analysis**
   - Wrote queries to explore:
     - Top 10 videos by views
     - Top 10 channels by trending appearances
     - Category distribution
     - Engagement ratio = (Likes + Comments) / Views

3. **Export Data**
   - Processed results exported to Excel (`youtube_dashboard_data.xlsx`) for easy Power BI integration

4. **Power BI Dashboard**
   - Created KPI cards for total views, likes, and comments
   - Built bar charts for **Top 10 Videos** and **Top 10 Channels**
   - Pie chart for **Category Distribution**
   - Table for **Top Engagement Videos**

---

## 🔹 Tools & Technologies
- **MySQL** → Data storage and SQL queries  
- **Power BI** → Dashboard & visualization  
- **Excel** → Intermediate file for clean import into Power BI  

---

## 🔹 Next Steps
- Finalize Power BI `.pbix` dashboard layout  
- Add screenshots of visuals (KPIs, bar charts, pie chart, engagement table)  
- Publish interactive dashboard  

---

## 🔹 Dataset
- Source: [Kaggle – YouTube Trending Video Dataset](https://www.kaggle.com/datasets/datasnaek/youtube-new)

---

## 📌 Project Structure

