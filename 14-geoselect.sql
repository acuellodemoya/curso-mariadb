USE metro_cdmx;

SELECT 
ST_Distance_Sphere(
    (
        SELECT `locations`.`location`
        FROM `locations`
        WHERE `locations`.`id` = 43
    ),
    (
        SELECT `locations`.`location`
        FROM `locations`
        WHERE `locations`.`id` = 125
    )
)
as distance;