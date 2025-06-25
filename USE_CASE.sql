use spotify;
## use case 1
SELECT c.*
FROM content AS c
INNER JOIN content_to_genre AS cg ON cg.content_id = c.content_id
INNER JOIN content_genre AS co ON co.id = id
WHERE co.Genre_name = 'AMPIANO'
AND release_date >= DATE_SUB(CURDATE(), INTERVAL 4 MONTH)
ORDER BY release_date DESC;

##use case 2

SELECT subscribe.customer_id, subscribe.plan_name, subscribe.subscription_id, subscribe.end_date
FROM subscribe
WHERE subscribe.start_date < subscribe.end_date
GROUP BY subscribe.customer_id, subscribe.plan_name, subscribe.subscription_id, subscribe.end_date;

### user rating use case 3
SELECT c.content_id, c.content_title, c.release_date, r.user_rating
FROM content c
JOIN rated r ON c.content_id = r.content_id
JOIN content_to_type ct ON c.content_id = ct.content_id
JOIN content_type t ON ct.type_id = t.id
WHERE t.Type_name = 'Music'
AND r.user_rating >= 4;


# use case 4 
SELECT c.content_id, c.content_title
FROM content c
WHERE c.release_date <= DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY) -- Consider only content released within the last 30 days
  AND c.content_id NOT IN (
    SELECT lt.content_id
    FROM listen_to lt
    WHERE lt.customer_id = 01 -- Specify the user's customer ID
  )
ORDER BY RAND() -- Randomize the results to provide variety
LIMIT 5;-- Retrieve 5 recommendations