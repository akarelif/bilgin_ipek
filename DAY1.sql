-- ===================SELECT-WHERE======================

 create table ogrenciler (
id int,
isim varchar(45),
adres varchar(100),
sinav_notu int
)

 INSERT INTO ogrenciler (123, 'Ali Can',  'Ankara',75);
 INSERT INTO ogrenciler (124, 'Merve Gül', 'Ankara',85);
 INSERT INTO ogrenciler (125,  'Kemal Yasa', 'Istanbul',85);
 
select * from ogrenciler;
 /*
 ============================================================================
 Verileri SEÇ Select komutu ile çekerken eden
 Sözdizimi
   --------
 İle birlikte WHERE komutu kullanıcıyı seçin.
 SEÇKİn sutün1, sütün2
        ...
 tablo_ad ı NEREDE KENDinden;
==============================================================================
 */
 
 /*
 -----------------------------------------------------------------------------
 ORNEK1: Sınav notu 80'den büyük olan tüm bilgilerini listele
 -----------------------------------------------------------------------------
 */
 select * from ogrenciler
where sinav_notu>80;
 /*
 -----------------------------------------------------------------------------
 ORNEK2: Adresi Ankara olan şeyi ve adres adres bilgilerini listele
 -----------------------------------------------------------------------------
 */
 select isim,adres from ogrenciler
 where adres='Ankara';
 /*
 -----------------------------------------------------------------------------
 ORNEK3: id'si 124 olan olan tüm bilgilerini listele
 -----------------------------------------------------------------------------
 */
 select * from ogrenciler
 where id=124;
 /*
 ========================SECELT-BEYWEEN==============================
 */
  CREATE TABLE personel
    (   
        id CHAR(5),
        isim VARCHAR(50),
        maas int
    );

    INSERT INTO personel ('10001',  'Ahmet Aslan', 7000);
    INSERT INTO personel ('10002',  'Mehmet Yılmaz'  ,12000);
    INSERT INTO personel ('10003',  'Meryem', 7215);
    INSERT INTO personel ('10004',  'Veli Han', 5000);
    INSERT INTO personel ('10005',  'Mustafa Ali', 5500);
    INSERT INTO personel ('10005',  'Ayşe Can', 4000);personelpersonelogrenciler
    
/* Not= between iki mantiksal ifade ile tanimlayabilecegimiz durumlari tek komutla yazabilme imkani saglar
   yazdigimiz iki sinirda araliga dahildir.
========================================================================
 Ve (Ve) BaşkanıLarınız
Ve ile belirtilenn şekilde şekilde şekilde o kayıt listelenir, cenin
bir tanesi bile tutmazsa listez.
SEÇKİn * SINAV1'in 50 < VE SINAV2'nin 50 < OLDUĞU MATEMATIK'TEN
Bu örnekte hem sınav1 hem de sınav2 alanı 50'den küçük olanlenmeye liste listetir.
=====Veya (ya) Başkanı Yaşındaki=====
Ya da ile ile mühimmat belirtilenn en az biri eder o kayıt listelenir,
kocaman hiçbiri hiçbiri hiçbiri o kayıt listelenmez.
SEÇKİn * SINAV1'İn 50 VEYA SINAV2 < 50 < MATEMATIK'TEN
Bu örnekte sınav1 ya da sınav2 alanı 50'den küçük olanlara listeletir.
========================================================================================*/

 /*
 -----------------------------------------------------------------------------
 ORNEK4: id'si 10002 ile 10005 arasında olan bilinen bilgilerini listele
 -----------------------------------------------------------------------------
 */
 -- 1. yol
 select * from personel
 where id between '10002' and '10005';
 -- 2. yol mathematiksel
 select * from personel
 where id >='10002' and '10005';
 
 /*
 -----------------------------------------------------------------------------
 ORNEK5: İsmi Mehmet Yılmaz ile Veli Han ile olan personel bilgilerini
 listeleyiniz. olan bilgilerini listele
 -----------------------------------------------------------------------------
 */
  select * from personel
 where isim between 'Mehmet Yilmaz' and 'Veli Han';
 
 /* ========================= SECELT-IN ===============================================
 IN birden mantıksal ifade ile danışikli durumlarda 
    tek komutla yazabilme imkânı verir
 SÖZDİZİMİ:
    -------
 SEÇKİn sutun1,sutun2, ...
 FROM tablo_ad ı
 NEREDE sutun_ad ı IN (değer1, değer2, ...);
/* ========================================================================== */
    
