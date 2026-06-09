# ⚡ VoltShift: User Retention & Revenue Strategy

**Role:** Business Analyst / Business Data Analyst  
**Industry:** ClimateTech / Mobility SaaS  
**Tech Stack:** Python, SQL (BigQuery), Looker Studio, Google Sheets, Agile (User Stories)

## 📌 Project Overview
**VoltShift** is a European ClimateTech application that tracks user transportation (biking, public transit, EV) and calculates CO2 emissions saved. Users earn "GreenPoints" to redeem at local partner cafes. 

**The Business Problem:** Data indicated a severe drop in active users after their first 30 days, leading to significant Monthly Recurring Revenue (MRR) churn, particularly among the Free tier users.
**The Solution:** Proposed, modeled, and mapped a "7-Day Streak Bonus" gamification feature to incentivize early habit formation, increasing target retention by 15% and generating a projected 275% ROI.

---

## 🛠️ Tech Stack & Methodologies
* **Data Engineering:** Python (`pandas`, `numpy`) for mock dataset generation.
* **Data Analysis:** Google BigQuery (Advanced SQL, Cohort Analysis, Revenue Churn).
* **Business Intelligence:** Looker Studio (Interactive Dashboards, Calculated Fields).
* **Financial Strategy:** Google Sheets (ROI Modeling, Cost/Benefit Analysis).
* **Product Management:** Agile Methodology, User Stories, Acceptance Criteria (BDD format).
* **Quality Assurance:** Process Mapping, User Acceptance Testing (UAT).

---

## 📂 Project Phases

### Phase 1: Data Generation (Python)
Created a realistic, weighted dataset of 1,000 European users and their trip logs over a 6-month period. The script intentionally baked in a 30-day retention cliff and mapped users across various subscription tiers (Free, Basic, Premium) and demographics to allow for cohort analysis.
* **File:** `data_generation.py`
* **Outputs:** `users.csv`, `trips.csv`

### Phase 2: Data Exploration & Cohort Analysis (SQL)
Wrote advanced SQL queries in BigQuery to identify the root cause of revenue leakage. 
* Aggregated `max_active_days` to prove the 30-day drop-off.
* Conducted Demographic Cohort Analysis to identify which age/gender groups retained best.
* Calculated exact Monthly Revenue Lost due to churned users.
* **File:** `retention_analysis.sql`

### Phase 3: Executive BI Dashboard (Looker Studio)
Designed a one-page interactive Looker Studio dashboard for Product and Executive stakeholders. 
* Implemented cross-filtering for Country, Plan Tier, and Gender.
* Created custom calculated metrics (e.g., Global Retention Rate %).
* Visualized the drop-off curve and demographic heatmaps.

### Phase 4: Financial ROI Modeling (Google Sheets)
Built a dynamic financial model to prove the business case for the engineering effort.
* **Baseline vs. Target:** Modeled the financial impact of increasing Free tier retention from 20% to 35%.
* **Cost Analysis:** Factored in the unit cost ($2.00) of subsidizing the partner cafe rewards.
* **Result:** Proved that investing $450 in rewards would yield over $1,200 in net profit (275% ROI) by saving users with a $15 Lifetime Value (LTV).

### Phase 5: Agile Requirements (User Stories)
Translated the approved business strategy into actionable requirements for the development team using standard Agile formats.
* *Example:* **As a** Free-tier user, **I want to** see a visual tracker of my consecutive logged trips, **So that** I know how close I am to earning my 7-day bonus reward.

### Phase 6: Process Mapping & UAT
Created visual system logic flowcharts to map out edge cases (e.g., what happens if a user logs two trips in one day? What if they miss a day?). Authored a User Acceptance Testing (UAT) matrix to ensure bug-free deployment.

---

## 📈 Business Impact
By combining data analytics with product strategy, this project successfully:
1. Identified a critical retention bottleneck costing the company MRR.
2. Formulated a data-backed product feature to solve the bottleneck.
3. Quantified the engineering effort, proving a **275% Return on Investment**.
4. Delivered clear, testable software requirements for immediate sprint planning.

---

## 📬 Contact
**Created by:** Christopher Bonnin  
**Email:** chrisbit.carrington@gmail.com  
**LinkedIn:** [Christopher Bonnin](https://www.linkedin.com/in/christopher-bonnin-a08a95197/)
