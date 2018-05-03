DROP TABLE IF EXISTS team_matches;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS leagues;


CREATE TABLE leagues(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE matches(
  id SERIAL4 PRIMARY KEY,
  league_id INT4 REFERENCES leagues(id)
);

CREATE TABLE teams(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  league_id INT4 REFERENCES leagues(id)
);

CREATE TABLE team_matches(
  id SERIAL4 PRIMARY KEY,
  match_id INT4 REFERENCES matches(id),
  team1_id INT4 REFERENCES teams(id),
  team2_id INT4 REFERENCES teams(id)
);
