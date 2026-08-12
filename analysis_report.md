## 1. Todas las inscripciones

Resultado:

| name            | title                  | completion_percentage |
| --------------- | ---------------------- | --------------------- |
| Emily Watson    | Intro to Python        | 85                    |
| Emily Watson    | Web Design Basics      | 60                    |
| Klaus Weber     | Intro to Python        | 92                    |
| Klaus Weber     | Data Analysis with SQL | 78                    |
| Lucia Fernandes | Web Design Basics      | 5                     |
| Lucia Fernandes | Digital Marketing 101  | 3                     |
| Marco Rossi     | Advanced Python        | 95                    |
| Marco Rossi     | Intro to Python        | 88                    |
| Yuki Nakamura   | Data Analysis with SQL | 45                    |
| Yuki Nakamura   | UI/UX Fundamentals     | 0                     |
| Pierre Dubois   | UI/UX Fundamentals     | 0                     |
| Priya Sharma    | Digital Marketing 101  | 70                    |
| Priya Sharma    | Intro to Python        | 55                    |
| Pierre Dubois   | Data Analysis with SQL | 20                    |
| Emily Watson    | Advanced Python        | 40                    |
| Lucia Fernandes | Advanced Python        | 0                     |

## 2. Estudiantes que aprobaron al menos un curso

La consulta muestra el nombre y correo del estudiante junto con el curso que aprobó.

### Resultado

| name         | email                             | title                  |
| ------------ | --------------------------------- | ---------------------- |
| Emily Watson | emily.watson@student.edutrack.com | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Data Analysis with SQL |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Advanced Python        |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Intro to Python        |
| Priya Sharma | priya.sharma@student.edutrack.com | Digital Marketing 101  |


## 3. Porcentaje de completado medio por instructor

La consulta calcula el porcentaje de completado promedio de los estudiantes para cada instructor.

### Resultado

| instructor_name    | average_completion     |
| ------------------ | ---------------------- |
| Marta López        | 66.1428571428571429    |
| Carlos Vega        | 40.0000000000000000    |
| Lucia Prades       | 36.5000000000000000    |
| Pending assignment | 0.00000000000000000000 |

## 4. Estudiantes sin ninguna inscripción

La consulta muestra los estudiantes registrados en la plataforma que no tienen ninguna inscripción.

### Resultado

| name          | email                              |
| ------------- | ---------------------------------- |
| Giulia Romano | giulia.romano@student.edutrack.com |


## 5. Cursos sin ninguna inscripción

La consulta muestra los cursos que existen en el catálogo pero que no tienen estudiantes inscritos.

### Resultado

| title           | category  |
| --------------- | --------- |
| Email Campaigns | Marketing |

## 6. Estudiantes inscritos en más de un curso

La consulta muestra los estudiantes que están inscritos en más de un curso y cuántos cursos tienen.

### Resultado

| name            | course_count |
| --------------- | ------------ |
| Lucia Fernandes | 3            |
| Emily Watson    | 3            |
| Marco Rossi     | 2            |
| Klaus Weber     | 2            |
| Priya Sharma    | 2            |
| Pierre Dubois   | 2            |
| Yuki Nakamura   | 2            |

## 7. Ingresos totales por categoría

La consulta calcula los ingresos por categoría usando el precio actual de cada curso.

### Resultado

| category    | total_revenue |
| ----------- | ------------- |
| Programming | 409.93        |
| Data        | 179.97        |
| Design      | 169.96        |
| Marketing   | 59.98         |

## 8. Número de estudiantes por instructor

La consulta muestra cuántos estudiantes distintos están inscritos en cursos de cada instructor.

### Resultado

| instructor_name    | student_count |
| ------------------ | ------------- |
| Marta López        | 6             |
| Carlos Vega        | 3             |
| Lucia Prades       | 2             |
| Pending assignment | 2             |

## 9. Inscripciones con estudiante inexistente

La consulta revisa si existen inscripciones asociadas a estudiantes que ya no existen en la base de datos.

### Resultado

No se encontraron inscripciones vinculadas a estudiantes inexistentes.


## 10. Inscripciones con curso inexistente

La consulta revisa si existen inscripciones asociadas a cursos que ya no existen en la base de datos.

### Resultado

No se encontraron inscripciones vinculadas a cursos inexistentes.

