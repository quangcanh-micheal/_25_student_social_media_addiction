USE [practice];
GO

SELECT *
FROM [dbo].[_25_student_social_media_addiction]

SELECT 
    CASE 
        WHEN [Addicted_Score] <= 3 THEN 'Low'
        WHEN [Addicted_Score] <= 6 THEN 'Medium'
        ELSE 'High'
    END AS addiction_status,
    COUNT(Student_ID) AS student_count,
    AVG([Conflicts_Over_Social_Media]) AS level_conflicts,
    ROUND(AVG([Sleep_Hours_Per_Night]),2) AS avg_sleep_hours,
    AVG([Mental_Health_Score]) AS avg_mental_health_score,
    ROUND(AVG([Avg_Daily_Usage_Hours]),2) AS avg_daily_usage_hours
FROM [dbo].[_25_student_social_media_addiction]
GROUP BY 
    CASE 
        WHEN [Addicted_Score] <= 3 THEN 'Low'
        WHEN [Addicted_Score] <= 6 THEN 'Medium'
        ELSE 'High'
    END;

#Country pct
WITH summary AS(
SELECT *,
    CASE 
        WHEN [Addicted_Score] <= 3 THEN 'Low'
        WHEN [Addicted_Score] <= 6 THEN 'Medium'
        ELSE 'High'
    END AS addiction_status
FROM [dbo].[_25_student_social_media_addiction])

SELECT 
    [Country],
    COUNT(Student_ID) AS student_count,
    CAST(COUNT(Student_ID) * 100.0 / SUM(COUNT(Student_ID)) OVER() AS DECIMAL(10,2)) AS pct_among_countries
FROM summary
WHERE addiction_status = 'High'
GROUP BY [Country]
ORDER BY student_count DESC;

#Platform pct
WITH summary AS(
SELECT *,
    CASE 
        WHEN [Addicted_Score] <= 3 THEN 'Low'
        WHEN [Addicted_Score] <= 6 THEN 'Medium'
        ELSE 'High'
    END AS addiction_status
FROM [dbo].[_25_student_social_media_addiction])

SELECT 
    [Most_Used_Platform],
    COUNT(Student_ID) AS student_count,
    CAST(COUNT(Student_ID) * 100.0 / SUM(COUNT(Student_ID)) OVER() AS DECIMAL(10,2)) AS pct_among_platforms
FROM summary
WHERE addiction_status = 'High'
GROUP BY [Most_Used_Platform]
ORDER BY student_count DESC;

#Gender pct
WITH summary AS(
SELECT *,
    CASE 
        WHEN [Addicted_Score] <= 3 THEN 'Low'
        WHEN [Addicted_Score] <= 6 THEN 'Medium'
        ELSE 'High'
    END AS addiction_status
FROM [dbo].[_25_student_social_media_addiction])

SELECT 
    [Gender],
    COUNT(Student_ID) AS student_count,
    CAST(COUNT(Student_ID) * 100.0 / SUM(COUNT(Student_ID)) OVER() AS DECIMAL(10,2)) AS pct_among_platforms
FROM summary
WHERE addiction_status = 'High' OR addiction_status = 'Medium'
GROUP BY [Gender]
ORDER BY student_count DESC;

#Academic lvl pct
WITH summary AS(
SELECT *,
    CASE 
        WHEN [Addicted_Score] <= 3 THEN 'Low'
        WHEN [Addicted_Score] <= 6 THEN 'Medium'
        ELSE 'High'
    END AS addiction_status
FROM [dbo].[_25_student_social_media_addiction])

SELECT 
    [Academic_Level],
    COUNT(Student_ID) AS student_count,
    CAST(COUNT(Student_ID) * 100.0 / SUM(COUNT(Student_ID)) OVER() AS DECIMAL(10,2)) AS pct_among_platforms
FROM summary
WHERE addiction_status = 'High' OR addiction_status = 'Medium'
GROUP BY [Academic_Level]
ORDER BY student_count DESC;