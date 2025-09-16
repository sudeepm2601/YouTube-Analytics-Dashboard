-- Step 1: Drop old table if exists
DROP TABLE IF EXISTS youtube_trending;

-- Step 2: Create table schema (16 columns)
CREATE TABLE youtube_trending (

    video_id VARCHAR(50),
    trending_date VARCHAR(20),
    title TEXT,
    channel_title TEXT,
    category_id VARCHAR(10),
    publish_time VARCHAR(50),
    tags TEXT,
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link TEXT,
    comments_disabled VARCHAR(10),
    ratings_disabled VARCHAR(10),
    video_error_or_removed VARCHAR(10),
    description TEXT
);
-- insert into youtube_trending (id) value(1) ;

-- Step 3: Load data from your smaller CSV
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ind_csv_sql.csv'
INTO TABLE youtube_trending
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- SELECT COUNT(*) FROM youtube_trending;   -- should show ~1000
SELECT * FROM youtube_trending LIMIT 5;  -- quick preview

SELECT title, channel_title, CAST(views AS UNSIGNED) AS views_count
FROM youtube_trending
ORDER BY views_count DESC
LIMIT 10;

SELECT category_id, COUNT(*) AS total_videos
FROM youtube_trending
GROUP BY category_id
ORDER BY total_videos DESC;

SELECT category_id, AVG(CAST(likes AS UNSIGNED)) AS avg_likes
FROM youtube_trending
WHERE likes != 'NULL'
GROUP BY category_id
ORDER BY avg_likes DESC;

SELECT channel_title, COUNT(*) AS trending_videos
FROM youtube_trending
GROUP BY channel_title
ORDER BY trending_videos DESC
LIMIT 10;

SELECT title, channel_title,
       CAST(likes AS UNSIGNED) AS likes,
       CAST(dislikes AS UNSIGNED) AS dislikes,
       ROUND((CAST(likes AS UNSIGNED) / (CAST(dislikes AS UNSIGNED) + 1)) * 100, 2) AS like_ratio
FROM youtube_trending
ORDER BY like_ratio DESC
LIMIT 10;



