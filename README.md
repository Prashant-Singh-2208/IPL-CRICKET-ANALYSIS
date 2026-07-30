#  IPL Cricket Data Analysis

![Python](https://img.shields.io/badge/Python-3.x-blue?style=flat&logo=python)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?style=flat&logo=postgresql)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-green?style=flat)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat)

---

##  Project Overview
A comprehensive data analysis of the **Indian Premier League (IPL)** cricket tournament using Python and PostgreSQL. This project dives deep into match statistics, player performance, team trends, and venue insights from IPL seasons to uncover patterns that drive match outcomes.

---

##  Business Questions Answered
1. Which team has the highest win percentage?
2. Who are the top 10 run scorers across all seasons?
3. Which player has taken the most catches?
4. Which venue has hosted the most matches?
5. What is the win percentage of teams batting first vs second?
7. What is the average score , maximum score and minimum score of the Top batters ?
8. Which team has played and won Super Over?
9. How does toss decision affect match outcome?
10. Who are the top 5 Player of the Match award winners?

---

##  Dataset
**Source:** [Kaggle — IPL Complete Dataset](https://www.kaggle.com/datasets/patrickb1912/ipl-complete-dataset-20082020)

| File | Description | Rows |
|---|---|---|
| matches.csv | Match-level data | ~900 |
| deliveries.csv | Ball-by-ball data | ~179,000 |

---

##  Tools Used
| Tool | Purpose |
|---|---|
| PostgreSQL | Data storage + SQL analysis |
| Python (Pandas) | Data cleaning + EDA |
| Matplotlib + Seaborn | Visualizations |
| Jupyter Notebook | Analysis environment |

---

##  Key Visualizations
1. Top 10 Teams by Win Count (Bar Chart)
2. Top 10 Run Scorers (Horizontal Bar)
3. Top 10 Wicket Takers (Bar Chart)
4. Toss Decision vs Match Outcome (Count Plot)
5. Season-wise Average Score Trend (Line Chart)

---

##  Key Insights from Deliveries
- **Caught** is most common type of dismissal and **Jos Buttler** caught most catches.
- **Retired hurt** is least type of dismissal.
- **Tilak Verma** is fastest run scorrer in death overs.
- **Abhishek Sharma**fastest run scorrer in powerplay.
- **Lungi Ngidi** has best economy in death overs.
- **Bhuvneshwar Kumar** has best economy in powerplay.
##  Key Insights from Matches
- **Punjab Kings** has the highest win percentage.
- **Arun Jaitley Stadium, Delhi** venue produces highest first innings scores.
- **Josh Hazlewood** most POTM(player of the match).
- **Kolkata Knight Riders** won the Super over.
- Most of the matches are won **Chasing** the target.
- It was seen in most of the matches choosing **Bowling** actually leads winning the match ~58.82%.

---

##  Project Structure
```
IPL-CRICKET-ANALYSIS/
├── data/
│   ├── matches.csv
│   └── deliveries.csv
├── IPL.ipynb
├── ipl_queries.sql
└── README.md
```

---

##  How to Run
1. Clone the repo
2. Install: `pip install pandas matplotlib seaborn jupyter`
3. Run SQL queries in PostgreSQL
4. Open `IPL.ipynb` in Jupyter Notebook

---

##  Skills Demonstrated
-  SQL — aggregations, joins, window functions
-  Python — data cleaning + EDA
-  Sports analytics thinking
-  Data visualization

---

##  Author

**Prashant Singh**

M.Sc. Physics | Aspiring Data Analyst
Varanasi, India |  [GitHub](https://github.com/Prashant-Singh-2208)

