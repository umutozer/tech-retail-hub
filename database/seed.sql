-- KATEGORİLER
insert into categories (name, slug, description, image_url) values
('Telefon', 'telefon', 'Akıllı cep telefonları ve aksesuarlar','/img/cat-phone.jpg'),
('Bilgisayar', 'bilgisayar', 'Dizüstü ve masaüstü bilgisayarlar','/img/cat-pc.jpg');

-- MARKALAR
insert into brands (name, logo_url) values
('Apple','/img/apple.png'),
('Samsung','/img/samsung.png'),
('Huawei','/img/huawei.png'),
('Lenovo','/img/lenovo.png'),
('Asus','/img/asus.png'),
('MSI','/img/msi.png');

-- ÜRÜNLER
insert into products (category_id, brand_id, name, slug, short_desc, long_desc, price, discount_price, stock, featured, images) values
(1,1,'iPhone 15 Pro 256GB','iphone-15-pro-256gb','Titanium kasa, A17 Pro çip, 48 MP kamera','iPhone 15 Pro, en gelişmiş kamera sistemimiz, güçlü A17 Pro çip ve titanyum tasarımıyla şimdi daha da güçlü.','64999',null,25,true,'["/img/iphone15pro_1.jpg","/img/iphone15pro_2.jpg"]'),
(1,2,'Galaxy S24 Ultra 256GB','galaxy-s24-ultra-256gb','Snapdragon 8 Gen 3, 200MP kamera, S Pen','Galaxy S24 Ultra, AI destekli 200 MP kamera, 6.8" QHD+ AMOLED ve S Pen ile üretkenliğin zirvesi.','57999',54999,30,true,'["/img/s24ultra_1.jpg","/img/s24ultra_2.jpg"]'),
(1,3,'Mate 60 Pro','mate-60-pro','Kirin 9000S, 50 MP Ultra Aperture kamera','Huawei Mate 60 Pro, güçlü donanımı ve HarmonyOS ile dikkat çekiyor.','42999',null,15,false,'["/img/mate60pro_1.jpg"]'),
(2,4,'Legion Slim 7 16"','lenovo-legion-slim7-16','Ryzen 9 7940HS, RTX 4070, 165Hz','İnce ve hafif gaming laptop; güçlü performans, taşınabilirlik.','52999',null,12,false,'["/img/legionslim7_1.jpg"]'),
(2,5,'ROG Zephyrus G14','asus-rog-zephyrus-g14','Ryzen 9 8940HS, RTX 4060, 165Hz','14" gaming gücü; mini-LED ekran, 1.65kg.','48999',null,18,true,'["/img/zephyrusg14_1.jpg"]'),
(2,6,'Stealth 14 AI Studio','msi-stealth-14-ai-studio','Intel Core Ultra 9, RTX 4090, 120Hz','AI destekli üretkenlik ve yüksek oyun performansı.','75999',69999,8,true,'["/img/stealth14ai_1.jpg"]');

-- TEKNİK ÖZELLİKLER
insert into specifications (product_id, spec_key, spec_value) values
(1,'Ekran','6.1" Super Retina XDR'),
(1,'İşlemci','A17 Pro'),
(1,'RAM','8 GB'),
(1,'Depolama','256 GB'),
(1,'Kamera','48 MP Ana + 12 MP Ultra Geniş'),
(1,'Batarya','3274 mAh'),
(2,'Ekran','6.8" QHD+ AMOLED 120Hz'),
(2,'İşlemci','Snapdragon 8 Gen 3'),
(2,'RAM','12 GB'),
(2,'Depolama','256 GB'),
(2,'Kamera','200 MP Ana + 50 MP Ultra Geniş'),
(2,'Batarya','5000 mAh'),
(3,'Ekran','6.82" OLED 120Hz'),
(3,'İşlemci','Kirin 9000S'),
(3,'RAM','12 GB'),
(3,'Depolama','512 GB'),
(3,'Kamera','50 MP Ultra Aperture'),
(3,'Batarya','5000 mAh'),
(4,'Ekran','16" WQXGA 165Hz'),
(4,'İşlemci','AMD Ryzen 9 7940HS'),
(4,'Ekran Kartı','RTX 4070 8 GB'),
(4,'RAM','32 GB DDR5'),
(4,'Depolama','1 TB NVMe'),
(4,'Ağırlık','2.1 kg'),
(5,'Ekran','14" 2.5K mini-LED 165Hz'),
(5,'İşlemci','AMD Ryzen 9 8940HS'),
(5,'Ekran Kartı','RTX 4060 8 GB'),
(5,'RAM','32 GB LPDDR5X'),
(5,'Depolama','1 TB NVMe'),
(5,'Ağırlık','1.65 kg'),
(6,'Ekran','14" QHD+ 120Hz'),
(6,'İşlemci','Intel Core Ultra 9 185H'),
(6,'Ekran Kartı','RTX 4090 16 GB'),
(6,'RAM','32 GB LPDDR5X'),
(6,'Depolama','2 TB NVMe'),
(6,'Ağırlık','1.7 kg');

-- ADMIN KULLANICI
insert into users (email, password_hash, full_name, role) values
('admin@techretail.com','$2a$11$rQbAoLUM9qXy4fFm1cY9ruj0PGuPDBpjsWJ9AJ90hZwJKG8J8fR6O','Sistem Yöneticisi','super');