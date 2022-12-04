-- https://console.cloud.google.com/bigquery?sq=554179630584:0cbc68ac19b643d5b12242a35ee90c21
-- [public link^]
---------------------------------------------------------------------------------------------

WITH transact_ecom AS (
  SELECT
    channelGrouping channel,
    ARRAY_AGG(
      STRUCT(crt.date, geoNetwork_country AS country)
      ORDER BY crt.date ASC, geoNetwork_country ASC
    ) level, 
    SUM(totals_transactions) transact_per_level_channel, 
  FROM `data-to-insights.ecommerce.rev_transactions` crt
  WHERE NOT geoNetwork_country = "(not set)" AND NOT channelGrouping = "(Other)" 
  GROUP BY channelGrouping, crt.date, geoNetwork_country
), full_total_per_channel AS(
  SELECT
    channelGrouping channel, 
    SUM(totals_transactions) total_transact_per_channel
  FROM `data-to-insights.ecommerce.rev_transactions` 
  GROUP BY channelGrouping
)
-- created by Difagama
SELECT 
  total_transact_per_channel,
  te.channel,
  level,
  transact_per_level_channel
FROM transact_ecom te
INNER JOIN full_total_per_channel ftc
ON te.channel = ftc.channel
ORDER BY
  total_transact_per_channel DESC,
  transact_per_level_channel DESC