-- https://console.cloud.google.com/bigquery?sq=554179630584:0cbc68ac19b643d5b12242a35ee90c21
-- [public link^]
------------------------------------------------------------------------------------------

WITH transact_ecom AS (
  SELECT
    channelGrouping,
    ARRAY_AGG(
      STRUCT(crt.date, geoNetwork_country AS country)
      ORDER BY crt.date ASC, geoNetwork_country ASC
    ) level, 
    SUM(totals_transactions) total_transactions, 
  FROM `data-to-insights.ecommerce.rev_transactions` crt
  WHERE NOT geoNetwork_country = "(not set)" AND NOT channelGrouping = "(Other)" 
  GROUP BY channelGrouping, crt.date, geoNetwork_country
)
-- created by Difagama
SELECT * FROM transact_ecom 
ORDER BY 
  channelGrouping ASC,
  total_transactions DESC