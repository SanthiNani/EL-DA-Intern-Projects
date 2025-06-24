# 🛍️ Customer Lifetime Value (CLTV) Prediction

This project builds a regression model to predict the **Customer Lifetime Value (CLTV)** based on purchase behavior from the Online Retail II dataset. The model helps in identifying high-value customers for targeted marketing.

---

## 🎯 Objective
Predict the lifetime value (LTV) of customers using features derived from purchase history:
- **Recency**: Days since last purchase
- **Frequency**: Number of unique invoices
- **AOV**: Average Order Value (Monetary / Frequency)

The goal is to segment customers into High, Medium, and Low LTV groups.

---

## 📂 Project Structure
```

customer-ltv-prediction/
├── data/
│   └── online\_retail\_II.csv            # ⚠ Not included (please download and place here)
├── models/
│   └── ltv\_xgboost\_model.pkl            # Trained model
├── notebooks/
│   └── ltv\_prediction.ipynb             # Full Jupyter notebook with code
├── output/
│   ├── ltv\_predictions.csv              # Final LTV predictions with segments
│   ├── feature\_distributions.png        # Recency, Frequency, AOV distributions
│   ├── actual\_vs\_predicted.png          # Predicted vs Actual LTV
│   ├── feature\_importance.png           # XGBoost feature importance
│   └── ltv\_segments\_distribution.png    # Segment distribution
├── requirements.txt                     # Python dependencies
└── README.md                            # Project documentation

````

---

## 🚀 How to Run

### 1️⃣ Clone this repo
```bash
git clone https://github.com/your-username/customer-ltv-prediction.git
cd customer-ltv-prediction
````

### 2️⃣ Download dataset

* Source: [Kaggle - Online Retail II UCI](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci)
* Save as `data/online_retail_II.csv`

### 3️⃣ Install dependencies

```bash
pip install -r requirements.txt
```

### 4️⃣ Run notebook

```bash
jupyter notebook notebooks/ltv_prediction.ipynb
```

or

```bash
jupyter nbconvert --execute --inplace notebooks/ltv_prediction.ipynb
```

---

## ⚡ Outputs

* `models/ltv_xgboost_model.pkl`: Saved trained model
* `output/ltv_predictions.csv`: Predicted LTV + customer segment
* `output/*.png`: All generated visualizations

---

## 🛠 Tech Stack

* Python (pandas, numpy)
* XGBoost, scikit-learn
* Seaborn, matplotlib
* Jupyter Notebook

---

## 📝 Notes

* Data is not included in the repo (due to size/license). Please download separately.
* Large files and output files should be gitignored (see `.gitignore`).

---

## 🤝 Contributing

Feel free to fork the repository, open issues, or submit pull requests.

---

## 📜 License

This project is licensed under the MIT License — see the `LICENSE` file for details.

```
