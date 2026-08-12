-- 1. Listar todas las inscripciones con estudiante, curso y porcentaje completado

SELECT
    students.name,
    courses.title,
    enrollments.completion_percentage
FROM enrollments
INNER JOIN students
    ON enrollments.student_id = students.id
INNER JOIN courses
    ON enrollments.course_id = courses.id;



 -- 2. Mostrar los estudiantes que aprobaron al menos un curso,
-- junto con su email y el título del curso aprobado.

SELECT
    students.name,
    students.email,
    courses.title
FROM enrollments
INNER JOIN students
    ON enrollments.student_id = students.id
INNER JOIN courses
    ON enrollments.course_id = courses.id
WHERE enrollments.passed = TRUE;   

-- 3. Calcular el porcentaje de completado medio por instructor,
-- ordenado de mayor a menor.

SELECT
    courses.instructor_name,
    AVG(enrollments.completion_percentage) AS average_completion
FROM courses
INNER JOIN enrollments
    ON courses.id = enrollments.course_id
GROUP BY courses.instructor_name
ORDER BY average_completion DESC;

-- 4. Encontrar estudiantes que no tienen ninguna inscripción.

SELECT
    students.name,
    students.email
FROM students
LEFT JOIN enrollments
    ON students.id = enrollments.student_id
WHERE enrollments.id IS NULL;

-- 5. Encontrar cursos que no tienen ninguna inscripción.

SELECT
    courses.title,
    courses.category
FROM courses
LEFT JOIN enrollments
    ON courses.id = enrollments.course_id
WHERE enrollments.id IS NULL;

-- 6. Contar cuántos cursos tiene inscrito cada estudiante
-- y mostrar solo los que están inscritos en más de un curso.

SELECT
    students.name,
    COUNT(enrollments.course_id) AS course_count
FROM students
INNER JOIN enrollments
    ON students.id = enrollments.student_id
GROUP BY students.id, students.name
HAVING COUNT(enrollments.course_id) > 1
ORDER BY course_count DESC;

-- 7. Calcular los ingresos totales por categoría
-- usando el precio actual del curso.

SELECT
    courses.category,
    SUM(courses.monthly_fee) AS total_revenue
FROM courses
INNER JOIN enrollments
    ON courses.id = enrollments.course_id
GROUP BY courses.category
ORDER BY total_revenue DESC;

-- 8. Contar cuántos estudiantes distintos están inscritos
-- en cursos de cada instructor.

SELECT
    courses.instructor_name,
    COUNT(DISTINCT enrollments.student_id) AS student_count
FROM courses
LEFT JOIN enrollments
    ON courses.id = enrollments.course_id
GROUP BY courses.instructor_name
ORDER BY student_count DESC;

-- 9. Detectar inscripciones vinculadas a un estudiante
-- que ya no existe en la tabla students.

SELECT
    enrollments.id,
    enrollments.student_id
FROM enrollments
LEFT JOIN students
    ON enrollments.student_id = students.id
WHERE students.id IS NULL;

-- 10. Detectar inscripciones vinculadas a un curso
-- que ya no existe en la tabla courses.

SELECT
    enrollments.id,
    enrollments.course_id
FROM enrollments
LEFT JOIN courses
    ON enrollments.course_id = courses.id
WHERE courses.id IS NULL;
