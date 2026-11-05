select avg(나이) as 고객나이평균 from 고객;

select round(avg(나이), 2) 나이평균 from 고객
    where 고객이름 like '김%' or 고객이름 like '최%' or 고객이름 like '오%';
    
select round(avg(단가), 3) 단가평균 from 제품
    where 제조업체 in('한빛제과', '대한식품');
    
select to_char(avg(단가), 'FM990.000') 단가평균 from 제품
    where 제조업체 in('한빛제과', '대한식품');
    
select sum(재고량) from 제품
    where 제조업체 = '한빛제과';
    
select * from 고객;
select count(고객이름) from 고객;
select count(나이) from 고객;

SELECT COUNT(제조업체) 제품수 FROM 제품
    where 제조업체 in('대한식품');\
    
select sum(수량) "수량의 합계", count(주문번호) "제품의 개수" from 주문
    where 주문고객='apple';
    
select distinct 제조업체 from 제품;

select count(distinct 제조업체) 참여제조업체수 from 제품
    where 제조업체 like '%한%';
    
select * from 주문;

select 주문고객, sum(수량) 총주문수량 from 주문
    group by 주문고객;
    
select 제조업체, count(*) 제품수, max(단가) 최고가 from 제품
    group by 제조업체
    having count(*) >= 3;
    
select * from 고객;

select 직업, max(나이) 최고령나이, min(나이) 최연소나이 from 고객
    group by 직업
    having sum(적립금) < 2000;
    