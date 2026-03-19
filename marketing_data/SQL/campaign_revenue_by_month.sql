SELECT campaign_name, TO_CHAR(date_trunc('month', date), 'YYYY-MM') AS month, SUM(revenue) AS revenue
FROM campaign_daily_metrics
JOIN campaigns
USING(campaign_id)
GROUP BY campaign_name, month
ORDER BY campaign_name;