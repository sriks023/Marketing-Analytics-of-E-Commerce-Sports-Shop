# Marketing-Analytics-of-E-Commerce-Sports-Shop

##New Marketing Analytics Portfolio Project – SQL | Python | Power BI | Excel##

Over the last few weeks, I built an end‑to‑end marketing analytics solution that connects raw data to decisions.

🔹 Business Problem
An e‑commerce brand was struggling with:

Fluctuating conversion rates across the year

Falling social media engagement in some months

Mixed customer reviews with no structured sentiment view

🔹 Data & Tools

SQL – Cleaned and transformed customer journey, engagement, customer, product and reviews tables (joins, null handling, calculated columns like session duration).

Python (NLTK – VADER) – Ran sentiment analysis on review text to create:

Sentiment score (‑1 to 1)

Sentiment category (Positive / Negative / Mixed)

Sentiment buckets for easier reporting and filtering.

Excel/CSV – Stored enriched reviews as fact_customer_reviews_with_sentiment and used it as a clean input to BI.

Power BI – Built a star‑schema model (fact tables, dimensions, calendar table) and an interactive dashboard with DAX measures (clicks, views, likes, conversion rate, average rating).

🔹 What My Dashboard Shows
I designed a Market Analytics Dashboard with:

Top‑level KPIs:

Overall conversion rate: 9.5%

Average rating: 3.7 across products.
​

Total views ~9.1M, clicks ~1.8M, likes ~4.1L on social content.
​

Conversion analysis:

Monthly conversion rate trend (e.g., peaks above 16% in some months, dips near 6% in others).

Conversion rate by product – from ~5.5% for lower performers up to ~14–15% for top products like Hockey Stick and Ski Boots.
​

Engagement analysis:

Views, clicks and likes by month – strong volumes early in the year, with noticeable drop‑offs in specific months, but click/like volumes remain comparatively resilient.
​

Customer feedback:

Average rating by month – stable around 3.6–3.9 with room to move closer to 4.0.
​

Average rating by product – most products between 3.5–3.9, highlighting which items need experience improvements.
​

Interactivity:

Product slicer to instantly filter KPIs and charts by any sports product (e.g., Kayak, Ski Boots, Running Shoes, Yoga Mat).
​

🔹 Key Insights I Highlighted

Conversion performance is not uniform across months or products – a few products and periods are pulling overall numbers down.

Social media reach (views) drops in some months, but engagement quality (clicks/likes) stays relatively strong, suggesting a distribution/content reach issue rather than a pure content quality problem.
​

Ratings are consistently below a 4.0 target, so improving specific products and addressing themes from mixed/negative sentiment can directly lift perceived quality.

🔹 Business Actions I Proposed

Double‑down on high‑conversion products and months with strong performance using targeted campaigns and seasonal promotions.

Refresh and test new formats for low‑view months/content types while preserving elements that drive strong click/like rates.

Use sentiment buckets to prioritize fixes for mixed/negative reviews and track movement towards higher average ratings by product.

This project let me practice the full analytics workflow: business problem → SQL data prep → Python sentiment → Power BI modeling & DAX → executive‑level storytelling with a focused dashboard.
