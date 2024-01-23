-- 코드를 입력하세요
SELECT a.author_id, author_name, category, sum(price*sales)
from book b join author a join book_sales s on b.book_id = s.book_id and b.author_id = a.author_id
where sales_date like '2022-01-%'
group by author_id, category
order by author_id, category desc;