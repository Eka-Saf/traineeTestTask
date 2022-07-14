//версия №1:

SELECT
	ROUND((Orders.order_id / COUNT(Orders.order_id) OVER (PARTITION BY Promocodes.promocode_id)) * 100,2) AS persent
FROM
	Promocodes
INNER JOIN
	Orders ON Orders.promocode_id = Promocodes.promocode_id

//версия №2:

SELECT
	ROUND((Orders.order_id / COUNT(Orders.order_id) OVER (PARTITION BY Promocodes.discount)) * 100,2) AS persent
FROM
	 Orders
INNER JOIN
	Promocodes ON Promocodes.promocode_id = Orders.promocode_id
