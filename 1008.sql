select 주문고객, sum(수량) as 총주문수량 from 주문
    group by 주문고객;
    
select 주문고객, sum(수량) as 총주문수량 from 주문
    group by 주문제품, 주문고객
    order by 주문제품;
    
select * from 주문, 제품
    where 주문제품 = 제품번호;
    
select 주문번호, 주문고객, 제품명, 단가, 제조업체 from 주문, 제품
    where 주문제품 = 제품번호;

select 주문번호, 주문고객, 고객이름, 제품명, 단가, 수량, 제조업체 from 주문, 제품, 고객
    where 주문제품 = 제품번호 and 주문고객 = 고객아이디;

select 제품명 from 제품, 주문 
    where 주문제품 = 제품번호 and 주문고객 = 'apple';
    
select distinct 고객이름 from 고객, 제품, 주문
    where 주문제품 = 제품번호 and 주문고객 = 고객아이디 and 제품명 = '감자만두';
    
select 고객아이디, 고객이름, 나이, 등급, 직업, 적립금, 제품번호, 제품명, 단가, 수량, 배송지, 주문일자 from 고객, 제품, 주문
    where 주문제품 = 제품번호 and 주문고객 =고객아이디 and 제품명 = '감자만두';
    
select 주문제품, 주문일자, 고객이름 from 주문, 고객
    where 고객아이디 = 주문고객 and 나이>=25
    order by 주문제품;
    
select 제품명 from 고객, 제품, 주문
    where 주문제품 = 제품번호 and 주문고객 = 고객아이디 and 고객이름 = '고명석';
    
select distinct 제품명 from 고객, 제품, 주문
    where 주문제품 = 제품번호 and 주문고객 = 고객아이디 and 고객이름 = '정소화';
    
select 고객이름, 주문제품, 주문일자 from 고객 inner join 주문
    on 고객아이디 = 주문고객;
    
select 고객이름, 주문제품, 주문일자 from 고객 inner join 주문
    on 고객아이디 = 주문고객 
    where 고객이름 like '정%' or 고객이름 like '김%' or 고객이름 like '고%';
    
select 고객이름, 주문제품, 주무일자 from 고객,주문 where 고객아이디 = 주문고객;
select 고객이름, 주문제품, 주문일자 from 고객 left outer join 주문 on 고객아이디 = 주문고객;
select 고객이름, 주문제품, 주문일자 from 주문 right outer join 고객 on 고객아이디 = 주문고객;
    
