-- 코드를 입력하세요
SELECT f.flavor
from first_half f, icecream_info i
where f.flavor = i.flavor and f.total_order > 3000 and i.ingredient_type like 'fruit%'
order by total_order desc;