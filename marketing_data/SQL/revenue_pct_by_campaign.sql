Select c.campaign_id, c.campaign_name,
		ROUND(100*SUM(REVENUE)/(SELECT SUM(REVENUE) FROM campaign_daily_metrics),2) AS rev_pct
		FROM campaigns c
		INNER JOIN campaign_daily_metrics
		USING(campaign_id)

GROUP BY campaign_id
ORDER BY rev_pct desc