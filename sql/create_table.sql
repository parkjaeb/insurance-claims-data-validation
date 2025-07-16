CREATE TABLE insurance_claims (
    Claim_ID INT PRIMARY KEY,
    Customer_ID VARCHAR(10),
    Date_Submitted DATE,
    Claim_Amount DECIMAL(10, 2),
    Claim_Type VARCHAR(50),
    Status VARCHAR(20),
    Payout_Amount DECIMAL(10, 2),
    Notes TEXT
);
