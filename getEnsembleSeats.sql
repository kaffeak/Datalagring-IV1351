SELECT 
        CASE
           WHEN EXTRACT(isodow FROM public.lesson.date_of_lesson) = 1 THEN 'Monday'
           WHEN EXTRACT(isodow FROM public.lesson.date_of_lesson) = 2 THEN 'Tuesday'
           WHEN EXTRACT(isodow FROM public.lesson.date_of_lesson) = 3 THEN 'Wednesday'
           WHEN EXTRACT(isodow FROM public.lesson.date_of_lesson) = 4 THEN 'Thursday'
           WHEN EXTRACT(isodow FROM public.lesson.date_of_lesson) = 5 THEN 'Friday'
           WHEN EXTRACT(isodow FROM public.lesson.date_of_lesson) = 6 THEN 'Saturday'
           WHEN EXTRACT(isodow FROM public.lesson.date_of_lesson) = 7 THEN 'Sunday'
       END AS day_of_week,
       public.ensemble.genre,
       CASE 
           WHEN public.ensemble.max_number_of_students - subquery.count_lessons = 0 THEN 'No seats'
           WHEN public.ensemble.max_number_of_students - subquery.count_lessons > 2 THEN 'Many seats'
           ELSE '1 or 2 Seats'
       END AS no_of_free_seats
FROM public.lesson
INNER JOIN public.ensemble ON public.lesson.id = public.ensemble.lesson_id
INNER JOIN (
	SELECT lesson_id, count(student_lesson.lesson_id) AS count_lessons
	FROM public.student_lesson
	GROUP BY lesson_id
) AS subquery ON public.lesson.id = subquery.lesson_id
WHERE EXTRACT(WEEK FROM public.lesson.date_of_lesson) = 52 AND EXTRACT(YEAR FROM public.lesson.date_of_lesson) = '2023'
GROUP BY day_of_week, public.ensemble.genre, no_of_free_seats
ORDER BY day_of_week;