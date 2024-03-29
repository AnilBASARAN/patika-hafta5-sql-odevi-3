--country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
--country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
--film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
--film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
--Kolay Gelsin.

-----------------------------------------------

SELECT country FROM country
WHERE country ~~* 'A%a'; 

-----------------------------------------------

SELECT country FROM country
WHERE country LIKE '%_____a'; 

-----------------------------------------------

SELECT title FROM film
WHERE  (title ~~* '%___T%') OR ( title ~~*'%T___%') OR ( title ~~*'%_T__%') OR (title ~~*'%__T_%');

-- ALTERNATİF OLARAK

SELECT title
FROM film
WHERE title ~~* '%t%' AND LENGTH(title) >= 4;
-- LENGTH() fonksiyonu hücredeki stringin karakter sayısını döner, String.length() gibi

-----------------------------------------------

SELECT * FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;
--son