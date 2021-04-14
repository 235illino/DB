select * from product, type where type.name = 'СЫР' and product.type_id = type.id;

select * from product where name like '%мороженное%';

select * from product where expired_date < current_date + interval '1 month';

SELECT * FROM product WHERE price IN (SELECT MAX(price) FROM product);

select type.name, count(*) as prod_count from type, product where product.type_id = type.id group by type.name;

select * from product, type where type.name = 'СЫР' and product.type_id = type.id or type.name = 'МОЛОКО'  and product.type_id = type.id;

select type.name, count(*) <10 as prod_count from type, product where product.type_id = type.id group by type.name;

select * from product, type where product.type_id = type.id;
