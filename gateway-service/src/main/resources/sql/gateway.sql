create schema if not exists "user";

CREATE TABLE "user"."user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    user_role_id bigint,
    user_session_status VARCHAR(20),
    user_last_login TIMESTAMP,
    user_last_change_password TIMESTAMP,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO "user"."user" (username, password, email, user_role_id, user_session_status, user_last_login, user_last_change_password, created_at, updated_at) VALUES ('ario_test', 'password123', 'ario.doe@example.com', 1, 'active', '2024-05-21 08:00:00', '2024-05-21 08:00:00', '2024-05-21 08:00:00', '2024-05-21 08:00:00');
INSERT INTO "user"."user" (username, password, email, user_role_id, user_session_status, user_last_login, user_last_change_password, created_at, updated_at) VALUES ('jane_smith', 'securepassword', 'jane.smith@example.com', 2, 'active', '2024-05-22 10:30:00', '2024-05-22 10:30:00', '2024-05-22 10:30:00', '2024-05-22 10:30:00');
INSERT INTO "user"."user" (username, password, email, user_role_id, user_session_status, user_last_login, user_last_change_password, created_at, updated_at) VALUES ('bob_johnson', 'p@ssw0rd', 'bob.johnson@example.com', 1, 'active', '2024-05-23 12:45:00', NULL, '2024-05-23 12:45:00', '2024-05-23 12:45:00');

CREATE TABLE "user"."role" (
    id SERIAL PRIMARY KEY,
    role varchar(20),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE "user".user_log (
    id SERIAL PRIMARY KEY,
    user_id bigint,
    user_activity_name varchar(255),
    user_session_status varchar(20),
    user_session varchar(255),
    user_token varchar(255),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);