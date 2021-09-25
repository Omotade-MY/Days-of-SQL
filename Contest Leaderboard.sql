/* You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result. */

select hackers.hacker_id,
    name,
    sum(score) as total_score
    from hackers inner join
    (select hacker_id, max(score) as score from submissions
        group by challenge_id, hacker_id
    ) as max_scores
    on hackers.hacker_id = max_scores.hacker_id
    where score > 0
    group by 
        hackers.hacker_id,
        name
    
    order by
        total_score desc,
        hackers.hacker_id asc
