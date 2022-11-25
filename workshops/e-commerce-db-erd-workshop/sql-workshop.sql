select id,name from categories;
select * from categories;
select * from products;

-- WHERE
-- AND
select * from products where stock > 75 and category_id = 2;
-- OR
select * from products where stock > 75 or category_id = 2;
-- NOT
select * from products where not stock > 75;
-- LENGTH()
select * from products where length(name) > 5;
select id, length(name) as "Ürün İsim Karakter Uzunluğu" from products;
-- COUNT(), AS
select count(*) as "Ürün Adedi" from products;
-- SUM()
select sum(stock) as "Toplam Ürün Stok Adedi" from products;
-- AVG()
select avg(stock) from products;
-- ORDER BY
select * from products order by stock desc;
select * from products order by name;

select * from products where stock > 60 order by stock desc;
-- LIKE, LOWER()
select * from products where lower(name) like 'g%';
-- 4. harfi a olan ürünü getir
select * from products where lower(name) like '___a%';
-- MIN(), MAX()
select MIN(stock) from products;
select MAX(stock) from products;
-- İÇ İÇE SORGULAR
-- Stok adedi en az olan ürünün adı
select name from products where stock = (select min(stock) from products);
-- Stok adedi ortalamanın üstünde olan ürünlerin adı
select name from products where stock > (select avg(stock) from products);

-- JOIN
 -- INNER JOIN, alias
select p.name, c.name from products p
inner join categories c
on p.category_id = c.id












