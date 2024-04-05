-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

select sum(hits)
from stats s join players p on s.player_id = p.id 
where p.first_name = 'Barry'
and p.last_name = 'Bonds'
