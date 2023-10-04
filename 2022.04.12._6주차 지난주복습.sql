 -- 2022.04.12. 6주차 지난주 복습

 -- 요약정보 : 집계함수를 사용해서 단일값을 만드는 방법
 -- min(), max(), sum(), avg(), count()
 -- 기본적으로 집계함수는 NULL을 제외하고 계산한다.

 select min(점수) 가장낮은점수
 from 성적

 select max(점수) 가장높은점수
 from 성적

 select sum(점수) 점수총합
 from 성적

 select avg(점수) 평균
 from 성적

 select count(*) 전체행개수
 from 성적

 select count(*)
 from 제품

 select count(가격) 
 from 제품

 -- 그룹핑

 select avg(점수) 점수평균 --그룹핑하지 않았을때
 from 성적

 select 반, avg(점수) 점수평균 --그룹핑할때 필드명을 같이 써주기
 from 성적
 group by 반 -- 그룹핑했을때 

 select 성별, avg(점수) 점수평균 -- select 필드명, 함수() 필드명
 from 성적
 group by 성별 -- 그룹핑했을때 

 select 종류, count(*) 제품의수 --그룹핑할때 필드명을 같이 써주기
 from 제품
 group by 종류 -- 그룹핑했을때 