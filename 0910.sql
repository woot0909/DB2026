select 고객이름, 나이, 직업
    from 고객
    where 나이 >= 20 and 나이 <= 30;
    
select 고객이름, 나이, 적립금
    from 고객
    where 고객이름 like '김%';
    
select 고객이름, 나이 
    from 고객
    where 고객이름 like '%용%';
    