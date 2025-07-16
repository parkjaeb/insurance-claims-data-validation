-- 1. Check for duplicate Claim_IDs
SELECT Claim_ID, COUNT(*) AS count
FROM insurance_claims
GROUP BY Claim_ID
HAVING COUNT(*) > 1;

-- 2. Find approved claims with missing payout
SELECT *
FROM insurance_claims
WHERE Status = 'Approved' AND Payout_Amount IS NULL;

-- 3. Check if payout exceeds claim amount
SELECT *
FROM insurance_claims
WHERE Status = 'Approved' AND Payout_Amount > Claim_Amount;

-- 4. Check for NULL or blank Customer_IDs
SELECT *
FROM insurance_claims
WHERE Customer_ID IS NULL OR Customer_ID = '';