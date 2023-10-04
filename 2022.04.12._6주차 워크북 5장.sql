-- 2022.04.12. 6���� ��ũ�� 5�� 4p
-- 1~5�� �����ͺ��̽� : sampleDB
-- 6~9�� �����ͺ��̽� : pubs

-- 2. å���̺��� å�� �оߺ� å �Ǽ��� ����Ͻÿ�.
select �о�, count(�о�) �Ǽ�
from å
group by �о�

select �о�, count(�о�) 'å �Ǽ�' --Ư������, ������ ���� ���ȣ�� ����ǥ�� �־�����Ѵ�.
from å
group by �о�

-- 3. ������ ���̺��� ���̸��� ��������� ����Ͻÿ�.
select ���̸�, avg(����) ���
from ������
group by ���̸�

-- 4.������ ���̺��� ���̸��� ��� ������ ����Ͻÿ�.
select ���̸�, avg(����) ���
from ������
group by ���̸�
having avg(����)>=85 -- �׷찪 avg(����)�� 85�̻� ���

select ���̸�, avg(����) ���
from ������
where ����>=80 -- ������ 80�̻� ���
group by ���̸�
having avg(����)>=85

/*5. ������ ���̺��� ���̸��� ��������� ���Ҷ� 
������ 75�� ����(����>75)�� �����ϰ�
85�� �̻�(���>=85)�� ���̸��� ��������� ����Ͻÿ�.*/
select ���̸�, avg(����) ���
from ������
where ����>75
group by ���̸�
having avg(����)>=85

--6. titles���̺��� pub_id�� ��� å ������ ����Ͻÿ�.
select pub_id, avg(price) average
from titles
group by pub_id

--7. titles���̺��� pub_id�� ��� å������ 10�޷� �̻��ΰ͸� ����Ͻÿ�.
select pub_id, avg(price) average
from titles
group by pub_id
having avg(price)>=10

--8. titles���̺��� rollup�� ����Ͽ� pub_id��, type�� price�� ������ ����Ͻÿ�.
select pub_id, type, sum(price) summit
from titles
group by pub_id, type with rollup

--9. titles���̺��� pub_id, type, price�� ����
-- type, pub_id price�� ����
-- with cube���
select pub_id, type, sum(price) summit
from titles
group by pub_id, type with cube
order by type desc, pub_id desc
