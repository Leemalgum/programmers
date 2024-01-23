-- 코드를 입력하세요
select HISTORY_ID, CAR_ID, date_format(start_date,'%Y-%m-%d'), date_format(end_date,'%Y-%m-%d'),
if(datediff(end_date, start_date) >= 29,'장기 대여', '단기 대여') RENT_TYPE
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where start_date like '2022-09-%'
order by history_id desc;
