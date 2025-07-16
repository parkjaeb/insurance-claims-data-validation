-- Standardize claim type capitalization
UPDATE insurance_claims
SET Claim_Type = INITCAP(Claim_Type);

-- Trim whitespace from Customer_ID
UPDATE insurance_claims
SET Customer_ID = TRIM(Customer_ID);

-- Fix negative or zero claim amounts
UPDATE insurance_claims
SET Claim_Amount = NULL
WHERE Claim_Amount <= 0;