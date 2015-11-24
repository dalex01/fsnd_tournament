-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS tours;
DROP TABLE IF EXISTS players;

-- ---
-- Table 'players'
--
-- ---

CREATE TABLE players (
  id SERIAL,
  name VARCHAR(50),
  PRIMARY KEY (id)
);

-- ---
-- Table 'matches'
--
-- ---

CREATE TABLE matches (
  id SERIAL,
  tour INTEGER,
  winner INTEGER,
  loser INTEGER,
  PRIMARY KEY (id)
);

-- ---
-- Table 'tours'
--
-- ---

CREATE TABLE tours (
  id INTEGER,
  PRIMARY KEY (id)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE matches ADD FOREIGN KEY (tour) REFERENCES tours (id);
ALTER TABLE matches ADD FOREIGN KEY (winner) REFERENCES players (id);
ALTER TABLE matches ADD FOREIGN KEY (winner) REFERENCES players (id);

-- ---
-- Views
-- ---

CREATE VIEW games_won AS SELECT players.id AS player_id, count(matches.winner) AS win FROM players LEFT JOIN matches ON players.id = matches.winner GROUP BY players.id;
CREATE VIEW games_lose AS SELECT players.id AS player_id, count(matches.loser) AS lose FROM players LEFT JOIN matches ON players.id = matches.loser GROUP BY players.id;