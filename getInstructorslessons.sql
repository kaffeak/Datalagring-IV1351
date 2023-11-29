SELECT public.payment.instructor_id, public.person.first_name, public.person.last_name, COUNT(public.lesson.id) AS number_of_lessons
FROM public.payment
INNER JOIN public.lesson ON public.payment.id = public.lesson.payment_id
INNER JOIN public.instructor ON public.payment.instructor_id = public.instructor.id
INNER JOIN public.person ON public.instructor.person_ssn = public.person.ssn
INNER JOIN public.month ON EXTRACT(MONTH FROM public.lesson.date_of_lesson) = public.month.id
WHERE public.month.name = 'dec'
GROUP BY public.payment.instructor_id, public.person.first_name, public.person.last_name
HAVING COUNT(public.lesson.id) > 0
ORDER BY public.payment.instructor_id;