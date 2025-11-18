CREATE TABLE subscription_plans (plan_id SERIAL PRIMARY KEY, plan VARCHAR(255) NOT NULL, duration INT NOT NULL DEFAULT 0, price FLOAT NOT NULL DEFAULT 0);

CREATE TABLE devices (device_id SERIAL PRIMARY KEY, device VARCHAR(255) NOT NULL);

CREATE TABLE app_version (version_id SERIAL PRIMARY KEY, app_version VARCHAR(255) NOT NULL, access_level VARCHAR(255) NOT NULL);

CREATE TABLE date (date DATE PRIMARY KEY, year INT NOT NULL, month INT NOT NULL, day INT NOT NULL);

CREATE TABLE users (user_id SERIAL PRIMARY KEY, user_name VARCHAR(255) NOT NULL, user_email VARCHAR(255) NOT NULL);

CREATE TABLE subscriptions (
    subscription_id SERIAL PRIMARY KEY, 
    user_id INT NOT NULL, 
    plan_id INT NOT NULL, 
    device_id INT NOT NULL, 
    start_date DATE NOT NULL, 
    version_id INT NOT NULL, 
    CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_subscription_plans FOREIGN KEY (plan_id) REFERENCES subscription_plans(plan_id) ON DELETE CASCADE,
    CONSTRAINT fk_devices FOREIGN KEY (device_id) REFERENCES devices(device_id) ON DELETE CASCADE,
    CONSTRAINT fk_date FOREIGN KEY (start_date) REFERENCES date(date) ON DELETE CASCADE,
    CONSTRAINT fk_app_version FOREIGN KEY (version_id) REFERENCES app_version(version_id) ON DELETE CASCADE
)