--�ι� �������� ������.!!! 
use SampleDB
create table #ü������
(�г� int,
�� char(1),
�̸� varchar(10),
���ھ� int)

insert #ü������ values(1,'A','������',10)
insert #ü������ values(2,'B','�ڽ���',23)
insert #ü������ values(3,'A','�ڹο�',5)
insert #ü������ values(3,'B','���¸�',22)
insert #ü������ values(2,'A','�����',15)
insert #ü������ values(1,'B','������',5)
insert #ü������ values(1,'A','�տ���',25)
insert #ü������ values(2,'A','����',17)
insert #ü������ values(3,'B','�̹���',18)
insert #ü������ values(3,'A','�̽ÿ�',11)
insert #ü������ values(2,'B','���ϼ�',21)
insert #ü������ values(3,'B','������',6)
insert #ü������ values(1,'B','�Ѱ���',30)
insert #ü������ values(1,'A','������',12)
insert #ü������ values(2,'A','���Ҷ�',18)
insert #ü������ values(1,'B','�ѿ���',11)
insert #ü������ values(2,'B','������',6)
insert #ü������ values(3,'A','�Źξ�',28)

select *
from #ü������

-- �г⺰ ��� �ٳѱ� ���ھ����
select �г�, avg(���ھ�) ���ھ�
from #ü������
group by �г�

-- 
select ��, ����, avg(����) ���
from ����
group by ��, ���� -- �׷���
order by ��, ���� --������ ���� ��Ƽ�

select ��, ����, avg(����) ���
from ����
group by ��, ���� with rollup -- �߰����� ���
--3�� : A�� ���� ���/ 6�� : B�� ������� / 7�� : ��ü�ݳ��� ���

-- #ü������ ���̺��� �г⺰, �ݺ� ��� ���ھ� ���
select �г�, ��, avg(���ھ�) ���
from #ü������
group by �г�,��
order by �г�,��

-- #ü������ ���̺��� �г⺰, �ݺ� ��� ���ھ�� �߰����� ���
select �г�, ��, avg(���ھ�) ���
from #ü������
group by �г�,�� with rollup -- �ڵ����� sort�Ǳ� ������, order by�� �ʿ����. 
