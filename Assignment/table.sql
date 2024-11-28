-- Assignment 2
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,                
    CustomerName VARCHAR(255),             
    TotalAmount DECIMAL(10, 2),           
    City VARCHAR(255),                    
    ProductDescription VARCHAR(255),       
    IsReturnable BOOLEAN                  
);
