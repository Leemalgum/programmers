-- 코드를 입력하세요
SELECT user_id, nickname, sum(price) TOTAL_SALES
from used_goods_board b join used_goods_user u on b.writer_id = u.user_id
where status like 'DONE'
group by writer_id
having TOTAL_SALES>=700000
order by TOTAL_SALES;
