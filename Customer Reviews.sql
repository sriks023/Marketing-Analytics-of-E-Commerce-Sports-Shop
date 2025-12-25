SELECT TOP 10 * FROM dbo.customer_reviews;
SELECT
    reviewid,
    customerid,
    productid,
    reviewdate,
    rating,
   REPLACE(reviewtext,'  ',' ') as reviewtext
from 
    dbo.customer_reviews;