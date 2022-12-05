# bq-ecommerce-query
Query `data-to-insights.ecommerce.rev_transactions` using Google Bigquery to derives the total transactions per date and country based on the channel grouping.

[Query Public Link](https://console.cloud.google.com/bigquery?sq=554179630584:0cbc68ac19b643d5b12242a35ee90c21) or as shown on [`query_command.sql`](https://github.com/zeenfts/bq-ecommerce-query/blob/main/query_command.sql) file.

Info:

1. You need to have [Google Cloud SDK](https://cloud.google.com/sdk#section-2) locally to eb able to execute on local terminal.

2. Open terminal on this repo folder on your computer (CD to this directory)

3. Run this on your terminal `bq query --use_legacy_sql=False "query_command.sql" 
`
