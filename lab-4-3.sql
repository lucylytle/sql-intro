-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

select t.name, p.first_name, p.last_name, s.home_runs
from players p join stats s on p.id = s.player_id 
join teams t on t.id = s.team_id 
where year = 2019
order by s.home_runs desc
limit 1
