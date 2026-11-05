select * from 주문
    where 주문일자 ='2026-08-01';
    
select 고객이름 from 고객
    where EXISTS(
         select * from 주문
            where 주문일자 = '2026-08-01' and 주문고객=주문아이디;
            
create view 업체별제품수(제조업체, 제품수)  
    as select 제조업체, count(*) 제품수 from 제품 group by 제조업체
        with check option;
        
select * from 우수고객 
    where 나이 >= 30;
    
create view 제품1
    as select 제품번호, 재고량, 제조업체 from 제품
    with check option;
    
select * from 제품1;