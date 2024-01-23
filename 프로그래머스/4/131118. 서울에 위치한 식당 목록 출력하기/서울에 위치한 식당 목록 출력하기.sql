-- 코드를 입력하세요
SELECT i.rest_id, rest_name, food_type, favorites, address, round(avg(review_score), 2) score
from rest_info i join rest_review r
on i.rest_id = r.rest_id
group by i.rest_id
having address like '서울%'
-- where i.address like '서울%'
order by score desc, favorites desc;