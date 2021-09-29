-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT * 
FROM `degrees`
JOIN `students`
ON `degrees`. `id` = `students`. `degree_id`
WHERE `degrees`. `name` = 'Corso di Laurea in Economia';

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT * 
FROM `departments`
JOIN `degrees`
ON `departments`. `id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`id`, `teachers`.`name`, `teachers`.`surname`, `courses`.`name`
FROM `teachers`
JOIN `course_teacher`
ON `teachers`.`id` = `course_teacher`. `teacher_id`
JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
WHERE `teachers`.`id` = 44;


