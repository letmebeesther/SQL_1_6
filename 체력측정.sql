--두번 실행하지 마세요.!!! 
use SampleDB
create table #체력측정
(학년 int,
반 char(1),
이름 varchar(10),
스코어 int)

insert #체력측정 values(1,'A','김유정',10)
insert #체력측정 values(2,'B','박신혜',23)
insert #체력측정 values(3,'A','박민영',5)
insert #체력측정 values(3,'B','김태리',22)
insert #체력측정 values(2,'A','김희애',15)
insert #체력측정 values(1,'B','김혜수',5)
insert #체력측정 values(1,'A','손예진',25)
insert #체력측정 values(2,'A','수지',17)
insert #체력측정 values(3,'B','이민정',18)
insert #체력측정 values(3,'A','이시영',11)
insert #체력측정 values(2,'B','박하선',21)
insert #체력측정 values(3,'B','최지우',6)
insert #체력측정 values(1,'B','한가인',30)
insert #체력측정 values(1,'A','한지민',12)
insert #체력측정 values(2,'A','강소라',18)
insert #체력측정 values(1,'B','한예슬',11)
insert #체력측정 values(2,'B','김태희',6)
insert #체력측정 values(3,'A','신민아',28)

select *
from #체력측정

-- 학년별 평균 줄넘기 스코어출력
select 학년, avg(스코어) 스코어
from #체력측정
group by 학년

-- 
select 반, 성별, avg(점수) 평균
from 성적
group by 반, 성별 -- 그룹핑
order by 반, 성별 --같은거 끼리 모아서

select 반, 성별, avg(점수) 평균
from 성적
group by 반, 성별 with rollup -- 중간집계 출력
--3행 : A반 남녀 평균/ 6행 : B반 남녀평균 / 7행 : 전체반남녀 평균

-- #체력측정 테이블에서 학년별, 반별 평균 스코어 출력
select 학년, 반, avg(스코어) 평균
from #체력측정
group by 학년,반
order by 학년,반

-- #체력측정 테이블에서 학년별, 반별 평균 스코어와 중간집계 출력
select 학년, 반, avg(스코어) 평균
from #체력측정
group by 학년,반 with rollup -- 자동으로 sort되기 때문에, order by할 필요없음. 
