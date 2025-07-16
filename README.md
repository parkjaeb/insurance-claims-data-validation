# Insurance Claims Data Validation Project

This project simulates how a data analyst validates and analyzes insurance claims data using **PostgreSQL**, applying the same data quality checks and business thinking used by real-world analytics teams. The goal is to identify errors, inconsistencies, and insights that can inform fraud detection and process improvement.

---

## 1. Executive Summary

Insurance companies handle thousands of claims across different types: auto, property, health, and life. Accurate data is critical for preventing fraud, reporting financials, and managing risk.

This project demonstrates how SQL can be used to:
- Clean and validate raw claims data
- Identify common data quality issues (missing payouts, overpayments)
- Summarize key metrics by claim type and status
- Support reporting and decision-making through structured outputs

---

## 2. Business Problem

Real-world insurance datasets are often messy:
- Claims may be missing payout amounts
- Approved payouts might exceed the original claim amount
- Duplicate claim entries may exist
- Submission trends and claim statuses can go unnoticed

This project simulates the steps a data analyst would take to ensure the data is reliable before it’s passed to finance, fraud, or operations teams.

---

## 3. Data Description

A mock dataset of 100 insurance claims was generated, with the following columns:

| Column Name      | Description                          |
|------------------|--------------------------------------|
| Claim_ID         | Unique identifier for each claim     |
| Customer_ID      | Customer making the claim            |
| Date_Submitted   | When the claim was filed             |
| Claim_Amount     | Amount requested by the customer     |
| Claim_Type       | Category: Auto, Health, Property, etc. |
| Status           | Claim status: Approved, Pending, Denied |
| Payout_Amount    | Amount actually paid to customer     |
| Notes            | Internal remarks about the claim     |

---

## 4. Methods & Validation Steps

Using PostgreSQL and SQL scripts, the following checks and transformations were applied:

- **Cleaning**
  - Standardized `Claim_Type` casing
  - Trimmed whitespace in `Customer_ID`
  - Removed negative or zero claim amounts

- **Validation**
  - Approved claims missing payout amounts
  - Payouts that exceeded the claimed amount
  - Duplicate claim IDs
  - NULL customer IDs

- **Summarization**
  - Total claims by type and month
  - Average claim vs. payout by status
  - Total payouts by customer

All SQL scripts are stored in the `/sql/` folder and can be run in order.

---

## 5. Key Findings

- 6 approved claims had no payout amount listed
- 2 claims had payouts greater than the original claim amount
- Several customers had repeat claims — one with a total payout over \$20,000
- Health claims had the highest average payout per claim

---

## 6. Recommendations

- Automatically flag approved claims with missing or excessive payouts
- Require stricter validation on `Claim_Amount` and `Payout_Amount` fields during data entry
- Add audit logs to track resubmitted or duplicate claims by the same customer

---

## 7. Tools Used

- PostgreSQL (via `psql`)
- SQL for cleaning, validation, and summaries
- Excel for pivot tables and final review
- VS Code + GitHub for development and documentation

---

## 📁 Folder Structure