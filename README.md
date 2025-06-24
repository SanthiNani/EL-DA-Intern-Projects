# 🛒 Retail Business Performance & 🛍️ Customer Lifetime Value (LTV) Prediction

This repository contains **two end-to-end data science projects** for retail analytics:
1️⃣ **Retail Business Performance & Profitability Analysis**
2️⃣ **Customer Lifetime Value (LTV) Prediction**

Both projects aim to help retailers make data-driven decisions using transactional data.

---

## 🚀 Project 1: Retail Business Performance & Profitability Analysis

### 🎯 **Objective**

Analyze transactional retail data to:

* Identify profit-draining categories
* Optimize inventory turnover
* Discover seasonal trends and patterns

### 💻 **Tools**

* Python (Pandas, Seaborn, Matplotlib)
* SQL
* Tableau / Power BI (for dashboarding)

### ⚙ **Key Steps**

✅ Import & clean data (handle missing/null values)
✅ Calculate profit margins by category & sub-category
✅ Analyze inventory turnover & days in inventory
✅ Visualize seasonal trends
✅ Build dashboards (Tableau / Power BI)

### 📈 **Deliverables**

* Python scripts / notebooks for analysis
* SQL queries for calculations
* Tableau or Power BI dashboard files
* Summary insights document

---

## 🚀 Project 2: Customer Lifetime Value (LTV) Prediction

### 🎯 **Objective**

Predict the **lifetime value** of customers using their purchase history to aid in targeted marketing.

### 💻 **Tools**

* Python (Pandas, Numpy, Seaborn, Matplotlib, XGBoost, scikit-learn)
* Jupyter Notebook

### ⚙ **Key Steps**

✅ Preprocess purchase history (remove cancellations, handle nulls)
✅ Feature engineering:

* **Recency**: Days since last purchase
* **Frequency**: Unique invoice count
* **AOV**: Average order value

✅ Train regression model (XGBoost)
✅ Validate model (MAE, RMSE)
✅ Segment customers (High, Medium, Low LTV)
✅ Save model, predictions, and visualizations

### 📈 **Deliverables**

* `notebooks/ltv_prediction.ipynb`: Full code notebook
* `models/ltv_xgboost_model.pkl`: Saved trained model
* `output/ltv_predictions.csv`: Final LTV predictions + segments
* `output/*.png`: All visualizations (feature distributions, actual vs predicted, feature importance, segment distribution)

---

## 📂 **Repository Structure**

```
retail-analytics-projects/
├── data/
│   ├── online_retail_II.csv        # ⚠ Not included — please download manually
│   └── (other sample retail data if needed)
├── models/
│   └── ltv_xgboost_model.pkl        # Trained model file
├── notebooks/
│   ├── retail_performance_analysis.ipynb
│   └── ltv_prediction.ipynb
├── output/
│   ├── ltv_predictions.csv
│   ├── feature_distributions.png
│   ├── actual_vs_predicted.png
│   ├── feature_importance.png
│   └── ltv_segments_distribution.png
├── dashboards/
│   └── retail_dashboard.twbx        # Tableau dashboard (or .pbix for Power BI)
├── requirements.txt
├── README.md
└── .gitignore
```

---

## 📥 **How to Run**

### 1️⃣ Clone the repo

```bash
git clone https://github.com/your-username/retail-analytics-projects.git
cd retail-analytics-projects
```

### 2️⃣ Download data

* Retail data: [Kaggle - Online Retail II](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci)
* Place in `data/` folder

### 3️⃣ Install dependencies

```bash
pip install -r requirements.txt
```

### 4️⃣ Run notebooks

```bash
jupyter notebook notebooks/retail_performance_analysis.ipynb
jupyter notebook notebooks/ltv_prediction.ipynb
```

---

## 🛠 **Tech Stack**

* Python: `pandas`, `numpy`, `matplotlib`, `seaborn`, `xgboost`, `scikit-learn`, `joblib`
* SQL: for querying large datasets
* Tableau / Power BI: dashboards
* Jupyter notebooks

---

## ⚡ **Outputs**

* 📊 Interactive dashboards for retail KPIs
* 📈 Saved plots: customer behavior distributions, model evaluation
* ✅ Model file: `models/ltv_xgboost_model.pkl`
* 📁 CSV predictions: `output/ltv_predictions.csv`

---

## 📌 **Notes**

* This repo does not include raw datasets (please download from Kaggle and place in `data/`).
* Large outputs and models should be gitignored.

---

## 🤝 **Contributing**

Feel free to fork, raise issues, or submit PRs to improve or extend these projects!

---

## 📜 **License**

MIT License — see `LICENSE`.

---

## 📌 **.gitignore suggestion**

```bash
data/*
models/*
output/*
*.pyc
.ipynb_checkpoints/
.DS_Store
Thumbs.db
```
