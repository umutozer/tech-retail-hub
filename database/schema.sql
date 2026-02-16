-- KATEGORİLER
create table categories (
    id serial primary key,
    name varchar(50) not null unique,
    slug varchar(50) not null unique,
    description text,
    image_url varchar(255),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create index idx_categories_slug on categories(slug);

-- MARKALAR
create table brands (
    id serial primary key,
    name varchar(50) not null unique,
    logo_url varchar(255),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create index idx_brands_name on brands(name);

-- ÜRÜNLER
create table products (
    id serial primary key,
    category_id int not null references categories(id) on delete cascade,
    brand_id int not null references brands(id) on delete cascade,
    name varchar(100) not null,
    slug varchar(120) not null unique,
    short_desc text,
    long_desc text,
    price numeric(10,2) not null check (price >= 0),
    discount_price numeric(10,2) check (discount_price >= 0),
    stock int not null default 0 check (stock >= 0),
    featured boolean default false,
    images jsonb,
    meta jsonb,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create index idx_products_category on products(category_id);
create index idx_products_brand on products(brand_id);
create index idx_products_featured on products(featured) where featured = true;
create index idx_products_price on products(price);

-- TEKNİK ÖZELLİKLER
create table specifications (
    id serial primary key,
    product_id int not null references products(id) on delete cascade,
    spec_key varchar(50) not null,
    spec_value varchar(255) not null,
    created_at timestamp default current_timestamp,
    unique(product_id, spec_key)
);
create index idx_specs_product on specifications(product_id);

-- KULLANICILAR (ADMİN)
create table users (
    id serial primary key,
    email varchar(120) not null unique,
    password_hash varchar(255) not null,
    full_name varchar(100) not null,
    role varchar(20) not null default 'admin' check (role in ('admin','super')),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create index idx_users_email on users(email);

-- TEKLİF / İLETİŞİM FORMU
create table inquiries (
    id serial primary key,
    type varchar(20) not null check (type in ('offer','contact')),
    full_name varchar(100) not null,
    email varchar(120) not null,
    phone varchar(20),
    subject varchar(150),
    message text not null,
    product_id int references products(id) on delete set null,
    status varchar(20) default 'new' check (status in ('new','read','replied','closed')),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create index idx_inquiries_type on inquiries(type);
create index idx_inquiries_status on inquiries(status);
create index idx_inquiries_created on inquiries(created_at desc);