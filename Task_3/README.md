# Marketing Funnel & Conversion Performance Analysis
### Data Science & Analytics – Task 3 (2026) | Future Interns

---

## Overview

This project analyzes a **bank marketing campaign dataset** to understand how customers move through a marketing funnel — from initial contact to final conversion (term deposit subscription). The goal is to identify drop-off points, key performance drivers, and actionable recommendations to improve conversion rates.

---

## Dataset

- **Source:** Bank Marketing Dataset (UCI Machine Learning Repository)
- **File:** `bank-additional-full.csv`
- **Records:** 41,188 rows × 21 columns
- **Separator:** Semicolon (`;`)
- **Target variable:** `y` — whether the client subscribed to a term deposit (`yes` / `no`)

### Key Features

| Feature | Description |
|---|---|
| `age` | Client age |
| `job` | Type of job |
| `education` | Education level |
| `contact` | Contact communication type (cellular / telephone) |
| `month` | Last contact month of year |
| `duration` | Last contact duration (seconds) |
| `campaign` | Number of contacts in this campaign |
| `poutcome` | Outcome of the previous marketing campaign |
| `y` | **Target:** subscribed to term deposit? |

---

## Project Structure

```
marketing-funnel-analysis/
│
├── bank-additional-full.csv      # Raw dataset
├── analysis.py                   # Python analysis script
├── analysis.ipynb                # Jupyter Notebook (recommended)
├── dashboard.html                # ⭐ Interactive dashboard (open in browser)
├── requirements.txt              # Python dependencies
├── README.md                     # This file
│
└── outputs/                      # Generated static visualizations
    ├── 01_funnel_chart.png
    ├── 02_conversion_by_job.png
    ├── 03_monthly_funnel.png
    ├── 04_dropoff_analysis.png
    ├── 05_channel_education.png
    ├── 06_duration_impact.png
    ├── 07_campaign_frequency.png
    ├── 08_poutcome_age.png
    └── 09_kpi_dashboard.png
```

---

## Interactive Dashboard

The file `dashboard.html` is a fully interactive dashboard — no server or installation required.

**To view it:**
- Download `dashboard.html`
- Double-click to open in any browser (Chrome, Firefox, Edge)
- All charts are interactive (hover, zoom, filter)

---

## Setup & Installation

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/marketing-funnel-analysis.git
cd marketing-funnel-analysis

# Install dependencies
pip install -r requirements.txt

# Run the Jupyter Notebook (recommended)
jupyter notebook analysis.ipynb

# OR run the Python script directly
python analysis.py
```

---

## How to Upload to GitHub

### Option 1 — Upload via GitHub Website (Easiest)

1. Go to [github.com](https://github.com) and sign in
2. Click the **"+"** button (top right) → **"New repository"**
3. Name it `marketing-funnel-analysis` → Click **"Create repository"**
4. Click **"uploading an existing file"**
5. Drag and drop ALL files from this folder
6. Write a commit message: `Add Marketing Funnel Analysis - Task 3`
7. Click **"Commit changes"**

### Option 2 — Using Git (Command Line)

```bash
git init
git add .
git commit -m "Add Marketing Funnel Analysis - Task 3"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/marketing-funnel-analysis.git
git push -u origin main
```

---

## Marketing Funnel Stages

The analysis models the customer journey through 5 funnel stages:

| Stage | Count | % of Total |
|---|---|---|
| Leads Contacted | 41,188 | 100.0% |
| Call Connected | 41,184 | 100.0% |
| Engaged (≥3 min call) | 20,600 | 50.0% |
| Warm Leads (prior contact) | 5,625 | 13.7% |
| **Subscribed (Converted)** | **4,640** | **11.3%** |

---

## Key Findings

### Overall Performance
- **Overall Conversion Rate:** 11.27%
- **Total Subscribers:** 4,640 out of 41,188
- **Best Month:** March (highest conversion rate)
- **Top Job Segment:** Students

### Channel Performance
- **Cellular** contact (14.7% conversion) significantly outperforms **telephone**

### Call Duration Impact
- Average call for **converted** customers: **9.2 minutes**
- Average call for **non-converted** customers: **3.7 minutes**
- Calls over 3 minutes are ~4x more likely to convert

### Previous Campaign Outcome
- Prospects with a **successful prior outcome** convert at **65%+**
- First-time contacts convert at ~11%

---

## Visualizations

| Chart | Description |
|---|---|
| `01_funnel_chart.png` | Marketing funnel with stage-by-stage breakdown |
| `02_conversion_by_job.png` | Conversion rate across all job categories |
| `03_monthly_funnel.png` | Contact volume and conversion rate by month |
| `04_dropoff_analysis.png` | Drop-off percentage at each funnel stage |
| `05_channel_education.png` | Conversion by contact channel and education level |
| `06_duration_impact.png` | Call duration vs. conversion (box plot + bucketed rates) |
| `07_campaign_frequency.png` | Impact of contact frequency on conversion |
| `08_poutcome_age.png` | Previous outcome and age group conversion rates |
| `09_kpi_dashboard.png` | KPI summary dashboard |

---

## Recommendations

1. **Focus on cellular channel** — higher conversion with less wasted effort
2. **Train agents to extend calls past 3 minutes** — dramatically increases conversion likelihood
3. **Prioritize warm leads** — prospects with prior successful outcomes convert at 65%+
4. **Cap contacts at 3 per prospect** — diminishing returns after that point
5. **Schedule campaigns in March, September, October** — historically best months
6. **Target retired and student segments** with tailored messaging
7. **Invest in re-engagement strategies** for warm leads in the funnel

---

## Technologies Used

- **Python 3.11**
- **Pandas** — data loading, cleaning, and aggregation
- **NumPy** — numerical operations
- **Matplotlib** — visualizations
- **Seaborn** — statistical plots
- **Jupyter Notebook** — interactive analysis

---

## Author

Completed as part of the **Future Interns Data Science & Analytics Internship Program (2026)**

---

## License

This project is for educational and internship purposes.
