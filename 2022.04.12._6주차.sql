--2022.04.12. 6����

--1.��>���� ������ �Ѿ�
select ��, ����, avg(����) �������
from ����
group by ��,���� with rollup 

-- 2.����>�� ������ �Ѿ�
select ����, ��, avg(����) �������
from ����
group by ����, �� with rollup 

--3. cube. 1��, 2�� ���ÿ� �Ѱ�
select ��, ����, avg(����) �������
from ����
group by ��,���� with cube -- �ֱ� ������ ��Ʈ�� �ȵǼ� order by �߰�
order by �� desc, ���� desc -- ���� ���� ���� NULL�� ������ ��µǱ� ������ desc�� ���ش�.

-- 4. group by all
-- 5. 