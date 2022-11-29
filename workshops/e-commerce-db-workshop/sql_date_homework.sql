-- 2000'den önce doğanları gösteren sorgu
select first_name, last_name, birth_date from individual_customers
where date_part('year', birth_date) < 2000

-- Kullanıcıların yaşlarını getiren sorgu
select first_name, last_name, (date_part('year', current_date) - date_part('year', birth_date)) as "Yaş" from individual_customers

-- Kullanıcıları yaşlarına göre sıralama
select first_name, last_name, (date_part('year', current_date) - date_part('year', birth_date)) as "Yaş" from individual_customers
order by birth_date desc

-- Yaşı 23'ten büyük olan müşteriler
select first_name, last_name, (date_part('year', current_date) - date_part('year', birth_date)) as "Yaş" from individual_customers
where (date_part('year', current_date) - date_part('year', birth_date)) > 23

-- Son bir yıl içerisindeki siparişler
select * from orders
where (date_part('years', order_date::timestamp)) > 2021

-- Son 30 gün içerisindeki faturalar
select * from invoices
where (date_part('day', current_date::timestamp-created_date::timestamp)) <= 30 

-- Siparişlerin hangi ayda verildiği
select order_number as "Sipariş No", extract(month from order_date) as "Ay" from orders 
group by order_number, order_date

-- Hangi ayda kaç adet sipariş verildi?
select count(*), extract(month from order_date) as "Ay" from orders 
group by extract(month from order_date)

-- 3 yıldır şirket çalışanı olan kişiler
select * from employees 
where (date_part('year', employment_date)) > 2019

-- Hangi ayda kaç kişi istihdam edildi?
select count(*), extract(month from employment_date) as "Ay" from employees 
group by extract(month from employment_date)

