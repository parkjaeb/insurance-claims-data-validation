-- 1. Total number of claims by type
SELECT Claim_Type, COUNT(*) AS total_claims
FROM insurance_claims
GROUP BY Claim_Type;

-- 2. Average claim and payout amounts by status
SELECT Status,
       ROUND(AVG(Claim_Amount), 2) AS avg_claim,
       ROUND(AVG(Payout_Amount), 2) AS avg_payout
FROM insurance_claims
GROUP BY Status;

-- 3. Monthly claim submission trend
SELECT TO_CHAR(Date_Submitted, 'YYYY-MM') AS Month, COUNT(*) AS Claims_Submitted
FROM insurance_claims
GROUP BY Month
ORDER BY Month;

-- 4. Total payout per customer
SELECT Customer_ID, SUM(Payout_Amount) AS total_payout
FROM insurance_claims
WHERE Payout_Amount IS NOT NULL
GROUP BY Customer_ID
ORDER BY total_payout DESC;