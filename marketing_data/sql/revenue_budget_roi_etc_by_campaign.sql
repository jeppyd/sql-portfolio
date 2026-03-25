SELECT campaign_name, 
	SUM(revenue) AS total_revenue, 
	SUM(spend) AS expenses,
	MAX(budget) AS budget,
	round(SUM(spend)/MAX(budget)*100, 1) AS budget_utilization,
	ROUND((SUM(revenue)-SUM(spend))/SUM(spend)*100,1) AS roi

FROM campaign_daily_metrics
JOIN campaigns
USING(campaign_id)
GROUP BY campaign_name
ORDER BY roi DESC