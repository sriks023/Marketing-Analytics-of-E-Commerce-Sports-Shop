SELECT
    *
FROM dbo.customer_journey;
-- ^ end first statement with semicolon

WITH DuplicateRecords AS (
    SELECT
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,
        Stage,
        Action,
        Duration,
        ROW_NUMBER() OVER(
            PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action
            ORDER BY JourneyID
        ) AS row_num
    FROM dbo.customer_journey
)
SELECT 
*
FROM DuplicateRecords
where row_num > 1
ORDER BY JourneyID;

select
    JourneyID,
    CustomerID,
    ProductID,
    VisitDate,
    Stage,
    Action,
    Coalesce(Duration, avg_duration) AS Duration
From
   (
    select
    JourneyID,
    CustomerID,
    ProductID,
    VisitDate,
    Upper(Stage) As Stage,
    Action,
    Duration,
    AVG(Duration) OVER (Partition By VisitDate) as avg_duration,
    ROW_Number() over(
          partition by CustomerID, ProductID, VisitDate, Upper(Stage), Action
          ORDER BY JourneyID
          ) AS row_num
    FROM
        dbo.customer_journey
   ) AS Subquery
Where 
    row_num = 1;

