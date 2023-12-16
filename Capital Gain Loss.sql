SELECT stock_name, SUM(CASE WHEN operation = 'Sell' THEN price END) - SUM(CASE WHEN operation = 'Buy' THEN price END) as capital_gain_loss
FROM Stocks
GROUP BY stock_name;
