 -- 2022.04.12. 6���� ������ ����

 -- ������� : �����Լ��� ����ؼ� ���ϰ��� ����� ���
 -- min(), max(), sum(), avg(), count()
 -- �⺻������ �����Լ��� NULL�� �����ϰ� ����Ѵ�.

 select min(����) ���峷������
 from ����

 select max(����) �����������
 from ����

 select sum(����) ��������
 from ����

 select avg(����) ���
 from ����

 select count(*) ��ü�ళ��
 from ����

 select count(*)
 from ��ǰ

 select count(����) 
 from ��ǰ

 -- �׷���

 select avg(����) ������� --�׷������� �ʾ�����
 from ����

 select ��, avg(����) ������� --�׷����Ҷ� �ʵ���� ���� ���ֱ�
 from ����
 group by �� -- �׷��������� 

 select ����, avg(����) ������� -- select �ʵ��, �Լ�() �ʵ��
 from ����
 group by ���� -- �׷��������� 

 select ����, count(*) ��ǰ�Ǽ� --�׷����Ҷ� �ʵ���� ���� ���ֱ�
 from ��ǰ
 group by ���� -- �׷��������� 