/* -----------------------------------------------------------------------------
 ORNEK7: id'si 10001,10002 ve 10004 olan bilinen bilgilerini listele
 -----------------------------------------------------------------------------*/   
 -- 1.yol
  select * from personel
 where id ='10001' or id='10002' or id='10004';
 -- 2.yol 
 select * from personel
 where id in(10001,10002,10004);
 
 
 /* --------------------------------------------------------------------------
 ORNEK8: Maaşı yeşr 7000 ya da 12000 olan olan bilinen listele
 -----------------------------------------------------------------------------*/
  
 select * from personel
 where id in(7000,12000);
 -- not
 -- dogru yazim
 
 select * from personel
 where maas=7000 or isim='Meryem';
 -- yanlis yazim
 select * from personel
 where maas in(7000,'Meryem');
 
 
 /* --------------------------------------------------------------------------
 ORNEK9: İsmi A ile harfi başlangıçları listeleyiniz
 -----------------------------------------------------------------------------*/
 select * from personel where ('a %')  ;  -- % butun anlar
 
 /* --------------------------------------------------------------------------
  ORNEK10: ismi N harfi ile bitenleri listeleyiniz
 -----------------------------------------------------------------------------*/
 select * from personel
 where '%n' ;
 
 /* --------------------------------------------------------------------------
  ORNEK11: isminin ikinci harfi E olanlari listeleyiniz
 -----------------------------------------------------------------------------*/
 select * from personel where isim like '_e%';
 
 /* --------------------------------------------------------------------------
  ORNEK12: isminin ikinci harfi E olup diger harflerinde y olanlari listeleyiniz
 -----------------------------------------------------------------------------*/
 select * from personel where isim like '_e%y%';
 
 /* -----------------------------------------------------------------------------
  ORNEK13:  ismi A ile başlamayanları listeleyiniz
 -----------------------------------------------------------------------------*/    
    SELECT * FROM personel
    WHERE isim NOT LIKE 'A%';
/* -----------------------------------------------------------------------------
  ORNEK14:  ismi n ile bitmeyenleri listeleyiniz
 -----------------------------------------------------------------------------*/
    SELECT * FROM personel
    WHERE isim NOT LIKE '%n';
 
 /* --------------------------------------------------------------------------
  ORNEK15:  isminde a harfi olmayanları listeleyiniz
 -----------------------------------------------------------------------------*/
 select * from personel where isim not like '%a%';
 
  /* -----------------------------------------------------------------------------
  ORNEK16:  maaşının son 2 hanesi 00 olmayanları listeleyiniz
 -----------------------------------------------------------------------------*/  
    SELECT * FROM personel
    WHERE maas NOT LIKE '%00';
    
      
    
/* -----------------------------------------------------------------------------
  ORNEK17:  maaşının 4000 olmayanları listeleyiniz
 -----------------------------------------------------------------------------*/  
    SELECT * FROM personel
    WHERE maas NOT LIKE 4000;
 
 /* -----------------------------------------------------------------------------
  ORNEK18: maaşı 5 haneli olanları listeleyiniz
 -----------------------------------------------------------------------------*/  
 SELECT * FROM personel
    WHERE maas LIKE '_____'; -- 5 alt tire
 
 /* -----------------------------------------------------------------------------
  ORNEK20: 1. harfi A ve 7.harfi A olan perspneli listeleyiniz.
 -----------------------------------------------------------------------------*/  
 SELECT * FROM personel
    WHERE isim LIKE 'a_____a%';
    
   /* 
    ====================== SELECT - REGEXP_LIKE ================================
    Daha karmaşık pattern ile sorgulama işlemi için REGEXP_LIKE kullanılabilir.  
     -- 'c' => case-sentisitive demektir 
     -- 'i' => incase-sentisitive demektir ve default incase-sensitive aktiftir..
    Syntax:
    --------
    REGEXP_LIKE(sutun_adı, ‘pattern[] ‘, ‘c’ ] ) */
            
/* ========================================================================== */
    
    CREATE TABLE kelimeler
    (
        id int UNIQUE,
        kelime VARCHAR(50) NOT NULL,
        harf_sayisi int
    );
    
    INSERT INTO kelimeler VALUES (1001, 'hot', 3);
    INSERT INTO kelimeler VALUES (1002, 'hat', 3);
    INSERT INTO kelimeler VALUES (1003, 'hit', 3);
    INSERT INTO kelimeler VALUES (1004, 'hbt', 3);
    INSERT INTO kelimeler VALUES (1005, 'hct', 3);
    INSERT INTO kelimeler VALUES (1006, 'adem', 4);
    INSERT INTO kelimeler VALUES (1007, 'selim', 5);
    INSERT INTO kelimeler VALUES (1008, 'yusuf', 5);
    INSERT INTO kelimeler VALUES (1009, 'hip', 3);
    INSERT INTO kelimeler VALUES (1010, 'HOT', 3);
    INSERT INTO kelimeler VALUES (1011, 'hOt', 3);
    INSERT INTO kelimeler VALUES (1012, 'h9t', 3);
    INSERT INTO kelimeler VALUES (1013, 'hoot', 4);
    INSERT INTO kelimeler VALUES (1014, 'haaat', 5);
    INSERT INTO kelimeler VALUES (1015, 'hooooot', 7);
    INSERT INTO kelimeler VALUES (1016, 'hototototot', 7);
    
    DROP TABLE kelimeler;
   
    
    
    
