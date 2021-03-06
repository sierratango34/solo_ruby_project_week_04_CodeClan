DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS events;

CREATE TABLE members (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE events (
  id SERIAL4 PRIMARY KEY,
  type VARCHAR(255),
  max_capacity NUMERIC
);

CREATE TABLE bookings (
  id SERIAL4 PRIMARY KEY,
  member_id INT4 REFERENCES members(id) ON DELETE CASCADE,
  event_id INT4 REFERENCES events(id) ON DELETE CASCADE,
  confirmed BOOLEAN,
  paid BOOLEAN
);
