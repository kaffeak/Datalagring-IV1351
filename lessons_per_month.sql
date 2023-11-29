SELECT month.name AS month,
	COUNT(*) AS total,
	COUNT(CASE WHEN price.type = 'individual' THEN 1 ELSE NULL END) AS individual,
	COUNT(CASE WHEN price.type = 'group' THEN 1 ELSE NULL END) AS group,
	COUNT(CASE WHEN price.type = 'ensemble' THEN 1 ELSE NULL END) AS ensemble
FROM lesson
JOIN month ON EXTRACT(MONTH FROM lesson.date_of_lesson) = month.id
JOIN price ON lesson.lesson_price_id = price.id
GROUP BY month.name
ORDER BY month.id
