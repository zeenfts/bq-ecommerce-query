# bq-ecommerce-query
Query `data-to-insights.ecommerce.rev_transactions` using Google Bigquery to derives the total transactions per date and country based on the channel grouping.

[Query Public Link](https://console.cloud.google.com/bigquery?sq=554179630584:0cbc68ac19b643d5b12242a35ee90c21) or as shown on [`query_command.sql`](https://github.com/zeenfts/bq-ecommerce-query/blob/main/query_command.sql) file.

Info:

1. You need to have [Google Cloud SDK CLI](https://cloud.google.com/sdk#section-2) locally to be able to execute on local terminal.

2. Open terminal.

3. `gcloud auth login` (You must have [GCP account](https://www.google.com/url?sa=t&source=web&rct=j&url=https://console.cloud.google.com/home/dashboard%3Fhl%3Did&ved=2ahUKEwjg_u7JquH7AhUgU2wGHY3nC0MQFnoECBAQAQ&usg=AOvVaw0la7Kveq5-qsB4EoACiUqQ) & project id first).

4. `gcloud services list --available` then enable [BigQuery service](https://cloud.google.com/sdk/gcloud/reference/services/enable) if you can't find it in the list.

5. CD to this repo folder on your computer (change your directory).

6. Run this on your terminal `bq query --use_legacy_sql=False "query_command.sql". 
`

7. Check the result on the [Google Bigquery](https://www.google.com/url?sa=t&source=web&rct=j&url=https://console.cloud.google.com/bigquery&ved=2ahUKEwiN-_Gsq-H7AhUL0nMBHQ37D7wQFnoECA8QAQ&usg=AOvVaw2C78FdHLlrAJpHfkeMZwiH). 
