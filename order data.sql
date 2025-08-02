create schema online_and_store_details;
use online_and_store_details;
CREATE TABLE OnlineSales (
    SaleID INT,
    ProductName VARCHAR(50),
    Quantity INT,
    SaleDate DATE
);
CREATE TABLE StoreSales (
    SaleID INT,
    ProductName VARCHAR(50),
    Quantity INT,
    SaleDate DATE
);
-- Insert into OnlineSales
INSERT INTO OnlineSales VALUES
(1, 'Laptop', 2, '2024-01-05'),
(2, 'Mouse', 5, '2024-01-07'),
(3, 'Keyboard', 3, '2024-01-09'),
(4, 'Laptop', 2, '2024-01-10');

-- Insert into StoreSales
INSERT INTO StoreSales VALUES
(5, 'Laptop', 1, '2024-01-03'),
(6, 'Mouse', 5, '2024-01-07'),  -- duplicate with OnlineSales
(7, 'Monitor', 2, '2024-01-12'),
(8, 'Keyboard', 3, '2024-01-09');  -- duplicate with OnlineSales
select productname,quantity,saledate from onlinesales
union
select productname,quantity,saledate from storesales;
select productname,quantity,saledate from onlinesales
union all
select productname,quantity,saledate from storesales;
select count(*) as totaluniquesales from (
select productname,quantity,saledate from onlinesales
union 
select productname,quantity,saledate from storesales
) as combinedsales;
select count(*) as totaluniquesales from (
select productname,quantity,saledate from onlinesales
union all
select productname,quantity,saledate from storesales
) as combinedsales;
select productname,sum(quantity) as totalqunatity from(
select productname,quantity,saledate from onlinesales
union all 
select productname,quantity,saledate from storesales
) as comnbinedsales
group by productname
order by totalqunatity desc;
