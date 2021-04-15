select * from product where expired_date between date_trunc('month', CURRENT_DATE) + interval '1 month' and date_trunc('month', CURRENT_DATE) + interval '2 month - 1 day';

select * from product inner join type on product.type_id = type.id and (type.name = 'СЫР' or type.name = 'МОЛОКО');
