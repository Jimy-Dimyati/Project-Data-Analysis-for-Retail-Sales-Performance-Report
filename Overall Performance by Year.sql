SELECT
    YEAR(order_date) AS years,
    ROUND(SUM(sales), 2) AS sales,
    COUNT(order_quantity) AS number_of_order
FROM
    dqlab_sales_store
WHERE
    YEAR(order_date) BETWEEN 2009
    AND 2012
    AND order_status LIKE 'Order Finished'
GROUP BY
    years
ORDER BY
    years;
