# Conversion Funnel Insights using SQL

This project analyzes a marketing conversion funnel from **Ad View → Ad Click → Add to Cart → Purchase** using SQL. It tracks user drop-off at each stage and calculates conversion rates to help businesses optimize their digital marketing and user experience.

---

##  Dataset Structure

**Table Name:** `funnel_data`

**Columns:**
- `user_id` (unique identifier for each user)
- `event` (categorical: `'ad_view'`, `'ad_click'`, `'add_to_cart'`, `'purchase'`)
- `event_time` (timestamp of event)

---

##  Analysis Goals

- Count the number of unique users at each stage of the funnel
- Measure drop-off rates and conversion percentages
- Provide actionable insights for performance marketing optimization

---

##  Key Metrics Calculated

1. **Total Ad Views**
2. **Ad Clicks**
3. **Add to Cart Events**
4. **Purchases**
5. **Conversion Rates**:
   - Click-Through Rate (CTR)
   - Add-to-Cart Rate
   - Purchase Rate

---

##  Tools Used

- SQL (PostgreSQL / MySQL syntax compatible)
- VS Code for script management

---

##  Files Included

- `conversion-funnel-analysis.sql` — Full query set with comments
-  `sample_funnel_data.csv` — Add mock data if needed

---

##  Example Use Case

Useful for marketing teams, data analysts, and product managers to understand:
- Which part of the funnel leaks users
- Where to optimize ad spend or UX




