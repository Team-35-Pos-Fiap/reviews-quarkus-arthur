-- ===========================================
-- V3__insert_test_course_with_recent_reviews.sql
-- Test course, teacher, enrollments, and recent reviews
-- ===========================================

-- ========================
-- USER (Teacher)
-- ========================
INSERT INTO users (id, first_name, last_name, email) VALUES
    ('750e8400-e29b-41d4-a716-446655440100', 'John', 'Doe', 'posfiapteam35@gmail.com');

-- ========================
-- TEACHER
-- ========================
INSERT INTO teachers (id, hire_date) VALUES
    ('750e8400-e29b-41d4-a716-446655440100', NOW() - INTERVAL '1 year');

-- ========================
-- COURSE
-- ========================
INSERT INTO courses (id, title, teacher_id) VALUES
    ('4fa85f64-5717-4562-b3fc-2c963f66af10', 'Test Course', '750e8400-e29b-41d4-a716-446655440100');

-- ========================
-- STUDENT COURSES
-- ========================
INSERT INTO student_courses (student_id, course_id) VALUES
                                                        ('6fa85f64-5717-4562-b3fc-2c963f66afa0', '4fa85f64-5717-4562-b3fc-2c963f66af10'),
                                                        ('6fa85f64-5717-4562-b3fc-2c963f66afa1', '4fa85f64-5717-4562-b3fc-2c963f66af10'),
                                                        ('6fa85f64-5717-4562-b3fc-2c963f66afa2', '4fa85f64-5717-4562-b3fc-2c963f66af10'),
                                                        ('6fa85f64-5717-4562-b3fc-2c963f66afa3', '4fa85f64-5717-4562-b3fc-2c963f66af10'),
                                                        ('6fa85f64-5717-4562-b3fc-2c963f66afa4', '4fa85f64-5717-4562-b3fc-2c963f66af10');

-- ========================
-- REVIEWS
-- ========================
INSERT INTO reviews (id, course_id, student_id, rating, comment, is_urgent, created_at) VALUES
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b01', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa0', 5, 'Excellent course.', false, NOW() - INTERVAL '6 days'),
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b02', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa1', 4, 'Very well explained.', false, NOW() - INTERVAL '5 days'),
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b03', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa2', 2, 'Too fast paced.', true, NOW() - INTERVAL '5 days'),
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b04', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa3', 1, 'Hard to understand.', true, NOW() - INTERVAL '4 days'),
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b05', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa4', 3, 'Average experience.', false, NOW() - INTERVAL '4 days'),
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b06', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa0', 5, 'Learned a lot.', false, NOW() - INTERVAL '3 days'),
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b07', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa1', 1, 'Needs serious improvement.', true, NOW() - INTERVAL '3 days'),
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b08', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa2', 4, 'Good structure.', false, NOW() - INTERVAL '2 days'),
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b09', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa3', 2, 'Content could be clearer.', true, NOW() - INTERVAL '1 day'),
                                                                                            ('2c6e2a7c-91f8-4eb3-9c3f-2b3d9c6e2b10', '4fa85f64-5717-4562-b3fc-2c963f66af10', '6fa85f64-5717-4562-b3fc-2c963f66afa4', 5, 'Highly recommend.', false, NOW());