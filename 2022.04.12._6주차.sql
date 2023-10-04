--2022.04.12. 6주차

--1.반>성별 순으로 롤업
select 반, 성별, avg(점수) 평균점수
from 성적
group by 반,성별 with rollup 

-- 2.성별>반 순으로 롤업
select 성별, 반, avg(점수) 평균점수
from 성적
group by 성별, 반 with rollup 

--3. cube. 1번, 2번 동시에 한거
select 반, 성별, avg(점수) 평균점수
from 성적
group by 반,성별 with cube -- 최근 버전은 소트가 안되서 order by 추가
order by 반 desc, 성별 desc -- 제일 값이 작은 NULL이 맨위에 출력되기 때문에 desc로 해준다.

-- 4. group by all
-- 5. 