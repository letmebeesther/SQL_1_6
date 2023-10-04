-- 2022.04.12. 6주차 워크북 5장 4p
-- 1~5번 데이터베이스 : sampleDB
-- 6~9번 데이터베이스 : pubs

-- 2. 책테이블에서 책의 분야별 책 권수를 출력하시오.
select 분야, count(분야) 권수
from 책
group by 분야

select 분야, count(분야) '책 권수' --특수문자, 공백이 들어가면 대괄호나 따옴표를 넣어줘야한다.
from 책
group by 분야

-- 3. 졸작평가 테이블에서 조이름별 평균점수를 출력하시오.
select 조이름, avg(점수) 평균
from 졸작평가
group by 조이름

-- 4.졸작평가 테이블에서 조이름별 평균 점수를 출력하시오.
select 조이름, avg(점수) 평균
from 졸작평가
group by 조이름
having avg(점수)>=85 -- 그룹값 avg(점수)가 85이상만 출력

select 조이름, avg(점수) 평균
from 졸작평가
where 점수>=80 -- 개별값 80이상만 출력
group by 조이름
having avg(점수)>=85

/*5. 졸작평가 테이블에서 조이름별 평균점수를 구할때 
점수가 75점 이하(점수>75)는 제외하고
85점 이상(평균>=85)인 조이름과 평균점수를 출력하시오.*/
select 조이름, avg(점수) 평균
from 졸작평가
where 점수>75
group by 조이름
having avg(점수)>=85

--6. titles테이블에서 pub_id별 평균 책 가격을 출력하시오.
select pub_id, avg(price) average
from titles
group by pub_id

--7. titles테이블에서 pub_id별 평균 책가격이 10달러 이상인것만 출력하시오.
select pub_id, avg(price) average
from titles
group by pub_id
having avg(price)>=10

--8. titles테이블에서 rollup을 사용하여 pub_id별, type별 price의 총합을 출력하시오.
select pub_id, type, sum(price) summit
from titles
group by pub_id, type with rollup

--9. titles테이블에서 pub_id, type, price의 총합
-- type, pub_id price의 총합
-- with cube사용
select pub_id, type, sum(price) summit
from titles
group by pub_id, type with cube
order by type desc, pub_id desc
