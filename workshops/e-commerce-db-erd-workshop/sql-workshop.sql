select id, name
from categories;
select *
from categories;
select *
from products;

-- WHERE
-- AND
select *
from products
where stock > 75
  and category_id = 2;
-- OR
select *
from products
where stock > 75
   or category_id = 2;
-- NOT
select *
from products
where not stock > 75;
-- LENGTH()
select *
from products
where length(name) > 5;
select id, length(name) as "Ürün İsim Karakter Uzunluğu"
from products;
-- COUNT(), AS
select count(*) as "Ürün Adedi"
from products;
-- SUM()
select sum(stock) as "Toplam Ürün Stok Adedi"
from products;
-- AVG()
select avg(stock)
from products;
-- ORDER BY
select *
from products
order by stock desc;
select *
from products
order by name;

select *
from products
where stock > 60
order by stock desc;
-- LIKE, LOWER()
select *
from products
where lower(name) like 'g%';
-- 4. harfi a olan ürünü getir
select *
from products
where lower(name) like '___a%';
-- MIN(), MAX()
select MIN(stock)
from products;
select MAX(stock)
from products;
-- İÇ İÇE SORGULAR
-- Stok adedi en az olan ürünün adı
select name
from products
where stock = (select min(stock) from products);
-- Stok adedi ortalamanın üstünde olan ürünlerin adı
select name
from products
where stock > (select avg(stock) from products);

-- JOIN
-- INNER JOIN, alias
select p.name, c.name
from products p
         inner join categories c
                    on p.category_id = c.id

-- FULL OUTER
select *
from products p
         full outer join categories c
                         on p.category_id = c.id

-- INSERT INTO
    insert
into products(name, unit_price, stock, category_id)
values ('Sweat', 200, 50, 3)

-- UPDATE SET
update products
set stock = 40
where id = 5

-- DELETE FROM
delete
from products
where id = 4

-- GROUP BY
select category_id, count(*)
from products
group by category_id

select category_id, id
from products
group by category_id, id

-- HAVING
select category_id, count(*)
from products
group by category_id
having count(*) > 1

-- Kategori ismi ile ilgili kategoride kaç adet ürün bulunduğunu yazdırınız. Sadece 1'den yüksek ürünler
select c.name as "Kategori", count(*) as "Ürün Sayısı"
from products p
         inner join categories c
                    on p.category_id = c.id
group by c.name
having count(*) > 1













