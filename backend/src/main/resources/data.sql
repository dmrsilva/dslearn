INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Orange', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://live.staticflickr.com/8344/8203888403_950fb1c9df_b.jpg', 'https://thumbs.dreamstime.com/b/encyclopedia-icon-vector-books-literature-concept-thin-line-illustration-encyclopedia-editable-stroke-encyclopedia-192159356.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-11-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://live.staticflickr.com/8344/8203888403_950fb1c9df_b.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://live.staticflickr.com/8344/8203888403_950fb1c9df_b.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para complementar os estudos', 3, 'https://live.staticflickr.com/8344/8203888403_950fb1c9df_b.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Apresentação do curso', 1, 'https://live.staticflickr.com/8344/8203888403_950fb1c9df_b.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Desenvolvimento do curso', 2, 'https://live.staticflickr.com/8344/8203888403_950fb1c9df_b.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Conclusão do curso', 3, 'https://live.staticflickr.com/8344/8203888403_950fb1c9df_b.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-02-01T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-02-01T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do primeiro capítulo', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio', 'https://apoio');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do primeiro capítulo', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Material promocional', 'https://apoio');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do primeiro capítulo', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://apoio');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do primeiro capítulo', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Trabalho para entregar', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2022-02-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

