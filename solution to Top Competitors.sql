/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

WITH HackChallenges AS
(SELECT sb.hacker_id
      /*
       , sb.score
       , dt.score
       , ch.difficulty_level 
       , dt.difficulty_level
       , ch.challenge_id */
       , COUNT(ch.challenge_id) as passed_challenges
FROM Submissions as sb
    INNER JOIN Challenges as ch
ON 
    sb.challenge_id = ch.challenge_id
    INNER JOIN Difficulty as dt
ON 
    ch.difficulty_level = dt.difficulty_level
WHERE 
    sb.score = dt.score
GROUP BY
   sb.hacker_id
HAVING
    COUNT(ch.challenge_id) > 1
)

SELECT hck.hacker_id
       , hk.name
FROM 
    HackChallenges as hck
INNER JOIN
    Hackers as hk
ON
    hck.hacker_id = hk.hacker_id
ORDER BY
    hck.passed_challenges DESC
    , hck.hacker_id
