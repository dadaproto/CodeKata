SELECT b.category, sum(s.sales) total_sales
FROM book AS b
JOIN book_sales AS s USING (BOOK_ID)
WHERE year(s.sales_date) = 2022 AND month(s.sales_date) = 1
GROUP BY category
ORDER BY category