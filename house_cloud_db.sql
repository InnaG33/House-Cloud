SELECT * FROM venue_found;

CREATE VIEW may_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'May'
ORDER BY "Followers" DESC;

CREATE VIEW jun_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Jun'
ORDER BY "Followers" DESC;

CREATE VIEW jul_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Jul'
ORDER BY "Followers" DESC;

CREATE VIEW aug_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Aug'
ORDER BY "Followers" DESC;

CREATE VIEW sep_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Sep'
ORDER BY "Followers" DESC;

CREATE VIEW oct_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Oct'
ORDER BY "Followers" DESC;

CREATE VIEW nov_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Nov'
ORDER BY "Followers" DESC;

SELECT * FROM nov_venue;

CREATE VIEW dec_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Dec'
ORDER BY "Followers" DESC;

CREATE VIEW jan_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Jan'
ORDER BY "Followers" DESC;

CREATE VIEW feb_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Feb'
ORDER BY "Followers" DESC;

CREATE VIEW mar_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Mar'
ORDER BY "Followers" DESC;

CREATE VIEW apr_venue AS
SELECT "Date", "Artist", "Club", "City", "Time", "Followers", "Tracks"
FROM venue_found 
WHERE "Month" = 'Apr'
ORDER BY "Followers" DESC;

