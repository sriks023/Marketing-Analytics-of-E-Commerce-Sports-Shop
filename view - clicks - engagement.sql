SELECT
*
FROM 
     dbo.engagement_data
SELECT
    EngagementID,
    ContentID,
    CampaignID,
    ProductID,
    UPPER(REPLACE(ContentType, 'Social media', 'SOCIAL MEDIA')) AS ContentType,
    LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views,
    RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks,
    Likes,   -- no comma after this if it is not the last column
    FORMAT(CONVERT(DATE, EngagementDate), 'dd.MM.yyyy') AS EngagementDate
FROM dbo.engagement_data
WHERE ContentType <> 'Newsletter';