/* -----------------------------------------------------------------------------
  ORNEK22: İçerisinde 'ot' veya 'at' bulunan kelimeleri küçük harfe dikkat
  ederek listeleyiniz 
 -----------------------------------------------------------------------------*/ 
    -- VEYA işlemi için | karakteri kullanılır.
    
    select * from kelimeler where REGEXP_LIKE(kelime, 'at|ot', 'c');
    
    
   
/* -----------------------------------------------------------------------------
  ORNEK23: İçerisinde 'ot' veya 'at' bulunan kelimeleri büyük-küçük harfe dikkat
  etmeksizin listeleyeniz
 -----------------------------------------------------------------------------*/ 
   
   select * from kelimeler where REGEXP_LIKE(kelime, 'at|ot');
   
      
   
 /* -----------------------------------------------------------------------------
  ORNEK24: 'ho' veya 'hi' ile başlayan kelimeleri büyük-küçük harfe dikkat
  etmeksizin listeleyeniz
 -----------------------------------------------------------------------------*/   
     -- Başlangıcı göstermek için ^ karakteri kullanılır.
  select * from kelimeler where REGEXP_LIKE(kelime, '^ho|^hi');  
    
    
/* -----------------------------------------------------------------------------
  ORNEK25: Sonu 't' veya 'm' ile bitenleri büyük-küçük harfe dikkat
  etmeksizin listeleyeniz. (i yazmaya gerek yok)
 -----------------------------------------------------------------------------*/   
     -- Bitişi göstermek için $ karakteri kullanılır.
select * from kelimeler where REGEXP_LIKE(kelime, 't$|m$');    

/* -----------------------------------------------------------------------------
  ORNEK26: h ile başlayıp t ile biten 3 harfli kelimeleri (h ile t küçük harfli 
  olanlari) listeleyeniz
 -----------------------------------------------------------------------------*/ 
 select * from kelimeler where REGEXP_LIKE(kelime, 'h[a-zA-Z0-9]t', 'c'); -- [] bir karekter demek
 select * from kelimeler where kelime LIKE('h_t'); -- kucuk harfe dikkat etmiyor
     
/* -----------------------------------------------------------------------------
  ORNEK27: İlk harfi h, son harfi t olup 2.harfi a veya i olan 3 harfli 
  kelimelerin tüm bilgilerini sorgulayalım.
 -----------------------------------------------------------------------------*/ 
  select * from kelimeler where REGEXP_LIKE(kelime, 'h[a|i]t');
  select * from kelimeler where kelime LIKE(kelime,  'h[ai]t');
   
/* -----------------------------------------------------------------------------
 ORNEK28: İçinde m ya ya e olan basman tüm bilgilerini listeleyiniz.
 -----------------------------------------------------------------------------*/     
    select * from kelimeler where REGEXP_LIKE (kelime,'m|i|e' );
    select * from kelimeler where REGEXP_LIKE(kelime,  '[mie]' );
 
/* -----------------------------------------------------------------------------
 ORNEK29: a ya s ile ilgili dedin tüm bilgilerini listeleyiniz.
-----------------------------------------------------------------------------*/ 
 select * from kelimeler where REGEXP_LIKE(kelime,  '^a|^s'  );
 select * from kelimeler where REGEXP_LIKE(kelime, '^[as]' );
 
/* -----------------------------------------------------------------------------
 ORNEK30: en az 2 adet oo barıdıran basman tüm bilgilerini 
  listeleyiniz.
-----------------------------------------------------------------------------*/
   select * from kelimeler where REGEXP_LIKE(kelime,  '[o][o]' ); 
   select * from kelimeler where REGEXP_LIKE ('%oo%' );
    select * from kelimeler where REGEXP_LIKE(kelime,  '[o]{2}');  -- {2} en az 2 tane getir
   select * from kelimeler where REGEXP_LIKE (kelime,  '[o]... ' );  -- en az iki
   