USE tempdb;
GO

IF EXISTS (SELECT name FROM master.sys.databases WHERE name = N'Hotel_Realta')
BEGIN
    ALTER DATABASE Hotel_Realta SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
END

DROP DATABASE IF EXISTS Hotel_Realta;
GO

CREATE DATABASE Hotel_Realta;
GO

USE Hotel_Realta;
GO

CREATE SCHEMA Users;
GO

CREATE SCHEMA Master;
GO

CREATE SCHEMA Hotel;
GO

CREATE SCHEMA HR;
GO

CREATE SCHEMA Booking;
GO

CREATE SCHEMA Resto;

GO

CREATE SCHEMA Payment;  --pagos--
GO

CREATE SCHEMA Purchasing;	 --pagos--
GO

-- MODULE MASTERS --
CREATE TABLE Master.regions (
  region_code int IDENTITY(1, 1),
  region_name nvarchar(35) UNIQUE NOT NULL,
  CONSTRAINT pk_region_code PRIMARY KEY(region_code)
);

CREATE TABLE Master.country (
  country_id int IDENTITY(1, 1),
  country_name nvarchar(55) UNIQUE NOT NULL,
  country_region_id int,
  CONSTRAINT pk_country_id PRIMARY KEY (country_id),
  CONSTRAINT fk_country_region_id FOREIGN KEY(country_region_id) REFERENCES Master.regions(region_code)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Master.provinces (
  prov_id int IDENTITY (1, 1),
  prov_name nvarchar(85) NOT NULL,
  prov_country_id int CONSTRAINT pk_prov_id PRIMARY KEY(prov_id),
  CONSTRAINT fk_prov_country_id FOREIGN KEY(prov_country_id) REFERENCES Master.country(country_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Master.address (
  addr_id int IDENTITY(1, 1),
  addr_line1 nvarchar(255) NOT NULL,
  addr_line2 nvarchar(255),
  addr_city NVARCHAR(25) NOT NULL,
  addr_postal_code nvarchar(5),
  addr_spatial_location NVARCHAR(100),
  addr_prov_id int,
  CONSTRAINT pk_addr_id PRIMARY KEY(addr_id),
  CONSTRAINT fk_addr_prov_id FOREIGN KEY(addr_prov_id) REFERENCES Master.provinces(prov_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


CREATE TABLE Master.category_group (
  cagro_id int IDENTITY(1, 1),
  cagro_name nvarchar(25) UNIQUE NOT NULL,
  cagro_description nvarchar(255),
  cagro_type nvarchar(25) NOT NULL CHECK (cagro_type IN('category', 'service', 'facility')),
  cagro_icon nvarchar(255),
  cagro_icon_url nvarchar(255),
  CONSTRAINT pk_cagro_id PRIMARY KEY(cagro_id)
);

CREATE TABLE Master.policy (
  poli_id int IDENTITY(1, 1),
  poli_name nvarchar(55) NOT NULL,
  poli_description nvarchar(255),
  CONSTRAINT pk_poli_id PRIMARY KEY(poli_id)
);

CREATE TABLE Master.policy_category_group (
  poca_poli_id int NOT NULL,
  poca_cagro_id int NOT NULL,
  CONSTRAINT fk_poca_poli_id FOREIGN KEY(poca_poli_id) REFERENCES Master.policy(poli_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT fk_poca_cagro_id FOREIGN KEY(poca_cagro_id) REFERENCES Master.category_group(cagro_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Master.price_items (
  prit_id int IDENTITY(1, 1),
  prit_name nvarchar(55) UNIQUE NOT NULL,
  prit_price money NOT NULL,
  prit_description nvarchar(255),
  prit_type nvarchar(15) NOT NULL CHECK (prit_type IN ('SNACK', 'FACILITY', 'SOFTDRINK', 'FOOD', 'SERVICE')),
  prit_icon_url NVARCHAR(255),
  prit_modified_date datetime,
  CONSTRAINT pk_prit_id PRIMARY KEY(prit_id)
);

CREATE TABLE Master.service_task (
  seta_id int IDENTITY(1, 1),
  seta_name nvarchar(85) UNIQUE NOT NULL,
  seta_seq smallint CONSTRAINT pk_set_id PRIMARY KEY(seta_id)
);

CREATE TABLE Master.members (
  memb_name nvarchar(15) NOT NULL,
  memb_description nvarchar(255),
  CONSTRAINT pk_memb_name PRIMARY KEY(memb_name)
);

-- MODULE USERS	--
CREATE TABLE Users.users (
  user_id int IDENTITY(1,1) NOT NULL,
  user_full_name nvarchar (55) DEFAULT 'guest' NOT NULL,
  user_type nvarchar (15) CHECK(user_type IN('T','C','I')),
  user_company_name nvarchar (255),
  user_email nvarchar(256),
  user_phone_number nvarchar (25) UNIQUE NOT NULL,
  user_modified_date datetime,
	CONSTRAINT pk_user_id PRIMARY KEY(user_id)
);

CREATE TABLE Users.user_members (
  usme_user_id int,
  usme_memb_name nvarchar(15),
  usme_promote_date datetime,
  usme_points smallint,
  usme_type nvarchar(15) DEFAULT 'Expired',
	CONSTRAINT pk_usme_user_id PRIMARY KEY(usme_user_id),
	CONSTRAINT fk_usme_user_id FOREIGN KEY(usme_user_id) REFERENCES Users.users (user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT fk_usme_memb_name FOREIGN KEY (usme_memb_name) REFERENCES Master.members(memb_name)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Users.roles (
  role_id int IDENTITY(1,1),
  role_name nvarchar (35) NOT NULL,
	CONSTRAINT pk_role_id PRIMARY KEY(role_id)
);

CREATE TABLE Users.user_roles (
  usro_user_id int,
  usro_role_id int,
	CONSTRAINT pk_usro_user_id PRIMARY KEY(usro_user_id),
	CONSTRAINT fk_usro_user_id FOREIGN KEY (usro_user_id) REFERENCES Users.users(user_id)
	  ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT fk_usro_role_id FOREIGN KEY (usro_role_id) REFERENCES Users.roles(role_id)
	  ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Users.user_profiles (
  uspro_id int IDENTITY(1,1),
  uspro_national_id nvarchar (20) NOT NULL,
  uspro_birth_date date NOT NULL,
  uspro_job_title nvarchar (50),
  uspro_marital_status nchar(1) CHECK(uspro_marital_status IN('M','S')),
  uspro_gender nchar(1) CHECK(uspro_gender IN('M','F')),
  uspro_addr_id int,
  uspro_user_id int,
	CONSTRAINT pk_usro_id PRIMARY KEY(uspro_id),
	CONSTRAINT fk_uspro_user_id FOREIGN KEY (uspro_user_id) REFERENCES Users.users (user_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT fk_uspro_addr_id FOREIGN KEY (uspro_addr_id) REFERENCES Master.address (addr_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Users.bonus_points (
  ubpo_id int IDENTITY(1,1),
  ubpo_user_id int,
  ubpo_total_points smallint,
  ubpo_bonus_type nchar (1),
  ubpo_created_on datetime,
	CONSTRAINT pk_ubpo_id PRIMARY KEY(ubpo_id),
	CONSTRAINT fk_ubpo_user_id FOREIGN KEY (ubpo_user_id) REFERENCES Users.users (user_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE Users.user_password (
  uspa_user_id int IDENTITY(1,1),
  uspa_passwordHash varchar(128),
  uspa_passwordSalt varchar(10),
	CONSTRAINT pk_uspa_user_id PRIMARY KEY(uspa_user_id),
	CONSTRAINT fk_uspa_user_id FOREIGN KEY (uspa_user_id) REFERENCES users.users (user_id)
);

--MODULE HOTELS --
-- Create a new table called 'Hotels' in schema 'Hotel'
-- Drop the table if it already exists
IF OBJECT_ID('Hotel.Hotels', 'U') IS NOT NULL
DROP TABLE Hotel.Hotels
-- Create the table in the specified schema
CREATE TABLE Hotel.Hotels
(
  hotel_id int IDENTITY(1,1) NOT NULL CONSTRAINT hotel_id_pk PRIMARY KEY, -- primary key column
  hotel_name nvarchar(85) NOT NULL,
  hotel_description nvarchar(500) NULL,
  -- BEGIN UPDATE
  hotel_status BIT NOT NULL CHECK(hotel_status IN(0,1)),
  hotel_reason_status nvarchar(500) NULL,
  -- END UPDATE
  hotel_rating_star numeric(2,1) NULL,
  hotel_phonenumber nvarchar(25) NOT NULL,
  hotel_modified_date datetime NULL,
  -- Primary Key
  hotel_addr_id INT NOT NULL,
  hotel_addr_description nvarchar(500) NULL,
  -- Add this later, on production
  CONSTRAINT hotel_addr_id_fk FOREIGN KEY (hotel_addr_id) REFERENCES Master.Address(addr_id)
);

-- Create a new table called 'Hotel_Reviews' in schema 'Hotel'
-- Drop the table if it already exists
IF OBJECT_ID('Hotel.Hotel_Reviews', 'U') IS NOT NULL
DROP TABLE Hotel.Hotel_Reviews

-- Create the table in the specified schema
CREATE TABLE Hotel.Hotel_Reviews
(
  hore_id INT IDENTITY(1,1) NOT NULL CONSTRAINT hore_id_pk PRIMARY KEY, -- primary key column
  hore_user_review nvarchar(1000) NOT NULL,
  hore_rating TINYINT NOT NULL CHECK(hore_rating IN(1,2,3,4,5)) DEFAULT 5,
  hore_created_on datetime NULL,
  -- FOREIGN KEY
  hore_user_id INT NOT NULL,
  hore_hotel_id INT NOT NULL,
  -- Add this later, on production
  CONSTRAINT hore_user_id_pk FOREIGN KEY (hore_user_id) REFERENCES Users.Users(user_id),
  CONSTRAINT hore_hotel_id_fk FOREIGN KEY (hore_hotel_id) REFERENCES Hotel.Hotels(hotel_id) ON DELETE CASCADE ON UPDATE CASCADE
);



-- Create a new table called 'Facilities' in schema 'Hotel'
-- Drop the table if it already exists
IF OBJECT_ID('Hotel.Facilities', 'U') IS NOT NULL
DROP TABLE Hotel.Facilities

-- Create the table in the specified schema
CREATE TABLE Hotel.Facilities
(
  faci_id INT IDENTITY(1,1) NOT NULL CONSTRAINT faci_id_pk PRIMARY KEY, -- primary key column
  faci_name nvarchar(125) NOT NULL,
  faci_description nvarchar(255) NULL,
  faci_max_number INT NULL,
  faci_measure_unit VARCHAR(15) NULL CHECK(faci_measure_unit IN('people','beds')),
  faci_room_number nvarchar(15) NOT NULL,
  faci_startdate datetime NOT NULL,
  faci_enddate datetime NOT NULL,
  faci_low_price MONEY NOT NULL,
  faci_high_price MONEY NOT NULL,
  faci_rate_price MONEY NULL,
  faci_expose_price TINYINT NOT NULL CHECK(faci_expose_price IN(1,2,3)),
  faci_discount SMALLMONEY NULL,
  faci_tax_rate SMALLMONEY NULL,
  faci_modified_date datetime NULL,
  --FOREIGN KEY
  faci_cagro_id INTEGER NOT NULL,
  faci_hotel_id INT NOT NULL,
  faci_user_id INT NOT NULL,
  -- UNIQUE ID
  CONSTRAINT faci_room_number_uq UNIQUE (faci_room_number),
  -- Add this later, on production
  CONSTRAINT faci_cagro_id_fk FOREIGN KEY (faci_cagro_id) REFERENCES Master.Category_Group(cagro_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT faci_hotel_id_fk FOREIGN KEY (faci_hotel_id) REFERENCES Hotel.Hotels(hotel_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT faci_user_id_fk FOREIGN KEY (faci_user_id) REFERENCES Users.users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);


-- Create a new table called 'Facility_Price_History' in schema 'Hotel'
-- Drop the table if it already exists
IF OBJECT_ID('Hotel.Facility_Price_History', 'U') IS NOT NULL
DROP TABLE Hotel.Facility_Price_History

-- Create the table in the specified schema
create table hotel.facility_price_history
(
  faph_id int identity(1,1) not null constraint faph_id_pk primary key, -- primary key column
  faph_startdate datetime not null,
  faph_enddate datetime not null,
  faph_low_price money not null,
  faph_high_price money not null,
  faph_rate_price money not null,
  faph_discount smallmoney null,
  faph_tax_rate smallmoney null,
  faph_modified_date datetime,
  -- foreign key
  faph_faci_id int not null,
  faph_user_id int not null,
  -- add this later, on production
  constraint faph_faci_id_fk foreign key (faph_faci_id) references hotel.facilities(faci_id) on delete cascade on update cascade,
);


-- Create a new table called 'Facility_Photos' in schema 'Hotel'
-- Drop the table if it already exists
IF OBJECT_ID('Hotel.Facility_Photos', 'U') IS NOT NULL
DROP TABLE Hotel.Facility_Photos

-- Create the table in the specified schema
CREATE TABLE Hotel.Facility_Photos
(
  fapho_id INT IDENTITY(1,1) NOT NULL CONSTRAINT fapho_id_pk PRIMARY KEY, -- primary key column
  fapho_photo_filename nvarchar(150) NULL,
  fapho_thumbnail_filename nvarchar(150) NOT NULL,
  fapho_original_filename nvarchar(150) NULL,
  fapho_file_size smallint NULL,
  fapho_file_type nvarchar(50) NULL,
  fapho_primary BIT NULL CHECK(fapho_primary IN(0,1)),
  fapho_url nvarchar(255) NULL,
  fapho_modified_date datetime,
  -- FOREIGN KEY
  fapho_faci_id INT NOT NULL,
  CONSTRAINT fapho_faci_id_fk FOREIGN KEY (fapho_faci_id) REFERENCES Hotel.Facilities(faci_id) ON DELETE CASCADE ON UPDATE CASCADE
);


-- MODULE HR --
CREATE TABLE HR.job_role (
	joro_id int IDENTITY(1, 1) NOT NULL,
	joro_name nvarchar(55) NOT NULL,
	joro_modified_date datetime,
	CONSTRAINT pk_joro_id PRIMARY KEY(joro_id),
	CONSTRAINT uq_joro_name UNIQUE (joro_name)
);

CREATE TABLE HR.department (
	dept_id int IDENTITY(1,1) NOT NULL,
	dept_name nvarchar(50) NOT NULL,
	dept_modified_date datetime,
	CONSTRAINT pk_dept_id PRIMARY KEY (dept_id)
);

CREATE TABLE HR.employee (
	emp_id int IDENTITY(1,1) NOT NULL,
	emp_national_id nvarchar(25) NOT NULL,
	emp_birth_date datetime NOT NULL,
	emp_marital_status nchar(1) NOT NULL,
	emp_gender nchar(1) NOT NULL,
	emp_hire_date datetime NOT NULL,
	emp_salaried_flag nchar(1) NOT NULL,
	emp_vacation_hours int,
	emp_sickleave_hourse int,
	emp_current_flag int,
	emp_emp_id int,
	emp_photo nvarchar(255),
	emp_modified_date datetime,
	emp_joro_id int NOT NULL,
	CONSTRAINT pk_emp_id PRIMARY KEY (emp_id),
	CONSTRAINT uq_emp_national_id UNIQUE (emp_national_id),
	CONSTRAINT fk_emp_joro_id FOREIGN KEY (emp_joro_id) REFERENCES HR.job_role(joro_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_emp_id FOREIGN KEY (emp_emp_id) REFERENCES hr.employee(emp_id)
);

CREATE TABLE HR.employee_pay_history (
	ephi_emp_id int NOT NULL,
	ephi_rate_change_date datetime NOT NULL,
	ephi_rate_salary money,
	ephi_pay_frequence int,
	ephi_modified_date datetime,
	CONSTRAINT pk_ephi_emp_id_ephi_rate_change_date PRIMARY KEY(ephi_emp_id, ephi_rate_change_date),
	CONSTRAINT fk_ephi_emp_id FOREIGN KEY(ephi_emp_id) REFERENCES HR.employee(emp_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE HR.shift(
	shift_id int IDENTITY(1,1),
	shift_name nvarchar(25) NOT NULL,
	shift_start_time datetime NOT NULL,
	shift_end_time datetime NOT NULL,
	CONSTRAINT pk_shift_id PRIMARY KEY(shift_id),
	CONSTRAINT uq_shift_name UNIQUE (shift_name),
	CONSTRAINT uq_shift_start_time UNIQUE (shift_start_time),
	CONSTRAINT uq_shift_end_time UNIQUE (shift_end_time)
);

CREATE TABLE HR.employee_department_history (
	edhi_id int IDENTITY(1,1) NOT NULL,
	edhi_emp_id int NOT NULL,
	edhi_start_date datetime,
	edhi_end_date datetime,
	edhi_modified_date datetime,
	edhi_dept_id int NOT NULL,
	edhi_shift_id int NOT NULL,
	CONSTRAINT pk_edhi_id_edhi_emp_id PRIMARY KEY (edhi_id, edhi_emp_id),
	CONSTRAINT fk_edhi_emp_id FOREIGN KEY(edhi_emp_id) REFERENCES HR.employee(emp_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_shift_id FOREIGN KEY (edhi_shift_id) REFERENCES HR.shift(shift_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_edhi_dept_id FOREIGN KEY (edhi_dept_id) REFERENCES HR.department(dept_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE HR.work_orders (
	woro_id int IDENTITY(1,1),
	woro_date datetime NOT NULL,
	woro_status nvarchar(15) NOT NULL,
	woro_user_id int,
	CONSTRAINT pk_woro_id PRIMARY KEY(woro_id),
	CONSTRAINT fk_woro_user_id FOREIGN KEY(woro_user_id) REFERENCES Users.users(user_id)
)

CREATE TABLE HR.work_order_detail (
	wode_id int IDENTITY(1,1),
	wode_task_name nvarchar(255),
	wode_status nvarchar(15),
	wode_start_date datetime,
	wode_end_date datetime,
	wode_notes nvarchar(255),
	wode_emp_id int,
	wode_seta_id int,
	wode_faci_id int,
	wode_woro_id int,
	CONSTRAINT pk_wode_id PRIMARY KEY(wode_id),
	CONSTRAINT fk_woro_wode_id FOREIGN KEY(wode_woro_id) REFERENCES HR.work_orders(woro_id),
	CONSTRAINT fk_wode_emp_id FOREIGN KEY(wode_emp_id) REFERENCES HR.employee(emp_id), 
	CONSTRAINT fk_wode_seta_id FOREIGN KEY(wode_seta_id) REFERENCES Master.service_task(seta_id), 
	CONSTRAINT fk_faci_id FOREIGN KEY(wode_faci_id) REFERENCES Hotel.facilities(faci_id)
);

-- MODULE BOOKING --
CREATE TABLE Booking.special_offers(
    spof_id INT IDENTITY(1,1) NOT NULL,
    spof_name NVARCHAR(55) NOT NULL,
    spof_description NVARCHAR(255) NOT NULL,
    spof_type CHAR(5) NOT NULL CHECK (spof_type IN ('T','C','I')),
    spof_discount SMALLMONEY NOT NULL,
    spof_start_date DATETIME NOT NULL,
    spof_end_date DATETIME NOT NULL,
    spof_min_qty int,
    spof_max_qty int,
    spof_modified_date DATETIME DEFAULT GETDATE()
    CONSTRAINT pk_spof_id PRIMARY KEY(spof_id)
);

CREATE TABLE Booking.booking_orders(
	boor_id INT	IDENTITY (1,1),
	boor_order_number NVARCHAR(55) NOT NULL,
	boor_order_date DATETIME DEFAULT GETDATE(),
	boor_arrival_date DATETIME,
	boor_total_room SMALLINT, --on update, count(borde_id)
	boor_total_guest SMALLINT, --input user
	boor_discount MONEY, --sum(borde_price*borde_discount)
	boor_total_tax MONEY, -- sum(borde_price*borde_tax)
	boor_total_ammount MONEY, -- sum(borde_subtotal)
	boor_down_payment MONEY, -- on update
	boor_pay_type NCHAR(2) NOT NULL, CHECK(boor_pay_type IN ('CR', 'C', 'D', 'PG')),
	boor_is_paid NCHAR(2) NOT NULL CHECK (boor_is_paid IN ('DP','P','R')),
	boor_type NVARCHAR(15) NOT NULL CHECK (boor_type IN ('T','C','I')),
	boor_cardnumber NVARCHAR(25), -- on insert on update
	boor_member_type NVARCHAR(15), -- ambil dari usme_memb_name(fk user_id)
	boor_status NVARCHAR(15) CHECK (boor_status IN ('BOOKING','CHECKIN','CHECKOUT','CLEANING','CANCELED')),
	boor_user_id INT,
	boor_hotel_id INT
	CONSTRAINT pk_boor_id PRIMARY KEY (boor_id),
	CONSTRAINT unique_boor_order_number UNIQUE (boor_order_number),
	CONSTRAINT fk_boor_user_id FOREIGN KEY (boor_user_id) REFERENCES Users.users (user_id) 
    ON DELETE CASCADE
    ON UPDATE CASCADE,
	CONSTRAINT fk_boor_hotel_id FOREIGN KEY (boor_hotel_id) REFERENCES Hotel.hotels (hotel_id) 
    ON DELETE CASCADE
    ON UPDATE CASCADE,
);

CREATE TABLE Booking.booking_order_detail(
	borde_boor_id INTEGER,
	borde_id INT IDENTITY (1,1) UNIQUE NOT NULL,
	borde_checkin DATETIME NOT NULL, --di input user
	borde_checkout DATETIME NOT NULL, -- di input user
	borde_adults INTEGER, -- on update
	borde_kids INTEGER, -- on update
	borde_price MONEY, -- ngambil dari faci_rate_price(fk faci_id)
	borde_extra MONEY, -- sum(boex_subtotal) dari borde_id yg sama
	borde_discount SMALLMONEY, -- faci_discount+sum(spof_discount) -> lewat soco_id
	borde_tax SMALLMONEY, -- ngambil default faci_tax_rate
	borde_subtotal AS (borde_price+(borde_price*borde_tax))-(borde_price*borde_discount),
	borde_faci_id INTEGER,
	CONSTRAINT pk_borde_id_boor_id PRIMARY KEY (borde_id, borde_boor_id),
	CONSTRAINT fk_border_boor_id FOREIGN KEY(borde_boor_id)	REFERENCES Booking.booking_orders(boor_id),
	CONSTRAINT fk_borde_faci_id FOREIGN KEY(borde_faci_id) REFERENCES Hotel.facilities(faci_id) 
		ON DELETE CASCADE 
	ON UPDATE CASCADE
);

CREATE TABLE Booking.booking_order_detail_extra(
	boex_id INT IDENTITY (1,1),
	boex_price MONEY,
	boex_qty SMALLINT,
	boex_subtotal AS boex_price*boex_qty,
	boex_measure_unit NVARCHAR(50), CHECK(boex_measure_unit IN ('people','unit','kg')),
	boex_borde_id INT,
	boex_prit_id INT
	CONSTRAINT pk_boex_id PRIMARY KEY (boex_id),
	CONSTRAINT fk_boex_borde_id FOREIGN KEY (boex_borde_id) REFERENCES Booking.booking_order_detail (borde_id) 
		ON DELETE CASCADE 
    ON UPDATE CASCADE,
	CONSTRAINT fk_boex_prit_id FOREIGN KEY (boex_prit_id) REFERENCES Master.price_items(prit_id)
		ON DELETE CASCADE 
    ON UPDATE CASCADE
)

CREATE TABLE Booking.special_offer_coupons(
    soco_id INT IDENTITY(1,1),
    soco_borde_id INT,
    soco_spof_id INT,
    CONSTRAINT pk_soco_id PRIMARY KEY(soco_id),
    CONSTRAINT fk_soco_borde_id FOREIGN KEY(soco_borde_id) REFERENCES Booking.booking_order_detail(borde_id) 
      ON DELETE CASCADE 
      ON UPDATE CASCADE,
    CONSTRAINT fk_soco_spof_id FOREIGN KEY(soco_spof_id) REFERENCES Booking.special_offers(spof_id) 
		  ON DELETE CASCADE 
      ON UPDATE CASCADE
);

CREATE TABLE Booking.user_breakfast(
    usbr_borde_id int,
    usbr_modified_date date,
    usbr_total_vacant smallint NOT NULL,
    CONSTRAINT pk_usbr_borde_id_usbr_modified_date PRIMARY KEY(usbr_borde_id,usbr_modified_date),
    CONSTRAINT fk_usbr_borde_id FOREIGN KEY(usbr_borde_id) 
		REFERENCES Booking.booking_order_detail(borde_id) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

-- MODULE RESTO --
CREATE TABLE Resto.resto_menus
(
	reme_faci_id int,
	reme_id int IDENTITY(1,1),
	reme_name nvarchar(55) NOT NULL,
	reme_description nvarchar(255),
	reme_price money NOT NULL,
	reme_status nvarchar(15) NOT NULL,
	reme_modified_date datetime,
	reme_type NVARCHAR(20),
	CONSTRAINT pk_reme_faci_id PRIMARY KEY (reme_id),
	CONSTRAINT reme_faci_id FOREIGN KEY (reme_faci_id) REFERENCES Hotel.facilities(faci_id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Resto.order_menus
(
	orme_id int IDENTITY,
	orme_order_number nvarchar (55) UNIQUE NOT NULL,
	orme_order_date datetime NOT NULL,
	orme_total_item smallint,
	--trigger
	orme_total_discount smallmoney,
	--trigger
	orme_total_amount money,
	--trigger
	orme_pay_type nchar(2) NOT NULL,
	orme_cardnumber nvarchar(25),
	orme_is_paid nchar(2),
	orme_modified_date datetime,
	orme_user_id integer,
	orme_status NVARCHAR (20),
	orme_invoice NVARCHAR (55),
	CONSTRAINT pk_orme_id PRIMARY KEY (orme_id),
	CONSTRAINT fk_orme_user_id FOREIGN KEY (orme_user_id) REFERENCES Users.users(user_id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);


CREATE TABLE Resto.order_menu_detail
(
	omde_id int IDENTITY,
	orme_price money NOT NULL,
	orme_qty smallint NOT NULL,
	orme_subtotal as orme_price * orme_qty,
	orme_discount smallmoney,
	omde_orme_id integer,
	omde_reme_id integer,
	CONSTRAINT pk_omme_id PRIMARY KEY (omde_id),
	CONSTRAINT fk_omde_orme_id FOREIGN KEY (omde_orme_id) REFERENCES Resto.order_menus(orme_id)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
	CONSTRAINT fk_omde_reme_id FOREIGN KEY (omde_reme_id) REFERENCES Resto.resto_menus(reme_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Resto.resto_menu_photos
(
	remp_id int IDENTITY,
	remp_thumbnail_filename nvarchar (50),
	remp_photo_filename nvarchar (50),
	remp_primary BIT,
	remp_url nvarchar (255),
	remp_reme_id int,
	CONSTRAINT pk_remp_id PRIMARY KEY (remp_id),
	CONSTRAINT fk_remp_reme_id FOREIGN KEY (remp_reme_id) REFERENCES Resto.resto_menus(reme_id)
     ON DELETE CASCADE
      ON UPDATE CASCADE,
);

-- MODULE PAYMENT --
CREATE TABLE Payment.entity(
	entity_id int IDENTITY(1, 1) NOT NULL,
	CONSTRAINT PK_PaymentEntityId PRIMARY KEY (entity_id) 
);

CREATE TABLE Payment.bank(
	bank_entity_id int NOT NULL,
	bank_code nvarchar(10) UNIQUE NOT NULL,
	bank_name nvarchar(55) UNIQUE NOT NULL,
	bank_modified_date datetime DEFAULT GETDATE(),
	CONSTRAINT PK_PaymentBankEntityId PRIMARY KEY(bank_entity_id),
	CONSTRAINT FK_PaymentBankEntityId FOREIGN KEY(bank_entity_id) 
		REFERENCES Payment.Entity (entity_id)
		ON UPDATE CASCADE 
		ON DELETE CASCADE
);

CREATE TABLE Payment.payment_gateway(
	paga_entity_id int NOT NULL,
	paga_code nvarchar(10) UNIQUE NOT NULL,
	paga_name nvarchar(55) UNIQUE NOT NULL,
	paga_modified_date datetime DEFAULT GETDATE(),
	CONSTRAINT PK_PaymentGatewayEntityId PRIMARY KEY(paga_entity_id),
	CONSTRAINT FK_PaymentGatewayEntityId FOREIGN KEY(paga_entity_id)
		REFERENCES Payment.Entity (entity_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE Payment.user_accounts(
    usac_id int identity(1,1),
	usac_entity_id int NOT NULL,
	usac_user_id int NOT NULL,
	usac_account_number varchar(25) UNIQUE NOT NULL,
	usac_saldo money,
	usac_type nvarchar(15),
	usac_expmonth tinyint DEFAULT NULL,
	usac_expyear smallint DEFAULT NULL,
	usac_modified_date datetime DEFAULT GETDATE(),
	CONSTRAINT CK_PaymentUserAccountsType CHECK (usac_type IN ('debet', 'credit_card', 'payment')),
	CONSTRAINT PK_PaymentUserAccountsEntityId PRIMARY KEY(usac_user_id, usac_id),
	CONSTRAINT FK_PaymentUserAccountsEntityPaymentGateway_Bank FOREIGN KEY(usac_entity_id)
		REFERENCES Payment.Entity (entity_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	CONSTRAINT FK_PaymentUserAccountsUserId FOREIGN KEY(usac_user_id)
		REFERENCES Users.Users (user_id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE Payment.payment_transaction(
    patr_id int IDENTITY(1,1) PRIMARY KEY,
	patr_trx_number nvarchar(55) UNIQUE,
	patr_debet money default(0.0),
	patr_credit money default(0.0),
	patr_type nchar(3) NOT NULL,
	patr_note nvarchar(255),
	patr_modified_date datetime DEFAULT(GETDATE()),
	patr_order_number nvarchar(55) NULL,
	patr_source_id varchar(25) NULL,
	patr_target_id varchar(25) NULL,
	patr_trx_number_ref nvarchar(55) NULL,
	patr_user_id int,
	CONSTRAINT CK_PaymentPaymentTransactionType CHECK (patr_type IN ('TP', 'TRB', 'RPY', 'RF', 'ORM')),
	CONSTRAINT FK_PaymentPaymentTransactionUserId FOREIGN KEY (patr_user_id)
		REFERENCES Users.Users (user_id)
		ON UPDATE CASCADE
		ON DELETE SET NULL,
-- 	CONSTRAINT FK_PaymentPaymentTransactionSourceId FOREIGN KEY (patr_source_id)
-- 		REFERENCES Payment.User_Accounts(usac_account_number) ON DELETE NO ACTION ON UPDATE NO ACTION,
-- 	CONSTRAINT FK_PaymentPaymentTransactionTargetId FOREIGN KEY (patr_target_id)
-- 		REFERENCES Payment.User_Accounts(usac_account_number) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- CREATE UNIQUE INDEX UQ_PaymentTransaction_patr_trx_number_ref
--   ON Payment.payment_transaction(patr_trx_number_ref)
--   WHERE patr_trx_number_ref IS NOT NULL

-- MODULE PURCHASING --
CREATE TABLE purchasing.vendor(
  vendor_entity_id INT,
  vendor_name NVARCHAR(55) NOT NULL,
  vendor_active BIT DEFAULT 1,
  vendor_priority BIT DEFAULT 0,
  vendor_register_date DATETIME NOT NULL DEFAULT GETDATE(),
  vendor_weburl NVARCHAR(1025),
  vendor_modified_date DATETIME NOT NULL DEFAULT GETDATE(),

  CONSTRAINT pk_vendor_entity_id PRIMARY KEY (vendor_entity_id),
  CONSTRAINT fk_vendor_entity_id FOREIGN KEY (vendor_entity_id)
	  REFERENCES payment.entity(entity_id)
	  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT ck_vendor_priority CHECK (vendor_priority IN (0,1)),
  CONSTRAINT ck_vendor_active CHECK (vendor_active IN (0,1))
);

CREATE TABLE purchasing.stocks(
  stock_id INT IDENTITY(1,1),
  stock_name NVARCHAR(255) NOT NULL,
  stock_description NVARCHAR(255),
  stock_quantity SMALLINT NOT NULL DEFAULT 0,
  stock_reorder_point SMALLINT DEFAULT 0,
  stock_used SMALLINT DEFAULT 0,
  stock_scrap SMALLINT DEFAULT 0,
  stock_price MONEY DEFAULT 0,
  stock_standar_cost MONEY DEFAULT 0,
  stock_size NVARCHAR(25),
  stock_color NVARCHAR(15),
  stock_modified_date DATETIME NOT NULL DEFAULT GETDATE(),

  CONSTRAINT pk_department_id PRIMARY KEY (stock_id)
);

CREATE TABLE purchasing.vendor_product(
  vepro_id INT IDENTITY (1,1),
  vepro_qty_stocked INT NOT NULL,
  vepro_qty_remaining INT NOT NULL,
  vepro_price MONEY NOT NULL,
  venpro_stock_id INT,
  vepro_vendor_id INT

  CONSTRAINT pk_vepro_id PRIMARY KEY (vepro_id),
  CONSTRAINT fk_venpro_stock_id FOREIGN KEY (venpro_stock_id)
	  REFERENCES purchasing.stocks(stock_id)
	  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_vepro_vendor_id FOREIGN KEY (vepro_vendor_id)
	  REFERENCES purchasing.vendor(vendor_entity_id)
	  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE purchasing.stock_photo(
  spho_id INT IDENTITY(1,1),
  spho_thumbnail_filename NVARCHAR(50) NOT NULL,
  spho_photo_filename NVARCHAR(50) NOT NULL,
  spho_primary BIT NOT NULL DEFAULT 0,
  spho_url NVARCHAR(255) NOT NULL,
  spho_stock_id INT NOT NULL,

  CONSTRAINT pk_spho_id PRIMARY KEY (spho_id),
  CONSTRAINT fk_spho_stock_id FOREIGN KEY (spho_stock_id)
	REFERENCES purchasing.stocks(stock_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT ck_spho_primary CHECK (spho_primary IN (0,1))
);

CREATE TABLE purchasing.purchase_order_header(
	pohe_id INT IDENTITY(1,1) NOT NULL,
	pohe_number NVARCHAR(20),
	pohe_status TINYINT DEFAULT 1,
	pohe_order_date DATETIME NOT NULL DEFAULT GETDATE(),
	pohe_subtotal MONEY,
	pohe_tax MONEY NOT NULL DEFAULT 0.1,
	pohe_total_amount AS pohe_subtotal+(pohe_tax*pohe_subtotal),
	pohe_refund MONEY DEFAULT 0,
	pohe_arrival_date DATETIME,
	pohe_pay_type NCHAR(2) NOT NULL,
	pohe_emp_id INT,
	pohe_vendor_id INT,

	CONSTRAINT pk_pohe_id PRIMARY KEY (pohe_id),
	CONSTRAINT uq_pohe_number UNIQUE (pohe_number),
	CONSTRAINT fk_pohe_emp_id FOREIGN KEY (pohe_emp_id)
	  REFERENCES hr.employee(emp_id)
	  ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_pohe_vendor_id FOREIGN KEY (pohe_vendor_id)
	  REFERENCES purchasing.vendor(vendor_entity_id)
	  ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ck_pohe_pay_type CHECK (pohe_pay_type IN('TR', 'CA')),
	CONSTRAINT ck_pohe_status CHECK (pohe_status IN(1, 2, 3, 4, 5)),
);

CREATE TABLE purchasing.purchase_order_detail (
  pode_id INT IDENTITY(1,1),
  pode_pohe_id INT,
  pode_order_qty SMALLINT NOT NULL,
  pode_price MONEY NOT NULL,
  pode_line_total AS ISNULL(pode_order_qty*pode_price, 0.00),
  pode_received_qty DECIMAL(8,2),
  pode_rejected_qty DECIMAL(8,2),
  pode_stocked_qty AS pode_received_qty - pode_rejected_qty,
  pode_modified_date DATETIME NOT NULL DEFAULT GETDATE(),
  pode_stock_id INT,

  CONSTRAINT pk_pode_id PRIMARY KEY (pode_id),
  CONSTRAINT fk_pode_pohe_id FOREIGN KEY (pode_pohe_id)
	REFERENCES purchasing.purchase_order_header(pohe_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_pode_stock_id FOREIGN KEY (pode_stock_id)
	REFERENCES purchasing.stocks(stock_id)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE purchasing.stock_detail (
  stod_id INT IDENTITY,
  stod_stock_id INT,
  stod_barcode_number NVARCHAR(255),
  stod_status NCHAR(2) DEFAULT 1,
  stod_notes NVARCHAR(1024),
  stod_faci_id INT,
  stod_pohe_id INT,

  CONSTRAINT pk_stod_id PRIMARY KEY (stod_id),
  CONSTRAINT uq_stod_barcode_number UNIQUE (stod_barcode_number),
  CONSTRAINT fk_stod_stock_id FOREIGN KEY (stod_stock_id)
	REFERENCES purchasing.stocks(stock_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_stod_pohe_id FOREIGN KEY (stod_pohe_id)
	REFERENCES purchasing.purchase_order_header(pohe_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_stod_faci_id FOREIGN KEY (stod_faci_id)
	REFERENCES hotel.facilities(faci_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT ck_stod_status CHECK (stod_status IN(1, 2, 3, 4))
);

CREATE TABLE purchasing.cart(
	cart_id INT IDENTITY,
	cart_emp_id INT,
	cart_vepro_id INT,
	cart_order_qty SMALLINT,
	cart_modified_date DATETIME NOT NULL DEFAULT GETDATE()

	CONSTRAINT pk_cart PRIMARY KEY (cart_id),
	CONSTRAINT fk_cart_employee FOREIGN KEY (cart_emp_id) REFERENCES hr.employee (emp_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_cart_vepro FOREIGN KEY (cart_vepro_id) REFERENCES purchasing.vendor_product(vepro_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT ck_cart_modified_date CHECK (cart_modified_date <= GETDATE())
);



create table MOCK_DATA3 (
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	company_name VARCHAR(50),
	email_address VARCHAR(50),
	phone VARCHAR(50),
	date_time DATE,
	national_id VARCHAR(50),
	birth_date DATE,
	job_title VARCHAR(50),
	marital_status VARCHAR(1),
	gender VARCHAR(50)
);
GO

insert into MOCK_DATA3 
(first_name, last_name, company_name, email_address, phone, date_time, national_id, birth_date, job_title, marital_status, gender) 
values 
('Fran', 'Gammidge', 'Vitz', 'fgammidge0@ihg.com', '495-284-4685', '2023-05-11', '284-75-3339', '1982-01-30', 'Civil Engineer', 'M', 'F'),
('Grover', 'Simonnet', 'Lajo', 'gsimonnet1@infoseek.co.jp', '901-414-1675', '2023-07-25', '444-85-9839', '1991-02-04', 'Food Chemist', 'S', 'M'),
('Carilyn', 'Blewitt', 'Reallinks', 'cblewitt2@patch.com', '786-990-1488', '2023-03-13', '613-58-0609', '2000-03-12', 'Quality Control Specialist', 'M', 'F'),
('Brent', 'Dawdary', 'Twitterwire', 'bdawdary3@yahoo.com', '513-570-8212', '2023-04-02', '382-29-8628', '1992-05-23', 'Engineer III', 'M', 'M'),
('Krishnah', 'Benediktsson', 'Skiptube', 'kbenediktsson4@sitemeter.com', '958-613-6240', '2023-03-21', '854-11-4765', '1992-11-19', 'Programmer I', 'S', 'M'),
('Hugibert', 'Davers', 'Skipfire', 'hdavers5@usda.gov', '562-948-2701', '2023-01-12', '255-49-7417', '1983-05-16', 'Payment Adjustment Coordinator', 'M', 'M'),
('Ives', 'Goodfellow', 'Yodoo', 'igoodfellow6@amazon.com', '312-680-5329', '2023-08-14', '441-36-2304', '2001-07-24', 'Internal Auditor', 'M', 'M'),
('Gael', 'Overal', 'Yamia', 'goveral7@fotki.com', '912-810-6527', '2023-09-09', '595-72-3831', '1996-02-25', 'Registered Nurse', 'S', 'M'),
('Krissy', 'Shury', 'Trunyx', 'kshury8@wordpress.org', '539-841-8756', '2023-05-17', '533-55-3509', '1994-05-28', 'Health Coach III', 'M', 'F'),
('Arluene', 'Mishow', 'Abatz', 'amishow9@alexa.com', '178-315-0025', '2022-12-31', '848-41-9655', '1995-01-23', 'Associate Professor', 'S', 'F'),
('Kimberlyn', 'Asif', 'Topiczoom', 'kasifa@columbia.edu', '965-957-2628', '2023-07-17', '183-66-6974', '1983-12-12', 'Product Engineer', 'S', 'F'),
('Roderic', 'Dunnet', 'Yodo', 'rdunnetb@wufoo.com', '261-533-8868', '2023-01-03', '190-80-6691', '1989-07-27', 'Quality Control Specialist', 'M', 'M'),
('Dolorita', 'Bramwell', 'Twitterbridge', 'dbramwellc@dedecms.com', '214-650-8106', '2022-12-28', '491-12-3879', '1984-09-11', 'VP Sales', 'S', 'F'),
('Hobart', 'Kleinhausen', 'Thoughtstorm', 'hkleinhausend@usnews.com', '931-421-3309', '2023-04-03', '116-42-0895', '1995-03-25', 'Account Coordinator', 'M', 'M'),
('Gertie', 'Carbry', 'Feedbug', 'gcarbrye@trellian.com', '254-439-4717', '2023-09-08', '337-33-1266', '1986-01-14', 'Recruiting Manager', 'M', 'F'),
('Celestina', 'Cantua', 'Yamia', 'ccantuaf@businessinsider.com', '599-746-8996', '2022-09-29', '736-21-4396', '1982-01-19', 'Pharmacist', 'S', 'F'),
('Delila', 'Liccardo', 'Abata', 'dliccardog@statcounter.com', '191-367-8818', '2023-03-19', '498-67-4766', '1992-01-20', 'Office Assistant I', 'M', 'F'),
('Francisco', 'Potkin', 'Plajo', 'fpotkinh@yolasite.com', '521-341-2029', '2023-04-14', '291-81-7443', '1983-09-03', 'Professor', 'S', 'M'),
('Bucky', 'Anthes', 'Bubbletube', 'banthesi@yale.edu', '575-457-3611', '2023-05-31', '286-81-1009', '1981-12-15', 'Operator', 'S', 'M'),
('Jennilee', 'Attwoull', 'Realmix', 'jattwoullj@wordpress.org', '999-462-3622', '2022-11-15', '483-54-1047', '1990-04-27', 'Recruiting Manager', 'M', 'F'),
('Bartholomeus', 'Matthessen', 'Dabjam', 'bmatthessenk@diigo.com', '318-139-6404', '2023-01-27', '145-80-5690', '1993-12-12', 'Web Developer II', 'S', 'M'),
('Sauncho', 'Hollingshead', 'Yakidoo', 'shollingsheadl@so-net.ne.jp', '943-413-7166', '2022-12-07', '396-54-2235', '1989-04-09', 'Design Engineer', 'S', 'M'),
('Opalina', 'Rudgard', 'Edgewire', 'orudgardm@wunderground.com', '644-444-1901', '2023-04-25', '541-31-8324', '1989-07-01', 'General Manager', 'M', 'F'),
('Thorvald', 'Pietzker', 'Twitterlist', 'tpietzkern@vk.com', '859-391-7424', '2023-08-16', '574-65-4661', '1993-02-09', 'Developer IV', 'M', 'M'),
('Jeffrey', 'Bridgett', 'Skimia', 'jbridgetto@ucla.edu', '132-953-7051', '2022-11-29', '253-95-3952', '1983-05-25', 'Cost Accountant', 'M', 'M'),
('Dareen', 'Bloore', 'Rhyzio', 'dbloorep@wisc.edu', '100-588-0075', '2022-11-14', '121-93-7688', '1990-05-07', 'Paralegal', 'M', 'F'),
('Rees', 'Nutbeem', 'Ntags', 'rnutbeemq@pagesperso-orange.fr', '215-477-0458', '2023-03-15', '150-65-1907', '1999-06-04', 'Junior Executive', 'S', 'M'),
('Chrissy', 'Coxon', 'Jabbersphere', 'ccoxonr@gmpg.org', '102-674-5058', '2023-04-19', '357-09-8516', '1984-11-30', 'Software Consultant', 'S', 'F'),
('Lambert', 'Turfes', 'Twitterlist', 'lturfess@indiatimes.com', '132-670-0816', '2023-03-01', '182-48-6160', '2000-11-11', 'Senior Quality Engineer', 'S', 'M'),
('Kevyn', 'Spare', 'Omba', 'ksparet@trellian.com', '666-458-2170', '2023-05-06', '123-49-2684', '1991-03-04', 'Research Nurse', 'M', 'F'),
('Engracia', 'Searles', 'Riffwire', 'esearlesu@surveymonkey.com', '430-565-4570', '2022-11-12', '623-43-6359', '1995-10-03', 'Senior Editor', 'M', 'F'),
('Arthur', 'Maddison', 'Digitube', 'amaddisonv@technorati.com', '170-863-2661', '2022-10-22', '423-89-8820', '1999-12-25', 'Professor', 'S', 'M'),
('Nelia', 'Fenner', 'Jetwire', 'nfennerw@wordpress.org', '403-782-2499', '2022-12-06', '283-02-0030', '1991-05-05', 'Speech Pathologist', 'S', 'F'),
('Seumas', 'Hughes', 'Twitternation', 'shughesx@yandex.ru', '835-833-6245', '2023-08-03', '634-66-8531', '1984-09-28', 'Quality Engineer', 'S', 'M'),
('Jo', 'Talby', 'Skipfire', 'jtalbyy@etsy.com', '765-177-9560', '2023-05-06', '895-58-9803', '1981-12-11', 'Senior Sales Associate', 'S', 'M'),
('Thatcher', 'Andino', 'Shufflester', 'tandinoz@istockphoto.com', '357-728-1462', '2023-02-21', '829-89-4712', '1995-08-12', 'Senior Financial Analyst', 'S', 'M'),
('Dore', 'Gillon', 'Skajo', 'dgillon10@edublogs.org', '184-667-7404', '2023-08-30', '753-05-6021', '1985-05-24', 'Operator', 'M', 'F'),
('Vernor', 'Feld', 'Izio', 'vfeld11@wunderground.com', '397-224-6872', '2022-10-12', '311-13-1185', '1987-10-04', 'Administrative Assistant III', 'S', 'M'),
('Harlie', 'Dallender', 'Blognation', 'hdallender12@google.pl', '651-541-7020', '2022-11-13', '395-27-7808', '1995-01-06', 'Computer Systems Analyst I', 'M', 'F'),
('Vachel', 'Gleave', 'Edgeify', 'vgleave13@creativecommons.org', '241-698-5075', '2023-06-22', '483-58-1040', '1990-01-13', 'Staff Scientist', 'M', 'M'),
('Ethelbert', 'Kaygill', 'Nlounge', 'ekaygill14@yale.edu', '928-848-6708', '2023-02-07', '847-08-4346', '1983-07-15', 'Account Representative III', 'M', 'M'),
('Osbourn', 'Caldeiro', 'Tagtune', 'ocaldeiro15@ifeng.com', '782-380-5004', '2023-09-04', '533-95-0887', '1990-03-18', 'Research Assistant II', 'S', 'M'),
('Ennis', 'Beldom', 'Twimm', 'ebeldom16@yolasite.com', '771-251-0343', '2023-07-12', '418-62-8632', '1982-04-19', 'Programmer II', 'M', 'M'),
('Morton', 'Hughland', 'Meembee', 'mhughland17@sourceforge.net', '256-796-0884', '2023-07-10', '363-31-7098', '1998-07-23', 'Biostatistician I', 'S', 'M'),
('Abe', 'Epilet', 'Dablist', 'aepilet18@pen.io', '214-967-6887', '2023-07-10', '254-98-3563', '2002-01-31', 'Assistant Media Planner', 'S', 'M'),
('Bay', 'Clingoe', 'Tagfeed', 'bclingoe19@uol.com.br', '475-961-0517', '2022-11-02', '115-51-0303', '2002-04-16', 'Dental Hygienist', 'S', 'M'),
('Berkly', 'Paffley', 'Tambee', 'bpaffley1a@engadget.com', '300-390-0401', '2023-03-11', '502-93-1581', '1986-05-24', 'Budget/Accounting Analyst II', 'S', 'M'),
('Kanya', 'Mallison', 'Minyx', 'kmallison1b@ebay.co.uk', '751-673-5071', '2023-08-09', '207-37-3397', '1995-03-28', 'Design Engineer', 'M', 'F'),
('Miriam', 'Michallat', 'Feedspan', 'mmichallat1c@cbslocal.com', '200-981-4088', '2023-06-24', '441-69-1077', '1996-10-27', 'Senior Sales Associate', 'S', 'F'),
('Claire', 'Whiskin', 'Trilia', 'cwhiskin1d@about.me', '987-545-6553', '2023-01-14', '649-38-8353', '1984-05-21', 'Actuary', 'M', 'F'),
('Hedi', 'Ellwell', 'Yodoo', 'hellwell1e@amazon.co.jp', '847-578-2925', '2022-09-24', '226-64-5626', '1993-12-23', 'Assistant Media Planner', 'M', 'F'),
('Pete', 'Carvill', 'Linkbridge', 'pcarvill1f@hhs.gov', '520-531-6046', '2023-08-28', '449-64-9234', '1998-03-14', 'Speech Pathologist', 'M', 'M'),
('Rivy', 'Sallier', 'Fiveclub', 'rsallier1g@jugem.jp', '470-486-2883', '2023-08-12', '295-21-1738', '1987-03-16', 'Librarian', 'S', 'F'),
('Astrid', 'Tommis', 'Trudoo', 'atommis1h@va.gov', '497-851-3024', '2022-10-26', '540-04-6215', '2000-07-14', 'Account Representative I', 'S', 'F'),
('Gregor', 'Yarnold', 'Eazzy', 'gyarnold1i@moonfruit.com', '969-566-1877', '2022-10-08', '813-93-7881', '1986-12-31', 'Account Representative III', 'S', 'M'),
('Farica', 'Rottger', 'Roodel', 'frottger1j@jugem.jp', '135-263-1531', '2023-08-19', '587-04-0775', '1991-07-25', 'Senior Sales Associate', 'S', 'F'),
('Aurora', 'Lissandre', 'Thoughtsphere', 'alissandre1k@tuttocitta.it', '370-787-4641', '2023-04-09', '735-87-9411', '1984-04-14', 'Account Executive', 'M', 'F'),
('Vivyan', 'Vasyaev', 'Voomm', 'vvasyaev1l@parallels.com', '940-993-1383', '2023-05-19', '104-29-9215', '1991-09-10', 'Nuclear Power Engineer', 'S', 'F'),
('Rori', 'Peidro', 'Twitterwire', 'rpeidro1m@google.ca', '155-739-1814', '2023-01-28', '108-46-9836', '2001-11-30', 'Graphic Designer', 'M', 'F'),
('Lucilia', 'Fradgley', 'Twitternation', 'lfradgley1n@jiathis.com', '208-890-7258', '2023-06-10', '484-97-9445', '1991-12-18', 'Geological Engineer', 'M', 'F'),
('Calley', 'Craiker', 'Oba', 'ccraiker1o@drupal.org', '100-709-0017', '2023-05-15', '692-64-6940', '1985-02-24', 'Desktop Support Technician', 'S', 'F'),
('Stacie', 'Jaszczak', 'Photobug', 'sjaszczak1p@dropbox.com', '438-904-3837', '2022-09-18', '663-58-8400', '1991-06-09', 'Programmer II', 'S', 'F'),
('Koenraad', 'Touzey', 'Rhynoodle', 'ktouzey1q@networkadvertising.org', '791-676-1374', '2023-05-12', '206-91-6177', '1993-03-18', 'Nurse Practicioner', 'M', 'M'),
('Terrance', 'Lowry', 'Zoonder', 'tlowry1r@hao123.com', '402-730-3688', '2023-04-28', '231-54-3434', '1992-07-18', 'Structural Analysis Engineer', 'S', 'M'),
('Ware', 'Pole', 'Devpulse', 'wpole1s@bing.com', '235-791-5989', '2023-04-10', '871-70-2935', '1996-12-05', 'Actuary', 'S', 'M'),
('Osmund', 'Truluck', 'Kanoodle', 'otruluck1t@noaa.gov', '914-629-6180', '2022-12-14', '831-26-7706', '2001-02-06', 'Information Systems Manager', 'M', 'M'),
('Shane', 'Dominiak', 'Katz', 'sdominiak1u@cargocollective.com', '594-221-5802', '2023-05-25', '224-51-7988', '1996-01-04', 'Assistant Professor', 'M', 'F'),
('Cacilia', 'Smewing', 'Aimbo', 'csmewing1v@youtu.be', '676-949-3440', '2023-08-03', '363-62-2393', '2000-01-14', 'Actuary', 'S', 'F'),
('Elbertine', 'Rodson', 'Jazzy', 'erodson1w@altervista.org', '412-672-8409', '2022-12-27', '664-83-6540', '1991-06-26', 'Operator', 'M', 'F'),
('Cameron', 'Walesby', 'Voonte', 'cwalesby1x@homestead.com', '535-778-5820', '2022-10-30', '431-19-1254', '1987-04-11', 'Executive Secretary', 'M', 'M'),
('Pen', 'Haverty', 'Buzzster', 'phaverty1y@google.cn', '482-879-8860', '2023-04-29', '799-24-7977', '1993-03-04', 'Senior Developer', 'M', 'M'),
('Urbano', 'Hallgalley', 'Mynte', 'uhallgalley1z@ibm.com', '761-987-5167', '2023-05-05', '100-80-5072', '1992-11-25', 'Payment Adjustment Coordinator', 'S', 'M'),
('Justus', 'Risso', 'Brainsphere', 'jrisso20@tuttocitta.it', '530-684-9662', '2022-12-29', '380-29-3557', '1993-06-18', 'Social Worker', 'S', 'M'),
('Idalina', 'Caldecutt', 'Kazio', 'icaldecutt21@reverbnation.com', '871-205-0910', '2022-10-15', '330-44-0150', '1982-03-17', 'Information Systems Manager', 'M', 'F'),
('Magdalene', 'Leijs', 'Trupe', 'mleijs22@elegantthemes.com', '305-470-4267', '2022-09-29', '592-54-9596', '1983-12-08', 'Engineer I', 'M', 'F'),
('Daryle', 'Frankcomb', 'Meedoo', 'dfrankcomb23@wix.com', '345-846-7445', '2023-04-29', '331-64-9512', '1989-07-22', 'Automation Specialist IV', 'M', 'M'),
('Zane', 'Pollie', 'Roodel', 'zpollie24@oakley.com', '303-635-0724', '2023-03-30', '461-61-5193', '1988-06-06', 'Data Coordinator', 'S', 'M'),
('Chevalier', 'Vogelein', 'Kwinu', 'cvogelein25@illinois.edu', '555-547-3947', '2023-09-06', '766-09-1169', '2001-03-07', 'Assistant Media Planner', 'M', 'M'),
('Son', 'Schukraft', 'Zoozzy', 'sschukraft26@pen.io', '534-307-5579', '2023-02-13', '291-94-1567', '1980-10-06', 'Account Executive', 'S', 'M'),
('Orland', 'Agney', 'Gabcube', 'oagney27@huffingtonpost.com', '298-550-8219', '2022-09-22', '333-33-0468', '1986-07-28', 'Programmer II', 'M', 'M'),
('Blancha', 'Guilloud', 'Leenti', 'bguilloud28@nps.gov', '781-552-9524', '2023-05-05', '569-14-0023', '1984-12-18', 'Occupational Therapist', 'M', 'F'),
('Morley', 'Gusney', 'Lazz', 'mgusney29@zimbio.com', '928-887-8601', '2022-10-05', '279-44-4096', '1990-02-14', 'Design Engineer', 'M', 'M'),
('Damon', 'Ferron', 'Livetube', 'dferron2a@instagram.com', '193-185-6460', '2023-09-13', '225-80-4911', '1995-10-27', 'Executive Secretary', 'S', 'M'),
('Codie', 'Keable', 'Abata', 'ckeable2b@washington.edu', '514-439-1078', '2023-07-04', '519-26-7180', '1984-05-25', 'Quality Control Specialist', 'S', 'M'),
('Fran', 'Froggatt', 'Twiyo', 'ffroggatt2c@webnode.com', '412-243-9461', '2023-01-26', '598-85-8231', '1999-03-20', 'Research Assistant II', 'S', 'M'),
('Ulysses', 'Eite', 'Fivechat', 'ueite2d@mashable.com', '403-192-9873', '2023-05-03', '745-31-2123', '1998-05-31', 'Actuary', 'M', 'M'),
('Juli', 'Daughtrey', 'Twimm', 'jdaughtrey2e@123-reg.co.uk', '987-288-2001', '2022-12-23', '651-44-9721', '1998-02-28', 'Health Coach III', 'M', 'F'),
('Joya', 'Nolleau', 'Youspan', 'jnolleau2f@topsy.com', '192-383-5846', '2023-07-15', '132-04-5512', '1983-09-23', 'Account Coordinator', 'S', 'F'),
('Bennett', 'Garrick', 'Fanoodle', 'bgarrick2g@cnbc.com', '744-238-5213', '2022-12-19', '120-62-4401', '2001-11-18', 'Product Engineer', 'S', 'M'),
('Gibbie', 'Petzolt', 'Skippad', 'gpetzolt2h@yale.edu', '141-307-0589', '2023-06-16', '606-05-6374', '2001-06-23', 'Budget/Accounting Analyst IV', 'S', 'M'),
('Melodee', 'Gozard', 'Skyble', 'mgozard2i@liveinternet.ru', '141-895-4688', '2023-01-20', '262-04-9512', '1983-12-29', 'Junior Executive', 'M', 'F'),
('Abigael', 'Gerrans', 'Fivechat', 'agerrans2j@umn.edu', '549-170-1323', '2022-10-22', '487-02-9995', '1987-10-15', 'Software Engineer I', 'M', 'F'),
('Ivor', 'Pavlenkov', 'Browseblab', 'ipavlenkov2k@dion.ne.jp', '442-894-3804', '2022-11-23', '676-57-4935', '1981-03-21', 'Account Representative II', 'M', 'M'),
('Shell', 'Aldous', 'Jaxworks', 'saldous2l@weibo.com', '740-406-1118', '2023-08-07', '604-33-5585', '1986-04-09', 'Tax Accountant', 'S', 'M'),
('Dinny', 'Probate', 'Babbleblab', 'dprobate2m@instagram.com', '949-512-2979', '2022-12-15', '420-76-7979', '1983-04-26', 'Social Worker', 'S', 'F'),
('Dianne', 'Daspar', 'Yakidoo', 'ddaspar2n@skype.com', '519-988-3816', '2023-08-28', '421-56-8053', '1983-11-07', 'Nurse', 'M', 'F'),
('Ingeberg', 'Edworthy', 'Buzzshare', 'iedworthy2o@liveinternet.ru', '357-633-3595', '2023-03-29', '264-06-7244', '1982-07-31', 'Sales Representative', 'S', 'F'),
('Ethelred', 'Nevitt', 'Flashpoint', 'enevitt2p@mac.com', '192-276-7687', '2022-12-28', '261-83-3498', '2002-08-18', 'Web Developer I', 'M', 'M'),
('Cortie', 'Littleproud', 'Skajo', 'clittleproud2q@digg.com', '766-852-8007', '2022-11-28', '615-88-4659', '1986-07-15', 'VP Marketing', 'M', 'M'),
('Myriam', 'Piper', 'Zoomcast', 'mpiper2r@ucsd.edu', '932-888-2567', '2023-06-04', '539-94-9797', '1986-06-05', 'Quality Engineer', 'S', 'F'),
('Elvera', 'Slocumb', 'Tagcat', 'eslocumb2s@seattletimes.com', '922-789-7710', '2022-11-29', '600-30-0418', '1984-12-23', 'Environmental Specialist', 'M', 'F'),
('Dorian', 'Hrachovec', 'Realpoint', 'dhrachovec2t@google.co.uk', '185-200-9680', '2022-12-12', '425-79-1706', '1995-04-01', 'Chief Design Engineer', 'S', 'M'),
('Otto', 'Arnould', 'Ooba', 'oarnould2u@ebay.com', '251-606-8173', '2023-07-23', '252-49-8594', '1985-02-18', 'Research Assistant II', 'M', 'M'),
('Mattheus', 'Ord', 'Innotype', 'mord2v@creativecommons.org', '760-593-6151', '2023-05-04', '353-60-9727', '1997-12-25', 'Account Representative IV', 'S', 'M'),
('Hirsch', 'Caslane', 'Devify', 'hcaslane2w@disqus.com', '887-579-0161', '2023-06-25', '359-01-3323', '1994-08-04', 'Recruiting Manager', 'M', 'M'),
('Michaela', 'Cussen', 'Skiba', 'mcussen2x@tumblr.com', '164-667-5164', '2023-06-27', '888-21-3223', '1998-08-06', 'Research Nurse', 'S', 'F'),
('Glen', 'Allewell', 'Skiptube', 'gallewell2y@jiathis.com', '992-759-4866', '2023-06-10', '205-03-0890', '1984-05-18', 'Accounting Assistant III', 'M', 'F'),
('Bail', 'Bowcock', 'Realmix', 'bbowcock2z@yale.edu', '752-912-9111', '2022-10-21', '801-49-2448', '1998-12-27', 'Help Desk Operator', 'M', 'M'),
('Kalil', 'Akenhead', 'Photospace', 'kakenhead30@mapquest.com', '518-400-8445', '2023-01-17', '816-25-7130', '1982-11-23', 'Accountant III', 'M', 'M'),
('Tim', 'Melley', 'Trudoo', 'tmelley31@dion.ne.jp', '702-901-5836', '2023-06-22', '129-57-8734', '1993-06-06', 'Teacher', 'S', 'M'),
('Vicki', 'Twinn', 'Youspan', 'vtwinn32@i2i.jp', '326-984-1536', '2022-12-02', '659-44-4351', '1998-12-04', 'Marketing Manager', 'M', 'F'),
('Abdul', 'Carlon', 'Shuffletag', 'acarlon33@dot.gov', '245-870-8031', '2023-09-10', '725-99-4911', '1994-09-20', 'Database Administrator III', 'M', 'M'),
('Rosalie', 'Rothera', 'Tazzy', 'rrothera34@squidoo.com', '107-345-8006', '2022-10-30', '147-14-7922', '1990-10-29', 'Staff Scientist', 'S', 'F'),
('Mari', 'D''Aulby', 'Linkbridge', 'mdaulby35@infoseek.co.jp', '115-660-6745', '2023-03-14', '273-39-4434', '1998-12-06', 'Senior Quality Engineer', 'S', 'F'),
('Zared', 'Mallaby', 'Ntags', 'zmallaby36@elegantthemes.com', '404-833-5178', '2023-01-28', '519-67-3121', '1982-10-11', 'Programmer Analyst II', 'M', 'M'),
('Lela', 'Hawker', 'Mymm', 'lhawker37@slate.com', '354-245-9524', '2022-11-14', '820-69-5025', '1991-08-16', 'Structural Engineer', 'S', 'F'),
('Hunt', 'Hawkings', 'Kamba', 'hhawkings38@techcrunch.com', '742-265-5166', '2022-09-25', '607-29-4157', '2000-03-06', 'Accountant III', 'S', 'M'),
('Lauryn', 'Thairs', 'Fivebridge', 'lthairs39@illinois.edu', '840-639-7429', '2023-05-20', '793-75-7333', '1993-09-18', 'Pharmacist', 'M', 'F'),
('Imelda', 'Merwe', 'Meejo', 'imerwe3a@un.org', '830-773-5514', '2023-06-02', '210-51-6347', '1983-10-14', 'Human Resources Assistant IV', 'M', 'F'),
('Grata', 'Mathivon', 'Browsebug', 'gmathivon3b@ocn.ne.jp', '309-215-4631', '2023-01-08', '652-31-9136', '2001-08-19', 'Web Developer IV', 'S', 'F'),
('Teddie', 'Albers', 'Eayo', 'talbers3c@github.io', '652-417-6771', '2023-05-04', '813-67-2126', '1989-09-25', 'Senior Editor', 'S', 'M'),
('Myca', 'Linneman', 'Browseblab', 'mlinneman3d@dedecms.com', '428-448-5035', '2022-11-12', '254-63-8673', '1993-11-02', 'Speech Pathologist', 'M', 'M'),
('Terrijo', 'Pinel', 'Brainlounge', 'tpinel3e@tiny.cc', '645-971-9792', '2023-06-14', '241-87-0235', '1997-03-02', 'Biostatistician II', 'M', 'F'),
('Aylmar', 'Trimnell', 'Zoomdog', 'atrimnell3f@uiuc.edu', '626-664-5897', '2023-08-12', '851-18-8629', '2002-02-02', 'Software Engineer III', 'M', 'M'),
('Ruth', 'Terbeck', 'Devify', 'rterbeck3g@google.co.uk', '611-289-6333', '2023-07-21', '300-01-7154', '1999-08-09', 'VP Sales', 'S', 'F'),
('Reid', 'Brabender', 'DabZ', 'rbrabender3h@europa.eu', '628-423-4405', '2023-01-12', '840-17-5667', '1990-05-31', 'Desktop Support Technician', 'M', 'M'),
('Clement', 'Rigbye', 'Innotype', 'crigbye3i@shutterfly.com', '352-164-7945', '2022-10-11', '367-81-3188', '1993-05-29', 'Community Outreach Specialist', 'S', 'M'),
('Kelsi', 'Billington', 'Browsetype', 'kbillington3j@acquirethisname.com', '722-339-5033', '2023-06-17', '308-38-4979', '1993-07-29', 'Account Executive', 'M', 'F'),
('Rubia', 'Scotchford', 'Zazio', 'rscotchford3k@privacy.gov.au', '206-262-8573', '2023-06-30', '861-06-7741', '1995-01-05', 'Accountant IV', 'M', 'F'),
('Mignon', 'Kynston', 'Rhyzio', 'mkynston3l@usda.gov', '494-882-0344', '2023-02-24', '424-05-1403', '1988-01-29', 'VP Marketing', 'M', 'F'),
('Bil', 'Hayley', 'Rhyzio', 'bhayley3m@cbsnews.com', '885-504-0476', '2023-09-12', '103-71-7347', '1993-01-20', 'Accounting Assistant IV', 'M', 'M'),
('Durant', 'Ladbury', 'Centidel', 'dladbury3n@fda.gov', '979-195-7513', '2023-03-08', '407-65-3590', '2000-11-14', 'Occupational Therapist', 'S', 'M'),
('Rosaleen', 'Enocksson', 'Skibox', 'renocksson3o@4shared.com', '466-164-4588', '2023-02-27', '159-68-7940', '1986-06-03', 'Computer Systems Analyst I', 'S', 'F'),
('Caitrin', 'Reucastle', 'Wordify', 'creucastle3p@sakura.ne.jp', '206-121-6831', '2023-01-31', '218-06-9334', '1985-04-08', 'Occupational Therapist', 'S', 'F'),
('Phebe', 'Norcliffe', 'Yodoo', 'pnorcliffe3q@com.com', '862-601-4645', '2023-04-03', '123-27-4019', '1994-02-17', 'Desktop Support Technician', 'S', 'F'),
('Averil', 'Tierny', 'Oodoo', 'atierny3r@usnews.com', '675-450-5439', '2022-12-22', '547-17-1517', '1982-04-30', 'Junior Executive', 'S', 'M'),
('Andris', 'Mohammed', 'Brainverse', 'amohammed3s@xinhuanet.com', '321-553-2968', '2023-02-24', '214-43-6628', '1989-11-02', 'Product Engineer', 'M', 'M'),
('Randy', 'Stones', 'Jaxbean', 'rstones3t@spotify.com', '238-723-7355', '2023-07-08', '327-21-4761', '1998-01-14', 'Sales Associate', 'S', 'F'),
('Jarrod', 'Freathy', 'Oyoyo', 'jfreathy3u@cnn.com', '999-929-6842', '2023-05-02', '289-60-1515', '1999-04-18', 'Tax Accountant', 'S', 'M'),
('Terese', 'Korfmann', 'Fivebridge', 'tkorfmann3v@shareasale.com', '228-556-8762', '2023-02-20', '895-20-1363', '1984-04-12', 'Social Worker', 'M', 'F'),
('Elisabetta', 'Twitchett', 'Zooveo', 'etwitchett3w@parallels.com', '573-362-9244', '2023-01-30', '676-02-8798', '1987-07-08', 'Financial Advisor', 'M', 'F'),
('Ferdie', 'Capstick', 'Yacero', 'fcapstick3x@bizjournals.com', '574-299-4951', '2022-12-17', '477-32-1707', '1989-07-16', 'Biostatistician I', 'S', 'M'),
('Sara-ann', 'Verty', 'Oyonder', 'sverty3y@wikipedia.org', '204-278-0556', '2022-10-07', '172-67-8946', '1999-01-13', 'Civil Engineer', 'S', 'F'),
('Gage', 'Feaver', 'Kwinu', 'gfeaver3z@bravesites.com', '614-125-4879', '2023-03-04', '247-23-8488', '1984-09-16', 'Senior Developer', 'M', 'M'),
('Angelika', 'Cockayne', 'Twinte', 'acockayne40@yandex.ru', '667-370-5675', '2023-01-05', '549-78-3600', '1998-11-12', 'Automation Specialist II', 'S', 'F'),
('Berti', 'Lemar', 'Livetube', 'blemar41@biglobe.ne.jp', '667-927-6684', '2023-02-20', '571-26-5797', '1994-06-08', 'Statistician II', 'S', 'M'),
('Alisha', 'Harflete', 'Quire', 'aharflete42@technorati.com', '901-726-9460', '2023-04-10', '899-57-0483', '1988-12-21', 'Librarian', 'S', 'F'),
('Zacharias', 'De Bell', 'Riffpedia', 'zdebell43@sfgate.com', '688-401-1613', '2022-09-19', '108-39-7011', '1993-02-21', 'Occupational Therapist', 'S', 'M'),
('Myranda', 'Kenney', 'Linkbridge', 'mkenney44@simplemachines.org', '230-406-8387', '2023-02-10', '251-16-8417', '1995-07-04', 'Accounting Assistant III', 'M', 'F'),
('Bentley', 'Andrieu', 'Edgewire', 'bandrieu45@google.co.jp', '266-712-1163', '2023-01-18', '438-85-2032', '2001-08-10', 'Food Chemist', 'S', 'M'),
('Keeley', 'Occleshaw', 'Zava', 'koccleshaw46@google.cn', '857-470-8595', '2023-06-04', '560-49-1231', '1991-04-11', 'Senior Quality Engineer', 'S', 'F'),
('Alessandra', 'McOwan', 'Flashdog', 'amcowan47@businesswire.com', '465-148-9709', '2023-07-06', '664-33-3524', '1987-11-11', 'Research Associate', 'S', 'F'),
('Tammara', 'Pickworth', 'Gevee', 'tpickworth48@biblegateway.com', '238-348-0930', '2023-04-16', '175-08-0492', '1999-10-15', 'Sales Representative', 'S', 'F'),
('Marlene', 'Doerling', 'Jayo', 'mdoerling49@zimbio.com', '154-260-0047', '2023-08-25', '858-49-7007', '1994-06-30', 'Human Resources Manager', 'M', 'F'),
('Denys', 'Lewin', 'Zazio', 'dlewin4a@goo.ne.jp', '501-799-7812', '2022-11-12', '632-29-0860', '1982-04-15', 'Desktop Support Technician', 'M', 'F'),
('Griselda', 'Seyfart', 'Aivee', 'gseyfart4b@edublogs.org', '638-265-6339', '2023-01-10', '562-71-9095', '1994-10-18', 'Occupational Therapist', 'M', 'F'),
('Gerladina', 'Moorman', 'Tazzy', 'gmoorman4c@clickbank.net', '772-668-9743', '2023-04-17', '828-37-0558', '1996-04-10', 'Developer II', 'M', 'F'),
('Maryjane', 'Billin', 'Wikibox', 'mbillin4d@sbwire.com', '929-462-0132', '2023-08-30', '593-95-2367', '1990-02-06', 'Web Designer I', 'M', 'F'),
('Thomasine', 'Yielding', 'Shufflebeat', 'tyielding4e@seattletimes.com', '203-335-2468', '2023-08-21', '493-72-8287', '1986-03-11', 'Civil Engineer', 'M', 'F'),
('Jessa', 'Hutchason', 'Yacero', 'jhutchason4f@exblog.jp', '879-836-5719', '2023-08-23', '229-07-3727', '1986-04-22', 'Nuclear Power Engineer', 'M', 'F'),
('Guenna', 'Egdal', 'Rhynyx', 'gegdal4g@4shared.com', '331-924-1168', '2023-04-10', '665-90-9413', '1996-11-29', 'Desktop Support Technician', 'M', 'F'),
('Devondra', 'Goathrop', 'Teklist', 'dgoathrop4h@seesaa.net', '978-344-5682', '2023-08-01', '361-57-6453', '1997-06-09', 'Environmental Tech', 'S', 'F'),
('Lilian', 'Mansel', 'Pixoboo', 'lmansel4i@twitpic.com', '570-538-8477', '2023-08-25', '167-13-4094', '1992-06-02', 'Mechanical Systems Engineer', 'M', 'F'),
('Cash', 'Sambidge', 'Omba', 'csambidge4j@de.vu', '577-202-9177', '2022-10-13', '711-05-7780', '1988-06-17', 'Business Systems Development Analyst', 'S', 'M'),
('Vina', 'Karolyi', 'Bubblebox', 'vkarolyi4k@businessinsider.com', '656-665-7190', '2023-08-04', '767-38-0138', '1988-05-09', 'Assistant Professor', 'S', 'F'),
('Barron', 'Egel', 'Oyope', 'begel4l@usda.gov', '574-864-8087', '2023-03-12', '287-85-3931', '1998-03-24', 'Account Representative IV', 'S', 'M'),
('Ignacius', 'Vowdon', 'Rhynyx', 'ivowdon4m@wordpress.com', '196-817-5216', '2023-06-05', '626-27-1900', '2000-03-09', 'Paralegal', 'M', 'M'),
('Irwin', 'Vannikov', 'Kamba', 'ivannikov4n@gravatar.com', '812-460-6988', '2022-11-03', '624-68-4910', '1984-04-15', 'Web Designer I', 'M', 'M'),
('Arel', 'Corless', 'Dabfeed', 'acorless4o@nih.gov', '270-282-3522', '2023-08-17', '310-19-5917', '1984-06-18', 'Analyst Programmer', 'M', 'M'),
('Jamey', 'Tarney', 'Jaloo', 'jtarney4p@yellowbook.com', '828-280-7609', '2023-07-07', '277-93-0207', '1991-10-05', 'Project Manager', 'M', 'M'),
('Gran', 'Amott', 'Meezzy', 'gamott4q@reuters.com', '563-799-7671', '2023-07-11', '897-38-5897', '2002-01-06', 'Assistant Manager', 'M', 'M'),
('Waneta', 'Moreland', 'Jaxworks', 'wmoreland4r@washington.edu', '414-426-5632', '2023-05-11', '490-11-5047', '1985-03-23', 'Web Developer IV', 'M', 'F'),
('Yolane', 'Wasbey', 'Mymm', 'ywasbey4s@php.net', '356-646-0408', '2023-04-05', '888-39-6069', '1988-07-05', 'Food Chemist', 'M', 'F'),
('Ariadne', 'Toxell', 'Kayveo', 'atoxell4t@imageshack.us', '307-186-3838', '2023-07-03', '406-38-0885', '2001-08-24', 'Civil Engineer', 'M', 'F'),
('Abramo', 'Capel', 'Oyoba', 'acapel4u@wufoo.com', '895-594-3830', '2023-08-03', '178-34-6229', '1992-04-20', 'Geological Engineer', 'M', 'M'),
('Fiorenze', 'Larkings', 'Eimbee', 'flarkings4v@berkeley.edu', '254-201-9198', '2023-05-16', '731-82-5822', '1988-09-03', 'Software Test Engineer I', 'M', 'F'),
('Jannel', 'Jacqueminot', 'Skipstorm', 'jjacqueminot4w@prnewswire.com', '338-446-1510', '2022-10-14', '669-43-6293', '1993-04-13', 'Food Chemist', 'S', 'F'),
('Leopold', 'Kimpton', 'Twinder', 'lkimpton4x@webmd.com', '957-651-4573', '2023-05-25', '505-74-9320', '1981-06-27', 'Statistician II', 'M', 'M'),
('Sigismundo', 'Dearle', 'Myworks', 'sdearle4y@php.net', '300-486-7193', '2023-03-08', '331-32-8215', '1981-07-14', 'Administrative Assistant I', 'S', 'M'),
('Rorie', 'Pes', 'Jatri', 'rpes4z@marriott.com', '135-477-1327', '2023-04-27', '653-29-6928', '1981-08-19', 'VP Product Management', 'M', 'F'),
('Bridie', 'Cherm', 'BlogXS', 'bcherm50@geocities.com', '786-876-6697', '2023-06-13', '205-26-6578', '1995-06-02', 'Nurse', 'M', 'F'),
('Hayyim', 'Curner', 'Brainbox', 'hcurner51@alibaba.com', '787-875-3288', '2023-08-26', '634-99-5406', '1990-03-27', 'Budget/Accounting Analyst II', 'S', 'M'),
('Carling', 'Wofenden', 'Jaloo', 'cwofenden52@wordpress.org', '795-247-9895', '2023-06-20', '366-03-7298', '1984-01-11', 'Quality Engineer', 'M', 'M'),
('Heywood', 'Southwood', 'Thoughtstorm', 'hsouthwood53@ocn.ne.jp', '327-227-7969', '2023-01-02', '774-72-3667', '1990-02-05', 'Project Manager', 'M', 'M'),
('Lynn', 'Comrie', 'Linklinks', 'lcomrie54@nyu.edu', '946-306-5229', '2023-03-08', '423-11-9398', '1984-12-23', 'Senior Quality Engineer', 'M', 'F'),
('Evyn', 'Fierman', 'Livepath', 'efierman55@wunderground.com', '346-387-2828', '2023-08-15', '427-37-1094', '1988-05-03', 'Programmer II', 'S', 'M'),
('Walden', 'Kohlert', 'Muxo', 'wkohlert56@flickr.com', '197-452-8244', '2022-10-08', '651-56-3886', '1999-04-08', 'Statistician I', 'M', 'M'),
('Izzy', 'Yakuntzov', 'Centizu', 'iyakuntzov57@toplist.cz', '519-501-8442', '2023-09-05', '240-02-2608', '1990-09-28', 'Statistician I', 'S', 'M'),
('Valida', 'Filippi', 'Skiptube', 'vfilippi58@mysql.com', '378-215-9394', '2022-12-12', '459-41-4720', '1997-04-27', 'Help Desk Operator', 'M', 'F'),
('Reynold', 'De Gregoli', 'Zoonder', 'rdegregoli59@gmpg.org', '362-237-6446', '2023-07-20', '462-55-9402', '2002-06-03', 'Electrical Engineer', 'S', 'M'),
('Rodge', 'Jeves', 'Youopia', 'rjeves5a@livejournal.com', '346-722-2238', '2022-12-29', '347-02-3396', '1983-07-18', 'Engineer I', 'M', 'M'),
('Gery', 'Lyptratt', 'Meedoo', 'glyptratt5b@epa.gov', '348-214-9899', '2023-01-13', '500-33-8982', '1983-09-06', 'Accountant I', 'M', 'M'),
('Fae', 'Deeman', 'Skivee', 'fdeeman5c@prlog.org', '526-321-7399', '2023-05-15', '137-86-3854', '1990-12-11', 'VP Sales', 'M', 'F'),
('Fern', 'Casel', 'Tanoodle', 'fcasel5d@livejournal.com', '319-592-1360', '2023-03-25', '245-44-3835', '2000-07-04', 'Health Coach I', 'S', 'F'),
('Lani', 'Duigenan', 'Yadel', 'lduigenan5e@exblog.jp', '904-561-4598', '2023-06-06', '376-01-5642', '1995-10-22', 'Sales Representative', 'M', 'F'),
('Reba', 'Cosby', 'Divape', 'rcosby5f@time.com', '468-895-4226', '2022-11-15', '366-22-9656', '1982-11-20', 'Help Desk Operator', 'M', 'F'),
('Calv', 'Maxwell', 'Lazz', 'cmaxwell5g@bbb.org', '401-256-8458', '2023-05-25', '867-69-4004', '1997-03-17', 'Environmental Specialist', 'M', 'M'),
('Tory', 'Backe', 'Janyx', 'tbacke5h@cam.ac.uk', '921-770-4072', '2023-08-04', '567-30-4430', '1982-10-16', 'VP Accounting', 'M', 'F'),
('Jacquelynn', 'Stockton', 'Photolist', 'jstockton5i@state.gov', '756-543-3716', '2023-03-04', '446-88-5400', '1997-08-07', 'Database Administrator I', 'M', 'F'),
('Stephie', 'Prattington', 'Tagtune', 'sprattington5j@nps.gov', '185-272-9696', '2023-07-12', '757-02-4757', '1991-02-18', 'Civil Engineer', 'M', 'F'),
('Ryley', 'MacGaughy', 'Fanoodle', 'rmacgaughy5k@feedburner.com', '202-154-9721', '2023-02-26', '493-84-7770', '1998-09-02', 'Human Resources Manager', 'M', 'M'),
('Leanora', 'Roizn', 'Realbuzz', 'lroizn5l@adobe.com', '817-534-0609', '2023-09-15', '126-82-4221', '1989-05-29', 'Actuary', 'M', 'F'),
('Linette', 'Bligh', 'Quinu', 'lbligh5m@wikipedia.org', '596-911-7676', '2022-11-01', '162-62-6164', '1986-12-15', 'Cost Accountant', 'M', 'F'),
('De witt', 'Scarfe', 'Camimbo', 'dscarfe5n@mac.com', '760-482-8803', '2023-01-17', '710-47-3148', '1986-12-18', 'Senior Sales Associate', 'M', 'M'),
('Denny', 'Greveson', 'Ainyx', 'dgreveson5o@ovh.net', '966-590-7047', '2022-12-11', '598-08-7414', '1983-01-10', 'Geologist III', 'M', 'F'),
('Eleonora', 'Goldie', 'Kwideo', 'egoldie5p@ft.com', '154-185-0601', '2022-09-27', '836-51-5647', '1994-12-11', 'Electrical Engineer', 'M', 'F'),
('Gerard', 'Rentenbeck', 'Flipbug', 'grentenbeck5q@hostgator.com', '995-619-0888', '2022-10-17', '602-62-7302', '1997-02-15', 'Professor', 'M', 'M'),
('Elbert', 'Ivanovic', 'Tagfeed', 'eivanovic5r@theguardian.com', '352-246-4223', '2023-06-03', '795-83-3796', '2000-07-11', 'VP Sales', 'S', 'M'),
('Bevan', 'Roloff', 'Pixope', 'broloff5s@apache.org', '579-739-2109', '2023-02-01', '639-24-7510', '1992-06-28', 'Desktop Support Technician', 'S', 'M'),
('Herb', 'Bettanay', 'Vitz', 'hbettanay5t@patch.com', '958-918-6937', '2023-03-24', '760-93-2586', '1981-08-12', 'Teacher', 'S', 'M'),
('Welbie', 'Fitchett', 'Gigaclub', 'wfitchett5u@aboutads.info', '222-820-4110', '2023-04-11', '509-85-1842', '1990-06-10', 'Research Nurse', 'M', 'M'),
('Bryant', 'Klaesson', 'Voomm', 'bklaesson5v@ovh.net', '540-233-0849', '2023-01-07', '539-74-7025', '1983-02-03', 'Physical Therapy Assistant', 'S', 'M'),
('Evelina', 'Hindenberger', 'Eabox', 'ehindenberger5w@shinystat.com', '325-112-1855', '2022-09-18', '672-81-3431', '1981-02-16', 'VP Product Management', 'S', 'F'),
('Lonnie', 'Freathy', 'Rhyloo', 'lfreathy5x@patch.com', '412-289-1713', '2022-10-01', '370-88-0926', '1992-06-02', 'Legal Assistant', 'S', 'F'),
('Aubrey', 'Duffett', 'Quimba', 'aduffett5y@salon.com', '604-246-0625', '2022-09-23', '465-70-9535', '1988-08-20', 'Sales Associate', 'M', 'M'),
('Jarret', 'Skpsey', 'Eazzy', 'jskpsey5z@instagram.com', '937-984-1029', '2023-08-09', '855-52-5351', '1999-12-09', 'Programmer IV', 'S', 'M'),
('Anselm', 'Cozins', 'Jabbertype', 'acozins60@youtube.com', '443-589-2722', '2023-02-17', '483-42-6782', '1988-06-03', 'Assistant Manager', 'M', 'M'),
('Gennifer', 'Roycroft', 'Blognation', 'groycroft61@amazon.com', '829-342-0521', '2022-10-14', '444-53-7008', '1996-09-08', 'Sales Representative', 'S', 'F'),
('Adriane', 'Cockman', 'Tagopia', 'acockman62@networkadvertising.org', '127-484-5145', '2023-03-27', '375-97-1239', '2002-03-24', 'Human Resources Assistant IV', 'S', 'F'),
('Allix', 'Lindeboom', 'Eamia', 'alindeboom63@google.ru', '428-369-6082', '2023-09-08', '695-61-3118', '1995-02-07', 'Graphic Designer', 'M', 'F'),
('Rip', 'Kittless', 'Jaxspan', 'rkittless64@virginia.edu', '919-316-4943', '2022-12-05', '678-53-7149', '2002-04-28', 'Nurse', 'M', 'M'),
('Nappie', 'Falkus', 'Npath', 'nfalkus65@theatlantic.com', '245-539-9460', '2023-04-03', '513-29-6947', '1995-03-22', 'Quality Engineer', 'S', 'M'),
('Corissa', 'Mahaddie', 'Chatterpoint', 'cmahaddie66@google.ca', '690-125-2425', '2022-12-27', '685-30-7959', '1985-01-08', 'Design Engineer', 'S', 'F'),
('Woodie', 'Hechlin', 'Skivee', 'whechlin67@noaa.gov', '607-258-3966', '2023-06-30', '178-79-6564', '2000-04-11', 'Design Engineer', 'M', 'M'),
('Tatum', 'Garred', 'JumpXS', 'tgarred68@quantcast.com', '502-923-6336', '2022-10-01', '836-73-8078', '1985-06-15', 'Automation Specialist I', 'S', 'F'),
('Donielle', 'Glidder', 'Gigaclub', 'dglidder69@google.ca', '269-827-7648', '2023-07-25', '657-86-0960', '1984-05-20', 'Geological Engineer', 'S', 'F'),
('Lyndy', 'Sanja', 'Tanoodle', 'lsanja6a@about.me', '741-978-5577', '2023-05-26', '508-98-2021', '1997-07-18', 'Systems Administrator IV', 'S', 'F'),
('Pamelina', 'Paradise', 'Npath', 'pparadise6b@nyu.edu', '414-374-8763', '2022-11-09', '805-84-3600', '1996-05-05', 'Administrative Assistant II', 'S', 'F'),
('Phylis', 'Yelyashev', 'Realbuzz', 'pyelyashev6c@google.cn', '437-155-2022', '2023-02-18', '897-59-7415', '2000-12-05', 'Web Developer III', 'M', 'F'),
('Merill', 'Delbergue', 'Viva', 'mdelbergue6d@sina.com.cn', '991-715-9953', '2023-06-27', '663-06-4752', '1997-08-01', 'Desktop Support Technician', 'S', 'M'),
('Alysia', 'Camm', 'Teklist', 'acamm6e@java.com', '678-304-2409', '2023-05-01', '415-78-2987', '1999-03-25', 'Analog Circuit Design manager', 'S', 'F'),
('Elmira', 'Nanninini', 'Viva', 'enanninini6f@simplemachines.org', '255-638-3109', '2023-07-23', '747-39-8538', '1990-08-24', 'Technical Writer', 'S', 'F'),
('Willi', 'Lowfill', 'Fiveclub', 'wlowfill6g@imageshack.us', '650-764-3885', '2023-06-02', '675-63-2062', '1995-06-08', 'Nurse', 'M', 'M'),
('Florencia', 'Leyfield', 'Feedmix', 'fleyfield6h@virginia.edu', '598-863-8289', '2023-06-13', '771-02-5132', '1991-11-04', 'Desktop Support Technician', 'S', 'F'),
('Sula', 'Drewery', 'Oyope', 'sdrewery6i@scientificamerican.com', '412-172-2806', '2023-03-02', '280-27-4981', '1982-12-08', 'VP Marketing', 'S', 'F'),
('Agnese', 'Avrahamof', 'Teklist', 'aavrahamof6j@mysql.com', '456-351-4830', '2023-01-30', '720-79-0513', '1995-02-26', 'Geologist II', 'S', 'F'),
('Ariella', 'Glenton', 'Realcube', 'aglenton6k@myspace.com', '927-974-7953', '2022-12-03', '853-53-3917', '1981-03-20', 'Chemical Engineer', 'M', 'F'),
('Lila', 'Croom', 'Skinte', 'lcroom6l@rambler.ru', '774-350-4287', '2023-07-16', '520-95-7924', '1990-07-26', 'Engineer II', 'S', 'F'),
('Edita', 'Sheppey', 'Jabbersphere', 'esheppey6m@addtoany.com', '517-290-4370', '2022-09-22', '601-32-5954', '1997-01-22', 'Statistician II', 'S', 'F'),
('Giavani', 'Duinbleton', 'Skippad', 'gduinbleton6n@upenn.edu', '608-201-4506', '2022-11-12', '848-94-9621', '1995-06-18', 'Actuary', 'M', 'M'),
('Rhea', 'Meeron', 'Linkbridge', 'rmeeron6o@bigcartel.com', '414-414-3955', '2023-09-13', '204-21-7119', '1990-09-09', 'Biostatistician III', 'M', 'F'),
('Neila', 'Hayden', 'Dabjam', 'nhayden6p@yellowbook.com', '143-789-6364', '2023-07-25', '821-36-1821', '1993-04-24', 'VP Product Management', 'M', 'F'),
('Frances', 'Norcross', 'Centidel', 'fnorcross6q@csmonitor.com', '790-438-0229', '2023-03-04', '156-81-8636', '1989-09-25', 'Social Worker', 'S', 'F'),
('Stanislaw', 'Theobald', 'Tazzy', 'stheobald6r@dropbox.com', '904-672-3624', '2023-06-02', '695-92-5624', '1999-06-26', 'Analog Circuit Design manager', 'S', 'M'),
('Kristoforo', 'Feld', 'Yozio', 'kfeld6s@wikia.com', '623-225-5630', '2023-04-14', '449-06-4722', '1997-02-24', 'Help Desk Operator', 'S', 'M'),
('Simone', 'Portman', 'Yakidoo', 'sportman6t@yandex.ru', '268-831-5682', '2022-09-26', '698-64-3998', '1981-09-22', 'Web Designer II', 'M', 'F'),
('Bert', 'Adrain', 'Thoughtworks', 'badrain6u@chron.com', '805-669-2294', '2023-07-01', '879-91-3082', '2002-04-05', 'Information Systems Manager', 'S', 'M'),
('Gardiner', 'Ewbanck', 'Demivee', 'gewbanck6v@seattletimes.com', '793-680-7768', '2022-10-08', '321-21-2020', '1990-01-06', 'Marketing Manager', 'M', 'M'),
('Gordy', 'Campos', 'Innojam', 'gcampos6w@admin.ch', '274-435-0493', '2023-01-26', '308-21-0948', '1984-08-14', 'Biostatistician IV', 'S', 'M'),
('Saidee', 'Issitt', 'Bluejam', 'sissitt6x@blinklist.com', '778-192-8182', '2023-04-10', '320-49-6435', '1996-11-27', 'Project Manager', 'M', 'F'),
('Ruddie', 'Brackenridge', 'Eidel', 'rbrackenridge6y@drupal.org', '973-948-5876', '2023-07-09', '356-07-7283', '1990-09-10', 'Nurse Practicioner', 'M', 'M'),
('Ulrick', 'Rawdales', 'Oyondu', 'urawdales6z@i2i.jp', '707-209-8943', '2023-03-28', '544-08-4321', '1985-09-30', 'Account Coordinator', 'S', 'M'),
('Crosby', 'Drewet', 'Mycat', 'cdrewet70@mtv.com', '470-303-9581', '2023-05-31', '890-34-9444', '1982-02-04', 'Internal Auditor', 'M', 'M'),
('Farly', 'Bosche', 'Meevee', 'fbosche71@mozilla.org', '662-532-7560', '2023-05-01', '671-50-2015', '1986-05-07', 'Health Coach III', 'M', 'M'),
('Stoddard', 'Pilsbury', 'Mita', 'spilsbury72@delicious.com', '216-140-0181', '2022-11-17', '548-89-2874', '1988-01-22', 'Computer Systems Analyst III', 'S', 'F'),
('Jefferey', 'Mabey', 'Thoughtblab', 'jmabey73@foxnews.com', '483-831-5109', '2022-10-22', '766-18-3149', '1986-08-14', 'Payment Adjustment Coordinator', 'M', 'M'),
('Tudor', 'Dobsons', 'Quaxo', 'tdobsons74@feedburner.com', '272-642-8765', '2023-03-08', '625-18-8462', '1996-04-06', 'Nuclear Power Engineer', 'M', 'M'),
('Winnie', 'Gillinghams', 'Blogtag', 'wgillinghams75@xrea.com', '116-232-2240', '2022-10-05', '216-30-5785', '1983-09-10', 'Quality Control Specialist', 'M', 'M'),
('Karlotte', 'Wybern', 'Meeveo', 'kwybern76@zdnet.com', '951-335-0385', '2023-01-05', '726-36-8506', '1991-10-15', 'Staff Accountant I', 'M', 'F'),
('Hoyt', 'Geeson', 'Yombu', 'hgeeson77@amazon.co.jp', '276-929-8301', '2023-04-09', '663-50-2779', '1983-02-27', 'Cost Accountant', 'S', 'M'),
('Udall', 'Topling', 'Eayo', 'utopling78@ed.gov', '537-710-3466', '2023-04-05', '144-94-7581', '1999-10-27', 'Physical Therapy Assistant', 'S', 'M'),
('Delilah', 'Philippson', 'Skipfire', 'dphilippson79@un.org', '856-860-9267', '2022-12-13', '780-57-1851', '1982-10-18', 'Marketing Assistant', 'S', 'F'),
('Talbot', 'Nizard', 'Zoomcast', 'tnizard7a@psu.edu', '485-432-6661', '2023-01-27', '621-36-0933', '1980-12-08', 'VP Accounting', 'M', 'M'),
('Thorstein', 'Strangeways', 'Photojam', 'tstrangeways7b@google.cn', '415-484-1216', '2023-04-04', '150-30-9756', '1985-03-28', 'Payment Adjustment Coordinator', 'M', 'M'),
('Vitoria', 'Briggs', 'Yamia', 'vbriggs7c@moonfruit.com', '566-909-1721', '2022-12-21', '538-08-7135', '1985-08-24', 'GIS Technical Architect', 'M', 'F'),
('Octavia', 'Cordero', 'Skipstorm', 'ocordero7d@tripod.com', '815-549-5239', '2023-02-08', '163-58-9475', '1988-02-27', 'Administrative Assistant IV', 'S', 'F'),
('Hasheem', 'Simester', 'Avavee', 'hsimester7e@t.co', '385-126-3913', '2023-02-15', '523-28-1414', '1988-11-15', 'Research Assistant III', 'M', 'M'),
('Aimee', 'Karolovsky', 'Dabfeed', 'akarolovsky7f@mozilla.com', '415-245-4414', '2023-01-20', '816-11-6874', '1986-02-11', 'VP Quality Control', 'S', 'F'),
('Dunstan', 'Blazeby', 'Twiyo', 'dblazeby7g@amazonaws.com', '604-319-6273', '2022-11-13', '536-12-6976', '1995-04-15', 'Software Consultant', 'M', 'M'),
('Wiley', 'Hawgood', 'Voomm', 'whawgood7h@seattletimes.com', '835-743-9199', '2023-04-26', '576-14-2857', '1993-01-12', 'Actuary', 'S', 'M'),
('Catha', 'Huxton', 'Shufflester', 'chuxton7i@xing.com', '966-681-2006', '2022-11-20', '375-80-4348', '1999-09-01', 'Sales Associate', 'S', 'F'),
('Kenyon', 'McHardy', 'Thoughtmix', 'kmchardy7j@ft.com', '175-217-7744', '2022-10-08', '230-53-0102', '1989-10-25', 'Safety Technician III', 'M', 'M'),
('Moses', 'Polin', 'Kayveo', 'mpolin7k@altervista.org', '400-758-3439', '2023-04-05', '435-70-5834', '1996-08-13', 'VP Accounting', 'S', 'M'),
('Der', 'Gossage', 'Chatterbridge', 'dgossage7l@surveymonkey.com', '394-372-2391', '2023-03-11', '311-66-0399', '1992-02-21', 'Associate Professor', 'M', 'M'),
('Ernest', 'Markie', 'Zooveo', 'emarkie7m@unesco.org', '891-595-7122', '2023-08-25', '467-78-8671', '1987-09-30', 'Design Engineer', 'M', 'M'),
('Lionello', 'Johansson', 'Yodel', 'ljohansson7n@yahoo.co.jp', '337-779-6592', '2023-08-24', '728-03-9055', '1983-03-07', 'Software Engineer III', 'M', 'M'),
('Arnie', 'Roeby', 'Yozio', 'aroeby7o@mail.ru', '843-850-2572', '2023-01-08', '383-68-7186', '2001-10-23', 'Physical Therapy Assistant', 'M', 'M'),
('Corny', 'Ausello', 'Digitube', 'causello7p@bbb.org', '555-993-3768', '2022-12-27', '315-04-7936', '1993-04-22', 'Senior Financial Analyst', 'M', 'F'),
('Mandie', 'Ellesmere', 'Topicshots', 'mellesmere7q@friendfeed.com', '713-926-9187', '2023-07-31', '577-18-8155', '1981-09-20', 'Mechanical Systems Engineer', 'M', 'F'),
('Ugo', 'Langstone', 'Jayo', 'ulangstone7r@statcounter.com', '671-424-0299', '2023-04-09', '559-21-8168', '1985-07-08', 'Product Engineer', 'M', 'M'),
('Opal', 'Adshede', 'Trupe', 'oadshede7s@redcross.org', '750-811-7332', '2023-04-03', '817-20-7617', '1984-12-15', 'Account Executive', 'S', 'F'),
('Ulrikaumeko', 'Kermannes', 'Centizu', 'ukermannes7t@go.com', '706-843-9575', '2022-09-27', '386-08-7596', '1982-04-12', 'Engineer I', 'M', 'F'),
('Candra', 'Willingale', 'Vimbo', 'cwillingale7u@geocities.com', '962-129-8151', '2023-05-30', '554-02-9213', '2000-03-03', 'Web Developer III', 'S', 'F'),
('Frants', 'Adamiak', 'Eire', 'fadamiak7v@cocolog-nifty.com', '962-937-0795', '2023-08-07', '177-47-5267', '1986-04-12', 'Operator', 'S', 'M'),
('Angel', 'Darkott', 'Tambee', 'adarkott7w@narod.ru', '590-243-2441', '2023-08-22', '263-47-9705', '1992-11-02', 'Internal Auditor', 'S', 'M'),
('Yehudit', 'Clinton', 'Flashpoint', 'yclinton7x@bravesites.com', '735-836-5967', '2023-05-23', '855-30-8535', '1997-11-21', 'Electrical Engineer', 'S', 'M'),
('Welby', 'Fitzsymons', 'Buzzster', 'wfitzsymons7y@nhs.uk', '221-127-0343', '2023-04-28', '236-29-8779', '2001-12-04', 'Software Engineer I', 'S', 'M'),
('Kevyn', 'Joice', 'Jabbersphere', 'kjoice7z@google.com.hk', '147-266-6673', '2022-12-05', '771-20-0446', '1990-03-12', 'Analyst Programmer', 'S', 'F'),
('Robinette', 'Wrack', 'Edgewire', 'rwrack80@mapy.cz', '118-649-6674', '2023-06-03', '155-34-0835', '1995-11-07', 'Structural Engineer', 'S', 'F'),
('Dionysus', 'Bruff', 'Ozu', 'dbruff81@naver.com', '201-279-7128', '2023-06-21', '127-58-1202', '1987-11-25', 'Recruiting Manager', 'M', 'M'),
('Constantia', 'Brimm', 'Bluezoom', 'cbrimm82@bloglovin.com', '859-810-0869', '2023-03-01', '444-14-5650', '1989-12-26', 'Senior Quality Engineer', 'S', 'F'),
('Byrann', 'Winyard', 'Shuffledrive', 'bwinyard83@wiley.com', '751-734-2959', '2022-10-26', '710-05-1729', '1986-08-23', 'Editor', 'M', 'M'),
('Eugen', 'McKee', 'Topiclounge', 'emckee84@friendfeed.com', '287-833-1291', '2023-04-25', '609-03-0078', '1988-11-21', 'Structural Analysis Engineer', 'M', 'M'),
('Teirtza', 'Dalgarno', 'Yabox', 'tdalgarno85@google.it', '882-613-8755', '2022-11-09', '622-21-4153', '1991-02-19', 'Social Worker', 'S', 'F'),
('Stavro', 'Fominov', 'Twinder', 'sfominov86@joomla.org', '520-466-8523', '2023-02-20', '258-45-6765', '1982-04-16', 'Quality Engineer', 'S', 'M'),
('Sib', 'Lalley', 'Devpoint', 'slalley87@cam.ac.uk', '883-149-0139', '2023-04-14', '258-83-5602', '1988-04-08', 'Software Test Engineer II', 'M', 'F'),
('Nils', 'Komorowski', 'Eidel', 'nkomorowski88@pcworld.com', '804-899-7077', '2023-02-19', '354-34-1379', '1991-08-06', 'General Manager', 'S', 'M'),
('Sofia', 'Pooly', 'Meevee', 'spooly89@patch.com', '204-357-3812', '2022-11-12', '663-90-0781', '1996-03-14', 'Graphic Designer', 'M', 'F'),
('Farrah', 'Maysor', 'Tekfly', 'fmaysor8a@skype.com', '999-732-8558', '2023-04-18', '178-66-0267', '1995-07-03', 'Safety Technician IV', 'S', 'F'),
('Ruthe', 'Nassau', 'Meembee', 'rnassau8b@amazonaws.com', '382-237-3619', '2023-03-28', '773-38-2261', '1987-08-24', 'Programmer I', 'M', 'F'),
('Levey', 'Handmore', 'Digitube', 'lhandmore8c@ustream.tv', '322-607-6406', '2023-03-10', '272-16-4661', '1996-04-23', 'Accounting Assistant I', 'M', 'M'),
('Adrian', 'Quincey', 'Meedoo', 'aquincey8d@wikimedia.org', '904-836-3725', '2023-06-09', '337-92-8669', '2000-05-26', 'VP Product Management', 'S', 'F'),
('Kandace', 'Lardiner', 'Meedoo', 'klardiner8e@about.me', '569-393-0329', '2023-06-16', '621-30-4453', '1988-06-06', 'Editor', 'S', 'F'),
('Rolland', 'Winsom', 'Babbleset', 'rwinsom8f@altervista.org', '507-845-3419', '2023-03-17', '399-85-4141', '1991-03-24', 'Business Systems Development Analyst', 'M', 'M'),
('Reta', 'O''Longain', 'Realfire', 'rolongain8g@msu.edu', '224-934-1318', '2023-06-06', '693-49-3266', '1984-04-26', 'Accounting Assistant II', 'S', 'F'),
('Ailene', 'Oehme', 'Muxo', 'aoehme8h@ning.com', '740-729-8156', '2022-10-31', '734-04-8499', '2000-03-19', 'GIS Technical Architect', 'S', 'F'),
('Ameline', 'Arboin', 'Latz', 'aarboin8i@elegantthemes.com', '773-290-3164', '2023-07-06', '615-66-5598', '1999-03-19', 'Assistant Professor', 'S', 'F'),
('Fred', 'Morson', 'Divavu', 'fmorson8j@samsung.com', '157-725-3651', '2023-02-06', '628-88-3042', '1985-01-19', 'Automation Specialist III', 'M', 'M'),
('Barde', 'Swateridge', 'Skynoodle', 'bswateridge8k@parallels.com', '744-571-9702', '2022-10-23', '294-22-3672', '1988-12-04', 'Occupational Therapist', 'M', 'M'),
('Gerald', 'Kynman', 'Gigazoom', 'gkynman8l@yolasite.com', '529-711-6548', '2023-08-24', '166-46-9420', '1981-08-29', 'VP Product Management', 'M', 'M'),
('Madison', 'Sallowaye', 'Buzzster', 'msallowaye8m@feedburner.com', '938-939-4818', '2023-07-20', '833-06-1270', '1988-11-15', 'Geologist II', 'M', 'M'),
('Shaughn', 'Bifield', 'Vinder', 'sbifield8n@w3.org', '902-503-9669', '2023-06-26', '719-91-2267', '1989-04-19', 'Nurse Practicioner', 'M', 'M'),
('Steffie', 'Sheard', 'Fliptune', 'ssheard8o@imdb.com', '617-703-7668', '2023-08-28', '588-47-3157', '1992-02-16', 'Web Developer II', 'M', 'F'),
('Ferrel', 'Rubinivitz', 'Voonix', 'frubinivitz8p@homestead.com', '487-740-9607', '2023-02-20', '329-28-1774', '1993-02-01', 'Senior Developer', 'S', 'M'),
('Kaleena', 'Haile', 'Wordtune', 'khaile8q@unesco.org', '257-611-2862', '2023-07-01', '773-74-4556', '1981-09-13', 'Software Consultant', 'S', 'F'),
('Ase', 'Meardon', 'Gevee', 'ameardon8r@hibu.com', '137-845-9823', '2023-03-04', '388-67-4847', '1985-12-04', 'Junior Executive', 'M', 'M'),
('Andre', 'Hessing', 'Cogibox', 'ahessing8s@ucoz.com', '887-262-0794', '2022-10-05', '686-11-7847', '2001-02-13', 'Web Designer II', 'S', 'M'),
('Elisa', 'Kernoghan', 'Mybuzz', 'ekernoghan8t@51.la', '853-154-1018', '2023-05-25', '622-12-5572', '1981-03-31', 'Business Systems Development Analyst', 'M', 'F'),
('Aaron', 'Skep', 'Fanoodle', 'askep8u@1und1.de', '857-717-6921', '2022-11-10', '220-32-4442', '2002-01-25', 'Registered Nurse', 'S', 'M'),
('Alex', 'Brack', 'Centidel', 'abrack8v@economist.com', '884-549-1668', '2023-05-12', '532-82-8400', '1984-03-16', 'Quality Engineer', 'M', 'F'),
('Kettie', 'Roche', 'Agimba', 'kroche8w@cpanel.net', '697-642-3990', '2023-02-09', '194-80-1493', '2001-05-21', 'Nurse', 'S', 'F'),
('Lolly', 'McGahy', 'Feednation', 'lmcgahy8x@addthis.com', '222-581-2673', '2023-03-01', '326-41-9041', '1990-11-12', 'Graphic Designer', 'M', 'F'),
('Anita', 'Parminter', 'Meetz', 'aparminter8y@youtu.be', '550-971-4773', '2022-10-28', '693-90-8050', '1986-01-14', 'Geologist I', 'M', 'F'),
('Laureen', 'Runciman', 'Oyoba', 'lrunciman8z@friendfeed.com', '347-524-9855', '2023-01-06', '597-42-0223', '1988-08-07', 'Electrical Engineer', 'M', 'F'),
('Parsifal', 'Ind', 'Realmix', 'pind90@wordpress.org', '258-255-6102', '2022-12-19', '308-29-0931', '1984-08-25', 'Database Administrator II', 'S', 'M'),
('Jana', 'Auty', 'Shuffledrive', 'jauty91@delicious.com', '165-206-2739', '2023-01-04', '714-04-5251', '1996-05-07', 'Quality Control Specialist', 'M', 'F'),
('Zolly', 'Tinghill', 'Kare', 'ztinghill92@google.it', '940-978-4272', '2023-06-05', '802-66-5872', '1984-12-03', 'Research Associate', 'S', 'M'),
('Danica', 'Neary', 'Minyx', 'dneary93@amazonaws.com', '189-841-1626', '2022-10-15', '890-16-4456', '1992-09-03', 'Sales Representative', 'M', 'F'),
('Charil', 'Ellis', 'Zoomzone', 'cellis94@live.com', '211-251-1833', '2023-05-20', '312-60-2208', '1983-10-30', 'Staff Accountant III', 'S', 'F'),
('Brandice', 'Briston', 'Vidoo', 'bbriston95@mashable.com', '227-638-5804', '2022-10-08', '120-98-6702', '1989-08-19', 'Environmental Tech', 'M', 'F'),
('Ally', 'Scotting', 'Shufflebeat', 'ascotting96@nifty.com', '641-367-1097', '2022-10-23', '600-48-0673', '1986-08-11', 'Technical Writer', 'M', 'F'),
('Keane', 'Molloy', 'Tagfeed', 'kmolloy97@goo.ne.jp', '645-234-3152', '2023-01-11', '280-20-5554', '1988-09-16', 'Associate Professor', 'S', 'M'),
('Jeno', 'Novak', 'Wordpedia', 'jnovak98@dailymail.co.uk', '473-650-4702', '2023-04-03', '819-38-9071', '1997-08-16', 'Associate Professor', 'S', 'M'),
('Roxie', 'Munsey', 'Kazu', 'rmunsey99@4shared.com', '432-225-0206', '2023-02-24', '555-16-1973', '1990-08-15', 'Web Developer III', 'M', 'F'),
('Korie', 'Armsden', 'Thoughtblab', 'karmsden9a@mapquest.com', '649-281-6193', '2023-05-17', '632-72-1369', '1996-10-25', 'Computer Systems Analyst II', 'M', 'F'),
('Alfonso', 'Petruskevich', 'Devpoint', 'apetruskevich9b@ezinearticles.com', '666-215-0585', '2023-04-16', '589-03-0852', '1998-06-19', 'Business Systems Development Analyst', 'S', 'M'),
('Gearalt', 'Plank', 'Shufflester', 'gplank9c@nba.com', '541-810-6061', '2023-07-10', '594-32-5903', '1996-05-25', 'Engineer I', 'S', 'M'),
('Netta', 'Camoys', 'Geba', 'ncamoys9d@photobucket.com', '861-986-8689', '2023-04-05', '516-58-4578', '1991-10-07', 'Nurse Practicioner', 'S', 'F'),
('Niki', 'Trainor', 'Babblestorm', 'ntrainor9e@businessinsider.com', '955-621-9068', '2022-10-05', '457-65-2092', '1985-06-22', 'Tax Accountant', 'S', 'M'),
('Debi', 'Sink', 'Twimm', 'dsink9f@guardian.co.uk', '201-479-2182', '2023-09-15', '191-12-2105', '1983-03-27', 'Software Engineer I', 'M', 'F'),
('August', 'Dodgson', 'Wordtune', 'adodgson9g@fda.gov', '127-206-1230', '2022-09-29', '771-99-4281', '1995-11-13', 'Clinical Specialist', 'M', 'M'),
('Leonerd', 'Eake', 'Snaptags', 'leake9h@jimdo.com', '836-355-6713', '2022-10-28', '732-11-8346', '1997-01-11', 'Pharmacist', 'S', 'M'),
('Maurita', 'Linley', 'Skaboo', 'mlinley9i@bloomberg.com', '391-532-9926', '2023-05-05', '824-98-6056', '1987-03-30', 'Media Manager III', 'S', 'F'),
('L,urette', 'Szymanski', 'Flipstorm', 'lszymanski9j@feedburner.com', '339-443-3470', '2022-12-18', '524-98-8887', '1998-12-15', 'Electrical Engineer', 'S', 'F'),
('Jeri', 'Brandon', 'Tagchat', 'jbrandon9k@liveinternet.ru', '767-530-2685', '2023-02-24', '585-90-3267', '1989-03-29', 'Actuary', 'M', 'F'),
('Ethelbert', 'Assad', 'Meevee', 'eassad9l@sitemeter.com', '759-334-1660', '2022-12-28', '781-54-3395', '1989-08-31', 'Paralegal', 'M', 'M'),
('Neall', 'Stepney', 'Skipstorm', 'nstepney9m@istockphoto.com', '363-520-3469', '2023-02-07', '139-05-4707', '1991-12-09', 'Accountant II', 'M', 'M'),
('Perry', 'Kirmond', 'Vimbo', 'pkirmond9n@patch.com', '958-929-4663', '2023-01-06', '142-62-0826', '1998-11-22', 'Automation Specialist IV', 'S', 'F'),
('Jodi', 'Estevez', 'Wikivu', 'jestevez9o@woothemes.com', '177-917-8621', '2022-10-21', '799-16-7343', '1995-05-31', 'Executive Secretary', 'S', 'M'),
('Sutherland', 'Moxon', 'Myworks', 'smoxon9p@sciencedirect.com', '559-292-7262', '2023-01-11', '163-21-6922', '1992-07-08', 'VP Quality Control', 'S', 'M'),
('Osborne', 'Dowsing', 'Shufflebeat', 'odowsing9q@ow.ly', '866-611-9303', '2023-08-14', '850-85-5788', '1991-07-01', 'Pharmacist', 'S', 'M'),
('Honor', 'Skewes', 'Jayo', 'hskewes9r@studiopress.com', '294-591-2217', '2023-02-28', '786-51-7630', '1994-10-08', 'Junior Executive', 'M', 'F'),
('Rosanna', 'Matthewson', 'Gigabox', 'rmatthewson9s@domainmarket.com', '928-185-3811', '2022-11-21', '837-55-0426', '1989-07-16', 'Cost Accountant', 'M', 'F'),
('Joya', 'Janicki', 'Feedmix', 'jjanicki9t@psu.edu', '281-174-9426', '2022-11-03', '131-17-4653', '1984-02-03', 'Sales Representative', 'S', 'F'),
('Ricardo', 'Custed', 'Topicblab', 'rcusted9u@elegantthemes.com', '286-943-9343', '2023-09-12', '400-87-7607', '2001-06-20', 'Technical Writer', 'M', 'M'),
('Hussein', 'Lyddiatt', 'Jabbersphere', 'hlyddiatt9v@wsj.com', '288-360-7354', '2022-10-18', '460-02-2169', '1999-05-05', 'Clinical Specialist', 'S', 'M'),
('Matthaeus', 'Ceney', 'Livepath', 'mceney9w@ucoz.ru', '290-748-2031', '2023-05-09', '682-13-8269', '1985-04-25', 'Office Assistant I', 'M', 'M'),
('Geoffry', 'Simko', 'Trilith', 'gsimko9x@liveinternet.ru', '930-352-5788', '2023-08-11', '757-98-6808', '1993-05-04', 'Nurse', 'S', 'M'),
('Filberto', 'Risely', 'Leexo', 'frisely9y@dedecms.com', '775-394-5659', '2022-11-10', '333-63-1557', '1984-03-06', 'Account Coordinator', 'S', 'M'),
('Samara', 'Springham', 'Twinder', 'sspringham9z@sciencedaily.com', '420-369-4051', '2022-12-23', '891-36-8804', '2001-02-11', 'Database Administrator IV', 'M', 'F'),
('Tamera', 'Manuaud', 'Geba', 'tmanuauda0@1688.com', '752-835-1508', '2023-03-11', '159-82-5396', '1994-09-09', 'Research Associate', 'S', 'F'),
('Gay', 'Gostyke', 'Twitternation', 'ggostykea1@symantec.com', '234-500-6129', '2023-01-07', '260-54-4002', '1992-03-22', 'Account Coordinator', 'S', 'F'),
('Vinny', 'Helks', 'Shuffletag', 'vhelksa2@gnu.org', '487-813-9182', '2023-06-23', '342-18-9148', '2000-02-01', 'Sales Representative', 'S', 'M'),
('Bartram', 'Offa', 'Yodel', 'boffaa3@home.pl', '134-618-2763', '2023-03-03', '594-11-5781', '1982-02-20', 'Software Consultant', 'M', 'M'),
('Ashlin', 'Brunini', 'Talane', 'abruninia4@mediafire.com', '263-135-6916', '2022-09-21', '252-75-5526', '2002-01-11', 'Project Manager', 'S', 'M'),
('Mick', 'Baxter', 'Skimia', 'mbaxtera5@salon.com', '171-953-5326', '2022-11-13', '274-66-6771', '1999-11-17', 'Director of Sales', 'S', 'M'),
('Blinny', 'Winson', 'Jayo', 'bwinsona6@bigcartel.com', '820-407-8003', '2023-08-23', '431-58-2524', '1984-01-10', 'VP Accounting', 'S', 'F'),
('Grayce', 'Roast', 'Linklinks', 'groasta7@google.ru', '677-196-7653', '2023-02-18', '175-92-1493', '2000-11-10', 'Tax Accountant', 'M', 'F'),
('Kattie', 'Forgan', 'Vipe', 'kforgana8@xinhuanet.com', '762-517-4017', '2023-09-10', '610-35-6525', '1998-04-01', 'Staff Scientist', 'S', 'F'),
('Wernher', 'Sawday', 'Zoomlounge', 'wsawdaya9@forbes.com', '491-532-1608', '2023-03-30', '579-37-3776', '1981-10-09', 'Professor', 'S', 'M'),
('Tull', 'Tomashov', 'Gabvine', 'ttomashovaa@businesswire.com', '500-384-0172', '2023-09-14', '253-27-2274', '1998-08-16', 'Community Outreach Specialist', 'M', 'M'),
('Arley', 'Markey', 'Zava', 'amarkeyab@aboutads.info', '689-217-1813', '2022-11-05', '808-79-3145', '2002-09-11', 'Research Associate', 'S', 'M'),
('Kenton', 'Hayles', 'Viva', 'khaylesac@so-net.ne.jp', '919-131-9526', '2023-04-15', '834-32-1703', '1994-03-20', 'Sales Representative', 'S', 'M'),
('Mike', 'O''Loughlin', 'Kwilith', 'moloughlinad@dyndns.org', '500-459-8706', '2023-08-30', '502-97-6482', '1987-07-07', 'VP Marketing', 'S', 'M'),
('Neille', 'Howarth', 'Youopia', 'nhowarthae@pen.io', '115-666-7665', '2023-07-15', '760-55-2767', '1991-01-25', 'Software Test Engineer IV', 'S', 'F'),
('Elora', 'Twinborne', 'Brainverse', 'etwinborneaf@comsenz.com', '462-939-0218', '2023-06-10', '305-43-8944', '1999-06-05', 'Structural Analysis Engineer', 'M', 'F'),
('Claire', 'Grandin', 'Meedoo', 'cgrandinag@wikipedia.org', '452-960-8143', '2022-12-25', '332-24-2594', '1997-06-12', 'Human Resources Assistant I', 'S', 'F'),
('Shaughn', 'Fleetham', 'Youopia', 'sfleethamah@vkontakte.ru', '826-590-7831', '2022-11-04', '524-98-4786', '1981-06-21', 'Chief Design Engineer', 'S', 'M'),
('Miriam', 'Bodker', 'Topicshots', 'mbodkerai@scribd.com', '119-407-4044', '2022-09-22', '720-02-9276', '1991-03-25', 'Sales Associate', 'M', 'F'),
('Antonetta', 'Oda', 'Skiba', 'aodaaj@bluehost.com', '101-230-2495', '2022-09-17', '217-80-8110', '1982-12-27', 'Paralegal', 'S', 'F'),
('Evin', 'Laffoley-Lane', 'Linkbridge', 'elaffoleylaneak@xing.com', '313-566-7761', '2023-04-20', '413-27-0073', '1988-01-17', 'Nurse', 'M', 'M'),
('Ambrosi', 'Mordey', 'Feedfire', 'amordeyal@wufoo.com', '318-788-6648', '2023-05-04', '519-57-1336', '1992-01-26', 'Project Manager', 'S', 'M'),
('Pier', 'Ridehalgh', 'Jetwire', 'pridehalgham@cyberchimps.com', '892-475-5658', '2022-11-02', '536-08-3435', '1987-06-21', 'Assistant Professor', 'M', 'F'),
('Nertie', 'Cuttin', 'BlogXS', 'ncuttinan@disqus.com', '979-139-0342', '2022-12-06', '518-73-0810', '2002-05-07', 'Geologist I', 'S', 'F'),
('Quincey', 'Demke', 'Mymm', 'qdemkeao@hc360.com', '447-109-7988', '2022-11-06', '496-24-2157', '1990-01-14', 'Chemical Engineer', 'S', 'M'),
('Chery', 'Eppson', 'Dynabox', 'ceppsonap@creativecommons.org', '622-695-6032', '2022-10-30', '435-69-6522', '1995-12-23', 'Recruiting Manager', 'M', 'F'),
('Gail', 'Tussaine', 'Rhynyx', 'gtussaineaq@livejournal.com', '586-140-7240', '2023-07-12', '683-28-9385', '1983-11-01', 'Computer Systems Analyst I', 'M', 'M'),
('Shelley', 'Patis', 'Ailane', 'spatisar@addtoany.com', '809-344-1979', '2023-07-08', '499-28-5084', '1985-01-04', 'Media Manager II', 'M', 'M'),
('Crin', 'Issacov', 'Jaxnation', 'cissacovas@nih.gov', '919-545-6312', '2023-08-20', '560-05-6510', '2001-08-06', 'Systems Administrator IV', 'M', 'F'),
('Manda', 'Sayton', 'Jabbersphere', 'msaytonat@deviantart.com', '118-999-4871', '2023-04-26', '464-88-7030', '1991-10-29', 'Civil Engineer', 'S', 'F'),
('Joycelin', 'Sabate', 'Midel', 'jsabateau@usatoday.com', '217-825-8407', '2023-06-19', '423-17-7649', '1981-05-21', 'Financial Analyst', 'M', 'F'),
('Bettina', 'Sambath', 'Jabbertype', 'bsambathav@technorati.com', '700-692-0113', '2023-03-13', '229-62-3504', '1993-05-29', 'Actuary', 'M', 'F'),
('Tucky', 'Pringour', 'Bubblebox', 'tpringouraw@squarespace.com', '856-613-4197', '2023-01-11', '771-32-0920', '1996-11-16', 'Engineer III', 'S', 'M'),
('Caro', 'Creser', 'Eazzy', 'ccreserax@tuttocitta.it', '599-537-7075', '2022-11-26', '804-76-5096', '1982-02-22', 'Librarian', 'M', 'F'),
('Graig', 'Alkins', 'Topiczoom', 'galkinsay@drupal.org', '459-270-5909', '2023-03-07', '768-53-1713', '1988-07-22', 'Associate Professor', 'M', 'M'),
('Malissia', 'Goddert.sf', 'Shufflester', 'mgoddertsfaz@mysql.com', '170-421-3520', '2023-08-11', '606-79-7643', '2002-05-08', 'Registered Nurse', 'M', 'F'),
('Sadie', 'Poundsford', 'Blogtag', 'spoundsfordb0@gov.uk', '796-400-9714', '2023-08-29', '238-56-7987', '1988-06-03', 'Developer II', 'S', 'F'),
('Shurlocke', 'Casale', 'Wordware', 'scasaleb1@webnode.com', '195-298-8865', '2023-08-13', '617-65-3499', '1987-11-04', 'Occupational Therapist', 'M', 'M'),
('Evelina', 'Uccello', 'Podcat', 'euccellob2@skyrock.com', '404-371-6875', '2023-04-29', '657-69-6887', '1988-12-01', 'Health Coach I', 'S', 'F'),
('Dena', 'Goby', 'Kwideo', 'dgobyb3@msn.com', '175-772-1526', '2023-06-12', '573-94-9766', '2000-03-23', 'VP Product Management', 'S', 'F'),
('Jenilee', 'Thoresby', 'Avamm', 'jthoresbyb4@flavors.me', '303-732-5628', '2023-01-23', '657-17-8323', '1986-01-25', 'Recruiter', 'M', 'F'),
('Manon', 'Skelhorne', 'Fiveclub', 'mskelhorneb5@google.pl', '908-340-5421', '2022-11-27', '404-96-1778', '1995-09-21', 'Editor', 'M', 'F'),
('Kathe', 'Thomel', 'Skibox', 'kthomelb6@quantcast.com', '665-778-6743', '2023-01-10', '543-22-2282', '1984-08-02', 'Administrative Assistant III', 'M', 'F'),
('Arliene', 'Dumbrill', 'Gabspot', 'adumbrillb7@moonfruit.com', '547-227-9936', '2023-09-02', '692-62-3707', '1998-12-04', 'Structural Analysis Engineer', 'M', 'F'),
('Lanna', 'Stearndale', 'Yacero', 'lstearndaleb8@sphinn.com', '556-183-4206', '2023-03-10', '690-58-5633', '1982-10-27', 'Pharmacist', 'S', 'F'),
('Isabelita', 'Rickcord', 'Aimbo', 'irickcordb9@un.org', '780-656-4248', '2023-08-25', '441-70-5280', '1987-05-12', 'Data Coordinator', 'M', 'F'),
('Rockie', 'Hoogendorp', 'Vinte', 'rhoogendorpba@dot.gov', '741-574-2295', '2022-10-27', '274-78-2349', '1987-08-10', 'Design Engineer', 'M', 'M'),
('Elwira', 'Glyne', 'Eamia', 'eglynebb@nasa.gov', '756-985-2265', '2023-07-02', '803-22-0898', '1994-12-07', 'Civil Engineer', 'S', 'F'),
('Berkley', 'Stanyland', 'Cogilith', 'bstanylandbc@aol.com', '364-390-7046', '2023-03-13', '821-32-9857', '1987-09-12', 'Nuclear Power Engineer', 'S', 'M'),
('Lonee', 'Plampeyn', 'Avaveo', 'lplampeynbd@oaic.gov.au', '589-445-7386', '2022-12-29', '745-52-1090', '1992-04-04', 'Chemical Engineer', 'M', 'F'),
('Christopher', 'Roake', 'Tazz', 'croakebe@usnews.com', '542-761-7988', '2023-01-09', '288-90-8444', '1999-10-24', 'Marketing Manager', 'M', 'M'),
('Wake', 'Curner', 'Bluezoom', 'wcurnerbf@mlb.com', '246-814-5521', '2023-04-16', '249-91-2382', '1998-01-01', 'Database Administrator II', 'M', 'M'),
('Clair', 'Cannavan', 'Yakijo', 'ccannavanbg@xrea.com', '932-492-8922', '2023-01-03', '758-59-6430', '1996-12-14', 'Recruiting Manager', 'S', 'F'),
('Roana', 'Inglis', 'Yata', 'ringlisbh@amazon.de', '873-947-6253', '2023-07-20', '848-72-1073', '2000-12-14', 'Junior Executive', 'S', 'F'),
('Clemens', 'Rottgers', 'Brainverse', 'crottgersbi@bandcamp.com', '756-390-7390', '2023-07-03', '221-33-9916', '2000-09-15', 'Civil Engineer', 'S', 'M'),
('Linda', 'Skehens', 'Youfeed', 'lskehensbj@indiegogo.com', '817-920-3321', '2022-11-26', '210-63-8010', '2002-08-11', 'Database Administrator IV', 'M', 'F'),
('Othilie', 'Normanton', 'Fiveclub', 'onormantonbk@dmoz.org', '938-530-6831', '2023-08-06', '466-85-1520', '1998-02-12', 'Financial Advisor', 'S', 'F'),
('Lanny', 'Romain', 'Photojam', 'lromainbl@mail.ru', '756-966-3141', '2023-08-16', '887-03-6202', '1989-07-17', 'VP Accounting', 'M', 'F'),
('Kissie', 'Harpham', 'Mydeo', 'kharphambm@edublogs.org', '249-587-1754', '2023-08-02', '390-94-6742', '1986-08-12', 'Help Desk Technician', 'S', 'F'),
('Benjamin', 'Carles', 'Vimbo', 'bcarlesbn@wikipedia.org', '819-869-9310', '2023-03-05', '119-39-6724', '2001-04-11', 'Civil Engineer', 'S', 'M'),
('Eben', 'Kegan', 'Pixonyx', 'ekeganbo@zdnet.com', '760-841-7381', '2022-10-27', '193-41-1838', '1991-01-25', 'Tax Accountant', 'M', 'M'),
('Fay', 'Scarlett', 'Rhynoodle', 'fscarlettbp@chronoengine.com', '344-228-9483', '2023-02-14', '730-87-7812', '1981-07-03', 'Developer I', 'S', 'F'),
('Tamas', 'Kyte', 'Skaboo', 'tkytebq@china.com.cn', '263-410-4229', '2023-01-22', '724-51-8023', '1998-10-13', 'Physical Therapy Assistant', 'M', 'M'),
('Milo', 'Pregal', 'Linkbuzz', 'mpregalbr@umn.edu', '986-299-1076', '2023-02-11', '480-96-0918', '1993-08-05', 'Chief Design Engineer', 'M', 'M'),
('Shurwood', 'Monck', 'Divavu', 'smonckbs@cdc.gov', '488-449-6430', '2023-07-20', '114-60-7920', '2000-07-02', 'Technical Writer', 'S', 'M'),
('Lucille', 'Cabena', 'Voolith', 'lcabenabt@discuz.net', '473-349-2413', '2023-01-02', '486-83-1374', '2002-06-22', 'VP Quality Control', 'M', 'F'),
('Enos', 'Boagey', 'Skidoo', 'eboageybu@ucla.edu', '845-279-1340', '2023-03-19', '720-67-2236', '1987-07-26', 'Internal Auditor', 'M', 'M'),
('Wald', 'Tildesley', 'Browsezoom', 'wtildesleybv@networkadvertising.org', '124-932-9745', '2023-02-16', '705-47-5208', '1991-06-30', 'Internal Auditor', 'S', 'M'),
('Hobey', 'Branchet', 'Bluejam', 'hbranchetbw@nature.com', '357-635-8823', '2022-11-22', '221-72-7766', '1996-09-26', 'Environmental Tech', 'M', 'M'),
('Tedman', 'De Rechter', 'Oloo', 'tderechterbx@eepurl.com', '342-302-3056', '2023-02-12', '709-05-0737', '1981-09-16', 'Human Resources Manager', 'S', 'M'),
('Carey', 'Henkens', 'Aivee', 'chenkensby@fc2.com', '658-865-9428', '2022-10-20', '694-36-8449', '1999-08-24', 'Human Resources Manager', 'M', 'F'),
('Winni', 'Manhare', 'Livefish', 'wmanharebz@ucoz.com', '571-687-1931', '2023-01-04', '377-53-7457', '1986-11-11', 'Librarian', 'M', 'F'),
('Megan', 'Yewdell', 'Digitube', 'myewdellc0@edublogs.org', '519-691-0357', '2023-03-09', '682-74-0692', '1989-03-12', 'Computer Systems Analyst IV', 'M', 'F'),
('Brooks', 'Hinsche', 'Photobug', 'bhinschec1@devhub.com', '329-182-8419', '2023-06-25', '139-85-5753', '1987-05-02', 'Tax Accountant', 'S', 'M'),
('Bendicty', 'Scedall', 'Oba', 'bscedallc2@wisc.edu', '609-986-9833', '2023-07-08', '390-27-6273', '1989-01-28', 'GIS Technical Architect', 'M', 'M'),
('Patton', 'Castiblanco', 'Dynazzy', 'pcastiblancoc3@hao123.com', '725-291-9475', '2023-01-21', '112-82-3470', '1980-11-11', 'Geologist III', 'M', 'M'),
('Adelbert', 'Stennings', 'Miboo', 'astenningsc4@jiathis.com', '826-465-5530', '2023-01-07', '571-66-9990', '1992-09-15', 'Developer IV', 'S', 'M'),
('Val', 'Pettyfer', 'Feedfish', 'vpettyferc5@stanford.edu', '385-119-1915', '2023-02-05', '730-18-8703', '1995-08-24', 'Research Associate', 'S', 'F'),
('Kiersten', 'Scaysbrook', 'Quinu', 'kscaysbrookc6@clickbank.net', '617-268-3485', '2023-05-04', '293-76-2941', '1990-07-20', 'Research Associate', 'S', 'F'),
('Othilia', 'Demcak', 'Omba', 'odemcakc7@woothemes.com', '815-333-7768', '2023-01-22', '808-53-1196', '1982-07-05', 'Data Coordinator', 'S', 'F'),
('Rolph', 'Tal', 'Linkbridge', 'rtalc8@woothemes.com', '405-156-8297', '2023-08-09', '838-87-3034', '1992-01-04', 'Civil Engineer', 'S', 'M'),
('Neale', 'Cordelette', 'Riffpath', 'ncordelettec9@ca.gov', '134-889-9479', '2023-02-04', '856-66-2198', '1994-03-19', 'Help Desk Operator', 'S', 'M'),
('Willow', 'Rizzardo', 'Zoombeat', 'wrizzardoca@ocn.ne.jp', '340-955-8653', '2022-11-01', '807-31-2822', '1984-03-13', 'Design Engineer', 'M', 'F'),
('Sargent', 'Tock', 'Eazzy', 'stockcb@chron.com', '565-536-6417', '2023-08-05', '241-15-0821', '1981-11-19', 'Programmer I', 'M', 'M'),
('Brendin', 'Pirdy', 'Roodel', 'bpirdycc@washington.edu', '379-879-5675', '2023-07-23', '103-23-9079', '1982-01-19', 'Pharmacist', 'S', 'M'),
('Carmencita', 'Mallison', 'Aibox', 'cmallisoncd@purevolume.com', '809-202-6367', '2023-01-20', '174-22-1132', '1982-01-02', 'Financial Advisor', 'S', 'F'),
('Berna', 'Quinney', 'Latz', 'bquinneyce@bigcartel.com', '725-410-1090', '2023-06-29', '252-78-4679', '2002-05-23', 'Payment Adjustment Coordinator', 'S', 'F'),
('Fred', 'Gilhouley', 'Shufflester', 'fgilhouleycf@ocn.ne.jp', '322-754-7057', '2023-04-15', '726-85-5141', '1997-03-03', 'Senior Financial Analyst', 'S', 'M'),
('Wallache', 'Dury', 'Dynabox', 'wdurycg@baidu.com', '648-200-9454', '2023-04-15', '346-55-8939', '1996-06-25', 'GIS Technical Architect', 'M', 'M'),
('Jody', 'Klemt', 'Avamba', 'jklemtch@marriott.com', '530-863-8161', '2023-07-11', '644-82-1783', '1996-02-02', 'Software Test Engineer III', 'M', 'F'),
('Giraldo', 'Pargiter', 'Rooxo', 'gpargiterci@webs.com', '656-587-2068', '2022-10-11', '203-84-6995', '1985-06-14', 'Operator', 'M', 'M'),
('Sayre', 'Rochester', 'Avaveo', 'srochestercj@pagesperso-orange.fr', '857-822-6991', '2023-06-15', '259-39-9650', '1998-08-27', 'Developer II', 'M', 'F'),
('Winny', 'Hovert', 'Edgetag', 'whovertck@nymag.com', '872-673-7155', '2022-10-09', '178-70-7369', '1999-08-13', 'Recruiting Manager', 'S', 'F'),
('Baryram', 'Lynn', 'Browsecat', 'blynncl@discuz.net', '657-215-6006', '2023-03-10', '859-81-6353', '1980-11-25', 'Engineer I', 'M', 'M'),
('Jake', 'Alenikov', 'Topiclounge', 'jalenikovcm@dot.gov', '603-491-0357', '2022-10-22', '405-01-1872', '2002-03-02', 'Assistant Manager', 'M', 'M'),
('Marlow', 'Bernardeschi', 'Skimia', 'mbernardeschicn@un.org', '421-178-9664', '2023-02-13', '449-68-1045', '1985-05-10', 'Director of Sales', 'M', 'M'),
('Carin', 'Peasee', 'Edgetag', 'cpeaseeco@devhub.com', '832-323-2276', '2023-07-24', '625-14-3326', '1995-08-05', 'Biostatistician III', 'S', 'F'),
('Amitie', 'Longcaster', 'Aimbu', 'alongcastercp@people.com.cn', '450-441-4542', '2023-08-24', '525-05-4332', '2001-05-09', 'Chemical Engineer', 'S', 'F'),
('Deonne', 'Trowsdale', 'Ainyx', 'dtrowsdalecq@mlb.com', '865-396-5834', '2023-08-14', '319-21-1396', '2001-08-08', 'Media Manager II', 'M', 'F'),
('Ailis', 'Rosendahl', 'Topdrive', 'arosendahlcr@amazon.co.jp', '344-641-8355', '2022-11-06', '862-74-8645', '1993-01-21', 'Director of Sales', 'M', 'F'),
('Gwendolin', 'Eyam', 'Eimbee', 'geyamcs@wsj.com', '956-347-3703', '2023-03-01', '528-48-2255', '1992-09-28', 'Programmer Analyst IV', 'M', 'F'),
('Katy', 'Abbey', 'Gabtype', 'kabbeyct@ted.com', '531-496-9568', '2023-03-25', '370-39-9973', '1981-08-09', 'Structural Engineer', 'S', 'F'),
('Inez', 'Hamshere', 'Digitube', 'ihamsherecu@sohu.com', '740-389-2808', '2023-03-22', '856-27-1233', '1996-10-28', 'Associate Professor', 'M', 'F'),
('Ruth', 'Jirka', 'JumpXS', 'rjirkacv@sakura.ne.jp', '969-152-8426', '2023-06-30', '256-79-3376', '1985-10-28', 'Marketing Manager', 'M', 'F'),
('Sindee', 'Frangione', 'Bubblebox', 'sfrangionecw@time.com', '516-743-6920', '2023-07-09', '619-86-3462', '1994-05-28', 'Staff Accountant IV', 'S', 'F'),
('Giffer', 'Ead', 'Topicshots', 'geadcx@unc.edu', '740-960-5928', '2023-03-25', '303-27-1676', '1992-08-02', 'Software Test Engineer III', 'M', 'M'),
('Estele', 'Blanpein', 'Gigaclub', 'eblanpeincy@weibo.com', '269-551-6878', '2023-08-21', '200-56-0336', '1997-10-26', 'Automation Specialist IV', 'S', 'F'),
('Seka', 'McCullen', 'Zoomzone', 'smccullencz@angelfire.com', '917-845-1748', '2023-06-19', '591-79-6221', '1981-10-03', 'Media Manager III', 'M', 'F'),
('Derrick', 'Hince', 'Dazzlesphere', 'dhinced0@arstechnica.com', '361-933-8582', '2023-05-12', '148-01-6989', '1990-03-11', 'Marketing Manager', 'M', 'M'),
('Aaron', 'Pettwood', 'Brainlounge', 'apettwoodd1@ebay.co.uk', '691-945-6263', '2023-08-18', '773-44-6024', '1997-01-23', 'Community Outreach Specialist', 'S', 'M'),
('Clem', 'Hayzer', 'Skyndu', 'chayzerd2@washingtonpost.com', '339-419-5873', '2023-05-03', '360-04-3997', '1989-09-05', 'Environmental Specialist', 'S', 'F'),
('Redford', 'Yakov', 'Twiyo', 'ryakovd3@irs.gov', '147-825-1363', '2023-03-27', '535-29-0334', '1989-02-10', 'Recruiting Manager', 'S', 'M'),
('Keven', 'Matyas', 'Kamba', 'kmatyasd4@angelfire.com', '552-593-8918', '2022-11-20', '631-81-2110', '1985-09-09', 'Staff Scientist', 'S', 'M'),
('Letta', 'Poinsett', 'Divape', 'lpoinsettd5@clickbank.net', '310-549-3903', '2023-01-18', '433-86-3865', '2001-09-24', 'Civil Engineer', 'S', 'F'),
('Jasmin', 'Taks', 'Yodo', 'jtaksd6@cdc.gov', '105-279-5483', '2023-02-24', '151-85-9156', '1990-01-02', 'Database Administrator II', 'S', 'F'),
('Lonnard', 'Portal', 'Ailane', 'lportald7@weebly.com', '557-379-6062', '2022-12-24', '161-32-3410', '1989-04-08', 'Nuclear Power Engineer', 'M', 'M'),
('Darwin', 'Trosdall', 'Trupe', 'dtrosdalld8@indiegogo.com', '543-301-5834', '2022-10-03', '380-86-9253', '1994-07-10', 'Analyst Programmer', 'S', 'M'),
('Dicky', 'Jankovic', 'Devcast', 'djankovicd9@nyu.edu', '554-642-4669', '2023-04-12', '812-60-4903', '1996-11-21', 'GIS Technical Architect', 'S', 'M'),
('Jess', 'Stoddart', 'Meezzy', 'jstoddartda@thetimes.co.uk', '558-379-7255', '2023-02-26', '439-27-9414', '1985-05-16', 'Account Coordinator', 'S', 'M'),
('Kellen', 'Norsworthy', 'Blogspan', 'knorsworthydb@friendfeed.com', '893-740-9503', '2022-10-19', '816-03-0160', '1988-06-09', 'Payment Adjustment Coordinator', 'S', 'M'),
('Antonie', 'Conre', 'Devcast', 'aconredc@mac.com', '442-345-7530', '2022-11-06', '585-90-4852', '2001-02-06', 'Senior Quality Engineer', 'M', 'F'),
('Otis', 'Counihan', 'Blogspan', 'ocounihandd@skyrock.com', '988-554-7859', '2023-05-12', '111-68-7743', '1995-12-19', 'Clinical Specialist', 'M', 'M'),
('Davin', 'Gatesman', 'Centimia', 'dgatesmande@ycombinator.com', '372-634-7238', '2023-09-10', '657-74-7243', '1995-04-14', 'VP Quality Control', 'M', 'M'),
('Amalie', 'Shackelton', 'Twitternation', 'ashackeltondf@mac.com', '895-525-3386', '2022-09-27', '112-12-9717', '1987-11-10', 'General Manager', 'S', 'F'),
('Margeaux', 'Rupprecht', 'Twitterbridge', 'mrupprechtdg@cocolog-nifty.com', '200-272-8512', '2023-01-18', '467-33-4295', '1999-09-18', 'Automation Specialist I', 'M', 'F'),
('Pepillo', 'Sobczak', 'Mymm', 'psobczakdh@springer.com', '866-827-9225', '2023-05-12', '591-25-4894', '1989-08-26', 'Graphic Designer', 'M', 'M'),
('Keene', 'Flye', 'Topiclounge', 'kflyedi@feedburner.com', '256-156-7739', '2022-11-30', '104-68-7360', '2000-08-26', 'Administrative Officer', 'S', 'M'),
('Joana', 'Paschek', 'Camido', 'jpaschekdj@ovh.net', '444-978-0244', '2023-02-22', '324-13-9872', '1984-12-29', 'Senior Quality Engineer', 'S', 'F'),
('Francine', 'Flower', 'Lajo', 'fflowerdk@yellowpages.com', '149-752-8258', '2023-03-10', '255-54-0087', '1993-11-12', 'Nurse Practicioner', 'M', 'F'),
('Padgett', 'Gulley', 'Yotz', 'pgulleydl@webnode.com', '270-308-2604', '2023-04-04', '162-42-1706', '1995-08-29', 'Professor', 'S', 'M'),
('Brigit', 'Scapens', 'Zoonder', 'bscapensdm@businessinsider.com', '318-949-3824', '2023-07-05', '214-47-9872', '1988-07-22', 'VP Accounting', 'S', 'F'),
('Matthieu', 'Slinger', 'Jetpulse', 'mslingerdn@who.int', '357-867-8462', '2023-04-23', '124-12-8011', '2000-06-01', 'Computer Systems Analyst III', 'S', 'M'),
('Cchaddie', 'Aldington', 'Quaxo', 'caldingtondo@zdnet.com', '774-306-6147', '2022-09-21', '638-46-9570', '1980-09-17', 'Sales Associate', 'S', 'M'),
('Dulcie', 'Terbruggen', 'Oyoyo', 'dterbruggendp@usda.gov', '444-692-7504', '2023-06-19', '226-61-4892', '1993-03-26', 'Food Chemist', 'M', 'F'),
('Blakelee', 'Gritton', 'Ooba', 'bgrittondq@list-manage.com', '706-322-8792', '2022-12-03', '696-73-9204', '1990-08-18', 'Computer Systems Analyst III', 'M', 'F'),
('Emory', 'McGrory', 'Browsedrive', 'emcgrorydr@psu.edu', '755-205-4968', '2022-10-02', '791-47-2771', '1998-10-05', 'Cost Accountant', 'M', 'M'),
('Becka', 'Demsey', 'Digitube', 'bdemseyds@youtube.com', '286-833-4126', '2023-05-23', '793-74-3269', '1984-04-10', 'Analyst Programmer', 'M', 'F'),
('Dulce', 'Desouza', 'Realcube', 'ddesouzadt@amazon.de', '922-125-6791', '2022-12-28', '372-94-9073', '1995-09-11', 'Account Representative II', 'S', 'F'),
('Alyssa', 'Ouldred', 'Tagchat', 'aouldreddu@ow.ly', '801-849-8083', '2023-01-03', '142-70-7573', '1986-10-12', 'Budget/Accounting Analyst IV', 'S', 'F'),
('Fairfax', 'Goodliffe', 'Meedoo', 'fgoodliffedv@dmoz.org', '387-266-8799', '2022-12-09', '321-91-7153', '1996-10-08', 'Professor', 'S', 'M'),
('Tarah', 'Gait', 'Gevee', 'tgaitdw@mapquest.com', '131-836-7036', '2023-01-20', '755-21-4229', '1991-01-28', 'Actuary', 'S', 'F'),
('Morgana', 'Bourne', 'Pixope', 'mbournedx@umn.edu', '926-181-4041', '2022-12-31', '291-83-0463', '1999-10-26', 'Software Consultant', 'M', 'F'),
('Rosemonde', 'Capron', 'Yodel', 'rcaprondy@squarespace.com', '413-990-4981', '2022-12-17', '723-15-5634', '1997-12-26', 'Staff Scientist', 'M', 'F'),
('Bunny', 'Eacle', 'Topiclounge', 'beacledz@paginegialle.it', '464-399-5555', '2023-08-23', '475-12-1352', '1986-06-13', 'Research Nurse', 'S', 'F'),
('Jerrie', 'Medcraft', 'Miboo', 'jmedcrafte0@princeton.edu', '999-662-8241', '2023-06-06', '172-68-1531', '1986-10-30', 'Office Assistant II', 'S', 'F'),
('Joline', 'Needs', 'Camido', 'jneedse1@gravatar.com', '522-729-3863', '2022-12-12', '251-50-3417', '1989-06-18', 'Safety Technician IV', 'M', 'F'),
('Rikki', 'Scinelli', 'Realpoint', 'rscinellie2@sohu.com', '202-886-6456', '2022-12-12', '825-49-7105', '1985-05-30', 'Civil Engineer', 'S', 'F'),
('Suellen', 'Meharry', 'Skiptube', 'smeharrye3@yellowbook.com', '771-875-1502', '2023-01-31', '378-35-4455', '1998-01-23', 'Registered Nurse', 'M', 'F'),
('Jae', 'Spollen', 'Meevee', 'jspollene4@about.me', '206-271-1802', '2023-04-03', '620-88-6651', '1992-05-23', 'Product Engineer', 'M', 'M'),
('Boot', 'Craig', 'InnoZ', 'bcraige5@ted.com', '266-916-6170', '2023-06-10', '783-22-9102', '1989-08-17', 'Senior Cost Accountant', 'S', 'M'),
('Bennie', 'Charpin', 'Leenti', 'bcharpine6@friendfeed.com', '396-396-4954', '2023-06-17', '212-46-7773', '1989-01-22', 'Librarian', 'S', 'M'),
('Amabel', 'Eglese', 'Jabberstorm', 'aeglesee7@yellowbook.com', '168-117-0754', '2023-02-11', '420-72-4464', '1988-03-21', 'Research Nurse', 'M', 'F'),
('Lusa', 'Langsbury', 'Trunyx', 'llangsburye8@alibaba.com', '671-708-8901', '2022-12-31', '209-83-0511', '1995-11-19', 'Community Outreach Specialist', 'M', 'F'),
('Krisha', 'Stockman', 'Avamba', 'kstockmane9@blinklist.com', '356-718-8316', '2023-05-30', '772-19-0305', '1994-10-23', 'GIS Technical Architect', 'S', 'M'),
('Adrian', 'Bertomieu', 'Topiclounge', 'abertomieuea@de.vu', '849-856-6206', '2023-01-12', '598-12-5642', '1988-09-26', 'Developer IV', 'M', 'M'),
('Petr', 'Roberti', 'Divanoodle', 'probertieb@illinois.edu', '477-106-4764', '2023-04-26', '259-51-3242', '1995-12-23', 'Web Developer I', 'S', 'M'),
('Dacia', 'Rasher', 'Flipstorm', 'drasherec@chronoengine.com', '975-883-5463', '2022-12-31', '874-02-4864', '1993-06-03', 'Account Representative I', 'M', 'F'),
('Emmie', 'McCuish', 'Dabvine', 'emccuished@army.mil', '473-539-3638', '2023-03-27', '821-72-7971', '1995-05-15', 'Research Associate', 'S', 'F'),
('Amelie', 'Dary', 'Zoomzone', 'adaryee@bandcamp.com', '265-744-8440', '2023-02-03', '727-35-4002', '1989-11-06', 'Software Engineer III', 'S', 'F'),
('Alic', 'Chauvey', 'Ozu', 'achauveyef@slate.com', '295-127-1676', '2023-02-18', '397-57-8631', '1983-04-20', 'Systems Administrator III', 'S', 'M'),
('Cornall', 'Aldersley', 'Avamba', 'caldersleyeg@ocn.ne.jp', '329-245-5989', '2023-06-18', '806-42-4670', '1985-06-15', 'Geologist IV', 'M', 'M'),
('Leanora', 'Goodrich', 'Skajo', 'lgoodricheh@marriott.com', '728-955-2143', '2023-07-08', '455-83-0445', '1982-09-21', 'Analyst Programmer', 'M', 'F'),
('Reinhold', 'Dudmarsh', 'LiveZ', 'rdudmarshei@gravatar.com', '760-842-5553', '2023-01-10', '645-24-7193', '1993-04-17', 'Chief Design Engineer', 'M', 'M'),
('Cody', 'Jellett', 'DabZ', 'cjellettej@aol.com', '624-971-4414', '2022-10-25', '325-50-1341', '1999-10-07', 'Environmental Tech', 'S', 'M'),
('Freida', 'Methven', 'Layo', 'fmethvenek@narod.ru', '350-374-2130', '2023-03-28', '689-84-5797', '1997-11-27', 'VP Marketing', 'S', 'F'),
('Nonah', 'Bernaert', 'Brightdog', 'nbernaertel@loc.gov', '696-917-5771', '2023-02-06', '880-50-0867', '1994-11-12', 'Electrical Engineer', 'S', 'F'),
('Sherwin', 'Castana', 'Blognation', 'scastanaem@psu.edu', '680-592-0317', '2023-05-09', '693-75-7929', '1986-02-03', 'Compensation Analyst', 'S', 'M'),
('Kevina', 'Sanday', 'Realbridge', 'ksandayen@tiny.cc', '204-904-9789', '2023-01-08', '798-17-1919', '1999-06-22', 'Web Developer II', 'M', 'F'),
('Rosalind', 'Fones', 'Linkbridge', 'rfoneseo@acquirethisname.com', '898-404-3221', '2023-03-25', '575-85-9806', '1985-06-10', 'VP Accounting', 'S', 'F'),
('Nikos', 'Walewicz', 'Mydeo', 'nwalewiczep@bing.com', '400-598-9588', '2023-01-08', '648-81-5230', '1994-09-17', 'Registered Nurse', 'M', 'M'),
('Nikoletta', 'Vooght', 'JumpXS', 'nvooghteq@edublogs.org', '169-815-9181', '2023-04-21', '418-46-3976', '1988-11-12', 'Chemical Engineer', 'M', 'F'),
('Hew', 'Rawstorn', 'Realmix', 'hrawstorner@list-manage.com', '213-383-8078', '2023-01-04', '714-38-6644', '1985-10-06', 'GIS Technical Architect', 'S', 'M'),
('Flori', 'Boays', 'Wordpedia', 'fboayses@freewebs.com', '714-543-8365', '2023-07-12', '711-71-5435', '1990-07-04', 'Speech Pathologist', 'S', 'F'),
('Mozes', 'Drewet', 'Tagtune', 'mdrewetet@nih.gov', '814-666-3776', '2022-11-28', '881-88-5891', '1989-04-24', 'Assistant Media Planner', 'M', 'M'),
('Dulcea', 'Sidery', 'Skiptube', 'dsideryeu@mozilla.org', '814-271-2559', '2023-08-02', '704-29-1616', '1988-08-18', 'Geological Engineer', 'S', 'F'),
('Hillard', 'Mollitt', 'Yakidoo', 'hmollittev@free.fr', '573-572-7357', '2023-04-15', '826-83-3409', '1999-10-20', 'Software Consultant', 'M', 'M'),
('Damiano', 'Gorring', 'Ainyx', 'dgorringew@unblog.fr', '619-562-0362', '2022-10-17', '781-24-7122', '1983-07-05', 'Business Systems Development Analyst', 'S', 'M'),
('Korey', 'Chaudret', 'Tazzy', 'kchaudretex@tinyurl.com', '894-146-9777', '2023-05-02', '470-60-9825', '1999-10-29', 'Environmental Tech', 'S', 'M'),
('Mikel', 'Giamelli', 'Lajo', 'mgiamelliey@epa.gov', '475-938-3231', '2023-02-24', '370-93-8606', '1987-06-06', 'Physical Therapy Assistant', 'S', 'M'),
('Harald', 'Wavish', 'Topicblab', 'hwavishez@seesaa.net', '408-856-0923', '2023-09-02', '774-34-8158', '2000-05-21', 'Human Resources Manager', 'S', 'M'),
('Julianna', 'Brittain', 'Zoombeat', 'jbrittainf0@smugmug.com', '432-227-8986', '2023-02-17', '711-83-0449', '1990-01-22', 'Computer Systems Analyst III', 'M', 'F'),
('Decca', 'Daffern', 'Yodo', 'ddaffernf1@about.com', '996-928-6952', '2022-11-11', '613-17-5571', '1981-03-06', 'VP Accounting', 'M', 'M'),
('Christoforo', 'Dilon', 'Babbleblab', 'cdilonf2@huffingtonpost.com', '789-749-0256', '2023-04-23', '195-15-6079', '2000-03-31', 'Structural Analysis Engineer', 'M', 'M'),
('Erina', 'Daymont', 'Youfeed', 'edaymontf3@google.ru', '958-120-0171', '2023-07-01', '288-47-6659', '1982-10-04', 'Programmer Analyst IV', 'S', 'F'),
('Dennie', 'Epperson', 'Meemm', 'deppersonf4@scientificamerican.com', '368-321-8445', '2023-07-16', '272-67-5724', '1992-01-10', 'Budget/Accounting Analyst IV', 'S', 'M'),
('Chen', 'Lanchbury', 'Buzzbean', 'clanchburyf5@vinaora.com', '226-663-9593', '2022-12-18', '658-65-7814', '2001-01-31', 'Project Manager', 'M', 'M'),
('Essie', 'Janiszewski', 'Photofeed', 'ejaniszewskif6@reuters.com', '136-269-2995', '2023-01-10', '826-70-2502', '2001-01-08', 'Senior Editor', 'M', 'F'),
('Gavan', 'Calbaithe', 'Ntag', 'gcalbaithef7@seattletimes.com', '655-116-1040', '2023-06-15', '866-06-4837', '1981-11-09', 'Accounting Assistant I', 'S', 'M'),
('Dal', 'Perel', 'Realcube', 'dperelf8@alibaba.com', '887-696-6578', '2022-10-01', '124-21-4800', '1997-05-17', 'Programmer Analyst IV', 'S', 'M'),
('Wyatan', 'Darrel', 'Shuffletag', 'wdarrelf9@a8.net', '955-105-5351', '2023-07-06', '430-11-7732', '1990-02-14', 'Database Administrator II', 'S', 'M'),
('Von', 'Giorgio', 'Skibox', 'vgiorgiofa@imageshack.us', '670-899-1448', '2022-09-24', '466-89-7373', '1989-07-03', 'Structural Analysis Engineer', 'M', 'M'),
('Jule', 'Tribbeck', 'Livetube', 'jtribbeckfb@unc.edu', '138-759-1715', '2023-06-02', '276-45-3203', '1989-03-12', 'Recruiting Manager', 'S', 'M'),
('Libbie', 'Petrello', 'Eamia', 'lpetrellofc@army.mil', '982-198-0499', '2023-04-27', '342-14-0776', '1984-02-21', 'Programmer Analyst III', 'S', 'F'),
('Averill', 'Bromley', 'Skilith', 'abromleyfd@github.com', '356-221-2535', '2023-02-12', '566-45-1888', '1991-12-16', 'Environmental Specialist', 'M', 'M'),
('Elvyn', 'Gross', 'Oloo', 'egrossfe@nasa.gov', '465-733-5132', '2023-02-21', '513-45-4153', '1998-12-31', 'Technical Writer', 'M', 'M'),
('Abra', 'Greep', 'Rhybox', 'agreepff@webmd.com', '541-862-4818', '2022-11-24', '352-47-8088', '2002-08-23', 'Senior Editor', 'S', 'F'),
('Harland', 'Tellesson', 'Innojam', 'htellessonfg@house.gov', '464-980-1756', '2023-03-30', '200-93-1234', '1996-02-05', 'Health Coach III', 'S', 'M'),
('Marlo', 'Cassin', 'Bubbletube', 'mcassinfh@bloomberg.com', '300-371-3237', '2023-04-19', '314-71-1729', '1989-10-26', 'Actuary', 'M', 'M'),
('Peggie', 'Canning', 'Flipbug', 'pcanningfi@123-reg.co.uk', '592-865-9812', '2022-11-15', '110-48-1811', '2002-05-27', 'Developer II', 'M', 'F'),
('Wakefield', 'Astman', 'Snaptags', 'wastmanfj@ucoz.ru', '768-929-3391', '2023-04-23', '586-58-1007', '1986-01-05', 'Marketing Assistant', 'M', 'M'),
('Natalya', 'McClory', 'Dablist', 'nmccloryfk@ocn.ne.jp', '998-155-9947', '2023-03-18', '567-33-6810', '1989-11-04', 'Nuclear Power Engineer', 'M', 'F'),
('Gaylor', 'Ismail', 'Pixoboo', 'gismailfl@unc.edu', '254-207-0826', '2022-11-22', '520-99-8492', '1987-05-30', 'Financial Advisor', 'M', 'M'),
('Kathleen', 'Laraway', 'Aimbu', 'klarawayfm@tripod.com', '799-420-7755', '2023-02-13', '790-18-5364', '1999-06-04', 'Director of Sales', 'M', 'F'),
('Hillie', 'Slateford', 'Eire', 'hslatefordfn@friendfeed.com', '992-964-8785', '2023-09-09', '492-25-6064', '1995-07-31', 'VP Sales', 'M', 'M'),
('Lyssa', 'Wootton', 'Oyoba', 'lwoottonfo@slashdot.org', '902-320-6781', '2022-11-01', '134-49-0276', '1987-05-06', 'Recruiter', 'M', 'F'),
('Muhammad', 'Iban', 'Devbug', 'mibanfp@latimes.com', '953-879-2615', '2023-04-07', '414-88-9293', '1989-08-02', 'Structural Analysis Engineer', 'S', 'M'),
('Nicolais', 'Wontner', 'Eabox', 'nwontnerfq@umich.edu', '893-934-7107', '2022-10-03', '618-32-3809', '1989-12-04', 'Desktop Support Technician', 'S', 'M'),
('Glynn', 'Carlett', 'Oyope', 'gcarlettfr@ucla.edu', '715-318-0784', '2023-01-20', '533-94-6102', '1982-08-27', 'Librarian', 'M', 'M'),
('Wade', 'Werrett', 'Cogilith', 'wwerrettfs@springer.com', '586-635-0460', '2023-01-27', '184-66-5758', '1984-01-30', 'Sales Representative', 'S', 'M'),
('Conan', 'Leet', 'Browseblab', 'cleetft@indiatimes.com', '747-620-2059', '2023-03-01', '473-18-1428', '1984-01-27', 'Information Systems Manager', 'S', 'M'),
('Shannon', 'Cumine', 'Edgeclub', 'scuminefu@toplist.cz', '282-822-2975', '2023-06-20', '375-30-3966', '2000-06-03', 'Payment Adjustment Coordinator', 'M', 'F'),
('Kiel', 'Penhalurick', 'Linkbuzz', 'kpenhalurickfv@jigsy.com', '276-461-4510', '2022-12-17', '860-57-7343', '1992-09-19', 'Web Designer I', 'S', 'M'),
('Dacie', 'Batram', 'Vidoo', 'dbatramfw@about.me', '898-207-7222', '2023-03-21', '145-36-6891', '1991-11-28', 'Financial Advisor', 'M', 'F'),
('Sigvard', 'Ramplee', 'Topicware', 'srampleefx@geocities.com', '900-172-5115', '2022-11-28', '587-80-1169', '1984-10-27', 'Research Assistant II', 'M', 'M'),
('Hewett', 'Buglar', 'Realfire', 'hbuglarfy@dropbox.com', '731-190-2265', '2023-05-21', '629-48-8630', '1993-07-07', 'VP Product Management', 'M', 'M'),
('Sherye', 'Kyteley', 'Browsecat', 'skyteleyfz@bbc.co.uk', '239-814-2659', '2023-09-07', '741-96-7136', '1980-11-25', 'Programmer Analyst III', 'M', 'F'),
('Amalle', 'Kobus', 'Yodoo', 'akobusg0@jiathis.com', '190-262-4477', '2022-09-24', '836-86-2272', '1996-12-19', 'Clinical Specialist', 'M', 'F'),
('Bari', 'Boulds', 'Devpulse', 'bbouldsg1@house.gov', '284-742-7507', '2023-06-19', '889-73-8011', '1997-07-25', 'Chemical Engineer', 'S', 'F'),
('Ollie', 'Anderl', 'Dabshots', 'oanderlg2@bravesites.com', '833-387-5365', '2023-05-25', '111-40-2675', '1989-05-03', 'Nuclear Power Engineer', 'S', 'M'),
('Elora', 'Birkby', 'Flashpoint', 'ebirkbyg3@wix.com', '247-338-3843', '2023-02-09', '538-69-0662', '1989-06-25', 'Biostatistician IV', 'S', 'F'),
('Sheree', 'Keys', 'Innotype', 'skeysg4@technorati.com', '321-251-8628', '2022-11-27', '458-87-0721', '1985-12-30', 'Software Engineer III', 'S', 'F'),
('Farlay', 'Elfleet', 'Chatterpoint', 'felfleetg5@naver.com', '350-312-1222', '2023-01-07', '630-37-8064', '1982-06-07', 'Human Resources Assistant IV', 'S', 'M'),
('Adamo', 'Udey', 'Zoozzy', 'audeyg6@bandcamp.com', '609-956-8978', '2022-11-02', '806-69-9506', '1994-04-24', 'Librarian', 'M', 'M'),
('Layton', 'Poxon', 'Jabbersphere', 'lpoxong7@jalbum.net', '441-680-4581', '2023-04-16', '848-83-5214', '1991-01-09', 'Analyst Programmer', 'M', 'M'),
('Elihu', 'Ribchester', 'LiveZ', 'eribchesterg8@sbwire.com', '208-182-6567', '2022-11-17', '689-64-0861', '1984-08-04', 'Systems Administrator II', 'M', 'M'),
('Jesus', 'Penas', 'Photobean', 'jpenasg9@opensource.org', '469-437-1723', '2022-11-27', '252-92-2559', '1984-08-02', 'Food Chemist', 'M', 'M'),
('Ceil', 'Noury', 'Jabbersphere', 'cnouryga@github.com', '177-807-3058', '2022-12-19', '531-27-2325', '1989-06-26', 'Operator', 'M', 'F'),
('Creight', 'Dolder', 'Babbleopia', 'cdoldergb@ovh.net', '339-466-9077', '2023-05-13', '529-01-4979', '1989-01-16', 'Junior Executive', 'M', 'M'),
('Lyon', 'Ferrey', 'Pixope', 'lferreygc@hao123.com', '851-802-7142', '2023-05-08', '704-97-3975', '1983-09-24', 'Editor', 'M', 'M'),
('Lyndsey', 'Spedroni', 'Brightdog', 'lspedronigd@google.com.br', '818-531-5233', '2023-03-07', '557-18-3085', '1981-03-23', 'Sales Associate', 'M', 'F'),
('Ted', 'MacDermand', 'Riffwire', 'tmacdermandge@icio.us', '833-522-0197', '2023-09-09', '866-80-2053', '1994-09-21', 'Tax Accountant', 'S', 'M'),
('Anson', 'Massot', 'Trudoo', 'amassotgf@pbs.org', '898-136-2458', '2022-12-12', '353-52-3371', '1990-10-18', 'Associate Professor', 'S', 'M'),
('Greg', 'Toderini', 'Voonder', 'gtoderinigg@independent.co.uk', '116-996-5040', '2023-05-08', '832-26-2057', '1994-06-03', 'Assistant Professor', 'M', 'M'),
('Chris', 'Paviour', 'Youtags', 'cpaviourgh@amazonaws.com', '383-456-6480', '2022-12-10', '720-39-0868', '1990-08-02', 'Help Desk Operator', 'M', 'M'),
('Wiley', 'McKag', 'Tazzy', 'wmckaggi@networksolutions.com', '731-561-4508', '2022-11-05', '230-76-5992', '2002-04-09', 'Environmental Specialist', 'M', 'M'),
('Kermy', 'Gosselin', 'Yambee', 'kgosselingj@hao123.com', '983-237-0241', '2023-01-22', '119-77-5435', '1984-02-26', 'Accountant IV', 'S', 'M'),
('Ermin', 'Oventon', 'Oloo', 'eoventongk@bigcartel.com', '649-835-4164', '2023-04-20', '614-32-6996', '2001-12-03', 'Social Worker', 'M', 'M'),
('Donnie', 'Dumphries', 'Camimbo', 'ddumphriesgl@samsung.com', '124-515-0287', '2023-02-02', '574-22-1442', '1985-08-02', 'Account Representative IV', 'S', 'M'),
('Helyn', 'Dix', 'Rhynyx', 'hdixgm@gmpg.org', '965-555-2751', '2022-12-21', '793-32-5659', '1988-12-03', 'Professor', 'M', 'F'),
('Bayard', 'Whissell', 'Dazzlesphere', 'bwhissellgn@about.me', '450-371-6558', '2023-04-29', '380-90-6285', '1981-02-07', 'Nurse Practicioner', 'M', 'M'),
('Gustav', 'Wilks', 'Jaxspan', 'gwilksgo@dailymail.co.uk', '390-913-1726', '2023-06-23', '774-18-3797', '1994-04-07', 'Senior Editor', 'S', 'M'),
('Rossy', 'Heggie', 'Jaxnation', 'rheggiegp@jimdo.com', '726-671-8767', '2023-08-14', '388-15-6098', '1985-11-26', 'Mechanical Systems Engineer', 'S', 'M'),
('Geordie', 'Giacomello', 'Tavu', 'ggiacomellogq@tuttocitta.it', '168-526-3810', '2022-10-13', '177-91-8137', '1989-12-03', 'Senior Developer', 'M', 'M'),
('Ethelin', 'Charon', 'Chatterbridge', 'echarongr@reddit.com', '307-778-2387', '2022-11-05', '859-64-2099', '1988-06-28', 'Teacher', 'S', 'F'),
('Myra', 'Jaqueminet', 'Avamba', 'mjaqueminetgs@archive.org', '214-973-7132', '2023-04-09', '869-73-6220', '1991-03-29', 'Mechanical Systems Engineer', 'S', 'F'),
('Tanny', 'King', 'Topicblab', 'tkinggt@paginegialle.it', '183-814-5886', '2023-05-22', '404-48-2445', '1981-08-03', 'Help Desk Technician', 'M', 'M'),
('Rice', 'Trigwell', 'Rhynyx', 'rtrigwellgu@cbslocal.com', '490-188-0071', '2023-04-25', '258-25-3632', '1981-08-10', 'Product Engineer', 'M', 'M'),
('Ibrahim', 'Vasyukhin', 'Skipfire', 'ivasyukhingv@php.net', '666-863-1510', '2023-04-20', '880-45-3322', '1985-07-28', 'Help Desk Operator', 'S', 'M'),
('Gerick', 'Verralls', 'Blogspan', 'gverrallsgw@wisc.edu', '750-416-2895', '2022-11-14', '386-25-1707', '1988-06-28', 'Associate Professor', 'S', 'M'),
('Janot', 'Coopey', 'Thoughtblab', 'jcoopeygx@163.com', '497-883-2736', '2022-11-23', '652-29-3701', '1991-09-09', 'Recruiting Manager', 'S', 'F'),
('Elisa', 'Muckley', 'Realbuzz', 'emuckleygy@engadget.com', '143-905-5372', '2023-05-31', '385-63-1385', '2000-05-24', 'Sales Associate', 'S', 'F'),
('Vern', 'Van den Velde', 'Ntags', 'vvandenveldegz@si.edu', '639-332-6573', '2022-12-11', '890-34-5703', '1994-02-04', 'Account Coordinator', 'M', 'M'),
('Kendall', 'Askam', 'Photojam', 'kaskamh0@yale.edu', '271-637-9780', '2023-05-06', '245-28-3314', '1993-03-22', 'Data Coordinator', 'S', 'M'),
('Leupold', 'Martlew', 'Fliptune', 'lmartlewh1@guardian.co.uk', '576-353-3119', '2022-09-17', '830-93-8524', '1989-12-05', 'Help Desk Operator', 'M', 'M'),
('Dianna', 'Sey', 'Oyondu', 'dseyh2@com.com', '986-923-4817', '2022-10-25', '654-68-3503', '1991-08-03', 'Accountant III', 'S', 'F'),
('Janek', 'Strut', 'Kwinu', 'jstruth3@miitbeian.gov.cn', '939-564-8124', '2022-12-14', '449-63-4638', '1996-06-03', 'Software Engineer III', 'S', 'M'),
('Greggory', 'Harburtson', 'Riffpedia', 'gharburtsonh4@narod.ru', '498-265-4504', '2023-02-13', '504-93-0259', '1983-07-22', 'Database Administrator I', 'M', 'M'),
('Anabella', 'Gonnard', 'Mudo', 'agonnardh5@cocolog-nifty.com', '714-288-0628', '2023-02-08', '605-85-4266', '1987-07-16', 'Food Chemist', 'S', 'F'),
('Wheeler', 'Padrick', 'Youspan', 'wpadrickh6@dailymotion.com', '108-707-6319', '2022-09-18', '792-90-9442', '1988-01-27', 'Information Systems Manager', 'M', 'M'),
('Paulie', 'Gosker', 'Dabvine', 'pgoskerh7@cnet.com', '905-169-8921', '2023-04-08', '158-36-6191', '1987-08-22', 'Senior Financial Analyst', 'S', 'F'),
('Larina', 'Calam', 'Mynte', 'lcalamh8@topsy.com', '530-641-4241', '2023-01-22', '765-36-9497', '2000-12-22', 'Project Manager', 'S', 'F'),
('Delmore', 'Tonge', 'Dabvine', 'dtongeh9@drupal.org', '483-914-2969', '2023-08-26', '329-55-9478', '1989-07-15', 'Paralegal', 'M', 'M'),
('Lawrence', 'Viner', 'Quimba', 'lvinerha@comcast.net', '197-176-0981', '2022-12-18', '265-71-8587', '1992-09-24', 'Staff Accountant IV', 'M', 'M'),
('Reiko', 'Ludgrove', 'Demimbu', 'rludgrovehb@ucoz.com', '689-567-2544', '2022-12-20', '855-12-7853', '1987-10-22', 'Analog Circuit Design manager', 'M', 'F'),
('Melva', 'Sorsby', 'Oozz', 'msorsbyhc@cnn.com', '846-716-9267', '2023-02-23', '623-34-4218', '1988-08-26', 'Business Systems Development Analyst', 'S', 'F'),
('Engracia', 'Roxbrough', 'Pixoboo', 'eroxbroughhd@hhs.gov', '387-249-3170', '2023-02-15', '337-70-2623', '1989-02-09', 'Teacher', 'M', 'F'),
('Norbie', 'Bambridge', 'Katz', 'nbambridgehe@tiny.cc', '690-977-5491', '2022-09-26', '133-73-7629', '1983-01-13', 'Recruiting Manager', 'M', 'M'),
('Tucky', 'Jedrychowski', 'Tagchat', 'tjedrychowskihf@columbia.edu', '692-140-3343', '2023-06-08', '302-88-7491', '1983-10-05', 'Cost Accountant', 'M', 'M'),
('Joelie', 'Cullinane', 'Jaxworks', 'jcullinanehg@cbsnews.com', '269-416-4577', '2023-03-27', '240-89-9641', '2002-08-09', 'Account Coordinator', 'M', 'F'),
('Hilary', 'Elford', 'Quinu', 'helfordhh@paginegialle.it', '291-995-7282', '2023-06-15', '435-29-6030', '1997-08-23', 'Account Executive', 'M', 'F'),
('Butch', 'Bowyer', 'Quamba', 'bbowyerhi@google.de', '116-637-8075', '2023-08-13', '842-29-1553', '1983-06-16', 'General Manager', 'M', 'M'),
('Davey', 'Bellay', 'Thoughtsphere', 'dbellayhj@nhs.uk', '962-188-4773', '2023-09-14', '138-25-7736', '1999-05-27', 'Research Assistant I', 'M', 'M'),
('Grace', 'Kelleher', 'Meevee', 'gkelleherhk@deliciousdays.com', '707-797-9054', '2022-09-19', '681-36-6927', '2000-06-19', 'Recruiting Manager', 'M', 'M'),
('Yves', 'Artiss', 'Jamia', 'yartisshl@netlog.com', '812-194-6393', '2023-09-13', '239-45-8858', '1983-11-08', 'Staff Scientist', 'S', 'M'),
('Jenni', 'Zink', 'Oyoloo', 'jzinkhm@slideshare.net', '658-800-1539', '2022-12-25', '290-81-2992', '1999-04-01', 'Geologist II', 'S', 'F'),
('Stewart', 'Slora', 'Meevee', 'sslorahn@cyberchimps.com', '835-294-3392', '2022-09-25', '716-25-9266', '1986-05-03', 'VP Marketing', 'S', 'M'),
('Tammi', 'Cushe', 'Meedoo', 'tcusheho@themeforest.net', '556-739-8294', '2023-03-24', '765-66-0842', '1982-11-03', 'Environmental Specialist', 'S', 'F'),
('Clem', 'Swayton', 'Snaptags', 'cswaytonhp@icq.com', '662-262-2111', '2023-07-31', '227-19-4355', '1989-06-08', 'Data Coordinator', 'S', 'M'),
('Kanya', 'Fery', 'Quinu', 'kferyhq@yahoo.co.jp', '743-864-3484', '2023-01-26', '773-92-0933', '2002-07-20', 'VP Accounting', 'S', 'F'),
('Linette', 'Shildrake', 'Snaptags', 'lshildrakehr@eepurl.com', '872-590-1881', '2022-12-02', '310-99-1039', '1983-12-21', 'Data Coordinator', 'S', 'F'),
('Byrom', 'Ayre', 'Fanoodle', 'bayrehs@blogtalkradio.com', '197-315-9335', '2023-03-07', '384-41-4738', '1982-03-01', 'Marketing Assistant', 'M', 'M'),
('Marylynne', 'Barkas', 'Nlounge', 'mbarkasht@nih.gov', '824-783-1041', '2023-09-03', '330-71-7521', '1993-11-01', 'Registered Nurse', 'M', 'F'),
('Keane', 'Pariso', 'Skiptube', 'kparisohu@discovery.com', '608-211-0602', '2023-03-04', '188-42-5798', '1997-03-29', 'Help Desk Technician', 'S', 'M'),
('Cosmo', 'Pipes', 'Divape', 'cpipeshv@hao123.com', '713-146-9556', '2023-06-28', '358-67-8540', '1988-02-23', 'Database Administrator I', 'S', 'M'),
('Nevile', 'Treadgall', 'Photofeed', 'ntreadgallhw@sciencedirect.com', '403-696-8471', '2023-02-25', '638-38-8848', '1993-09-24', 'Developer II', 'S', 'M'),
('Dennie', 'Janew', 'Voonte', 'djanewhx@abc.net.au', '153-838-9509', '2023-05-13', '236-87-8781', '1997-03-13', 'Technical Writer', 'S', 'F'),
('Evangeline', 'Hare', 'Wikizz', 'eharehy@upenn.edu', '516-247-6298', '2023-06-10', '806-98-0515', '1994-09-06', 'Environmental Tech', 'M', 'F'),
('Thurstan', 'Tesh', 'Oyoyo', 'tteshhz@indiegogo.com', '321-880-9024', '2023-01-27', '192-40-5351', '1992-08-14', 'Engineer IV', 'M', 'M'),
('Ignacius', 'Heartfield', 'Skalith', 'iheartfieldi0@squarespace.com', '288-194-8032', '2023-01-26', '632-05-3643', '1998-03-03', 'Project Manager', 'S', 'M'),
('Lamar', 'Butner', 'Kwimbee', 'lbutneri1@deliciousdays.com', '928-729-5321', '2022-12-28', '428-10-1996', '1997-11-15', 'Registered Nurse', 'M', 'M'),
('Roderich', 'Yeates', 'Camimbo', 'ryeatesi2@howstuffworks.com', '581-867-7809', '2023-04-22', '694-26-8530', '2001-08-06', 'Geological Engineer', 'M', 'M'),
('Fabio', 'Wheeliker', 'Feedfire', 'fwheelikeri3@plala.or.jp', '274-931-3581', '2023-07-23', '399-29-2176', '1983-03-05', 'Quality Engineer', 'M', 'M'),
('Koenraad', 'Espadate', 'Devify', 'kespadatei4@unc.edu', '726-533-4344', '2023-04-23', '265-57-8235', '1997-03-27', 'Office Assistant I', 'M', 'M'),
('Rochella', 'Morillas', 'Blognation', 'rmorillasi5@sitemeter.com', '794-342-6849', '2023-03-04', '379-40-4202', '1994-11-27', 'Human Resources Manager', 'M', 'F'),
('Michail', 'Duddle', 'Wikido', 'mduddlei6@ezinearticles.com', '290-872-1811', '2022-10-21', '748-06-8618', '1985-02-12', 'Administrative Officer', 'S', 'M'),
('Philippine', 'Dowbiggin', 'Gevee', 'pdowbiggini7@yandex.ru', '245-706-8334', '2023-08-04', '479-70-2685', '1981-05-23', 'Developer I', 'S', 'F'),
('Silvie', 'Hatcher', 'LiveZ', 'shatcheri8@microsoft.com', '305-551-4869', '2023-01-10', '833-22-9456', '1999-10-12', 'Tax Accountant', 'M', 'F'),
('Dell', 'Jope', 'Wikido', 'djopei9@timesonline.co.uk', '530-431-5028', '2023-05-30', '820-31-1146', '1992-05-24', 'Registered Nurse', 'M', 'F'),
('Tessa', 'Gowar', 'Mita', 'tgowaria@wiley.com', '857-234-0093', '2023-02-01', '299-15-7449', '1994-07-01', 'Engineer III', 'S', 'F'),
('Ardelia', 'Winny', 'Feednation', 'awinnyib@omniture.com', '520-570-1352', '2023-09-01', '147-52-5232', '1992-11-17', 'Statistician II', 'M', 'F'),
('Isa', 'Skitteral', 'Dabshots', 'iskitteralic@newsvine.com', '427-229-0912', '2023-06-13', '856-55-7507', '1996-09-13', 'Biostatistician IV', 'M', 'M'),
('Vinny', 'Popelay', 'Gigabox', 'vpopelayid@instagram.com', '983-609-9743', '2023-06-17', '860-99-1969', '1981-12-17', 'Senior Cost Accountant', 'S', 'M'),
('Fredia', 'Burchfield', 'Photofeed', 'fburchfieldie@google.it', '765-182-3329', '2023-09-10', '714-13-7454', '2002-01-15', 'Programmer III', 'S', 'F'),
('Ernestine', 'Fransoni', 'Brainbox', 'efransoniif@cafepress.com', '158-348-9692', '2023-04-14', '329-09-7693', '1987-05-16', 'Structural Analysis Engineer', 'S', 'F'),
('Culley', 'Pettersen', 'Meezzy', 'cpettersenig@amazonaws.com', '686-889-4375', '2022-12-04', '250-45-6445', '1983-01-21', 'Librarian', 'S', 'M'),
('Dawna', 'Bicheno', 'Thoughtmix', 'dbichenoih@sina.com.cn', '319-933-3710', '2022-10-14', '555-47-3748', '2000-06-26', 'Accounting Assistant II', 'M', 'F'),
('Gaylor', 'Tiebe', 'Feedfire', 'gtiebeii@icio.us', '651-662-3702', '2022-12-05', '293-37-5086', '1991-03-01', 'Research Assistant I', 'S', 'M'),
('Brodie', 'Maffi', 'Kayveo', 'bmaffiij@mashable.com', '694-191-6841', '2022-11-16', '718-96-2709', '1984-07-19', 'Nurse', 'S', 'M'),
('Genna', 'Berrygun', 'Thoughtbridge', 'gberrygunik@baidu.com', '559-328-4405', '2022-10-20', '227-44-4857', '1994-01-21', 'Computer Systems Analyst III', 'M', 'F'),
('Milo', 'Daulton', 'Topdrive', 'mdaultonil@qq.com', '996-644-6672', '2023-04-05', '241-73-5943', '1997-10-19', 'Human Resources Manager', 'S', 'M'),
('Rutter', 'Westnedge', 'Oyonder', 'rwestnedgeim@reuters.com', '711-129-5015', '2022-12-07', '386-46-8036', '1988-03-07', 'Project Manager', 'M', 'M'),
('Rita', 'Seamans', 'Aibox', 'rseamansin@aboutads.info', '377-951-8513', '2023-09-02', '544-02-7473', '1984-10-26', 'VP Accounting', 'S', 'F'),
('Stepha', 'Polgreen', 'LiveZ', 'spolgreenio@paginegialle.it', '973-277-3238', '2022-11-08', '231-14-3550', '1992-01-23', 'Civil Engineer', 'S', 'F'),
('Berry', 'Borkin', 'Omba', 'bborkinip@goodreads.com', '104-360-0698', '2023-01-30', '270-94-1418', '1993-01-03', 'Accountant II', 'M', 'F'),
('Sarge', 'Veare', 'Eamia', 'sveareiq@engadget.com', '997-190-8680', '2022-09-28', '768-15-9502', '1985-05-08', 'Chief Design Engineer', 'S', 'M'),
('Ardra', 'Simounet', 'Gigaclub', 'asimounetir@freewebs.com', '194-776-0715', '2023-08-04', '423-03-9627', '1995-12-30', 'Nurse', 'M', 'F'),
('Torr', 'McCroary', 'Trilith', 'tmccroaryis@yellowpages.com', '221-776-6884', '2022-11-14', '502-93-6021', '1997-08-23', 'Programmer III', 'M', 'M'),
('Aldo', 'Allden', 'Skiba', 'aalldenit@msu.edu', '732-278-1330', '2023-07-08', '657-99-9922', '1995-02-15', 'Actuary', 'S', 'M'),
('Findley', 'Tyzack', 'Yata', 'ftyzackiu@1688.com', '577-583-6592', '2023-01-30', '691-44-4031', '1985-11-21', 'Sales Associate', 'S', 'M'),
('Tiebout', 'Grishukov', 'Cogidoo', 'tgrishukoviv@google.com.au', '509-972-4435', '2023-02-03', '171-73-7695', '1989-08-04', 'Marketing Manager', 'M', 'M'),
('Ezri', 'Reddish', 'Skyvu', 'ereddishiw@harvard.edu', '378-285-6607', '2022-10-24', '255-65-1681', '2002-08-01', 'Executive Secretary', 'M', 'M'),
('Hunter', 'Villa', 'Quamba', 'hvillaix@youtu.be', '366-902-6747', '2023-03-08', '433-71-4562', '1986-01-18', 'Assistant Manager', 'M', 'M'),
('Stace', 'Stevings', 'Lazz', 'sstevingsiy@cnn.com', '600-408-0868', '2023-06-30', '710-79-4810', '1986-05-18', 'Executive Secretary', 'S', 'F'),
('Johnny', 'Costen', 'Thoughtstorm', 'jcosteniz@china.com.cn', '152-994-7748', '2022-10-12', '543-26-8292', '1983-07-29', 'Staff Scientist', 'S', 'M'),
('Amara', 'Chivrall', 'Roomm', 'achivrallj0@wikipedia.org', '981-977-3034', '2023-08-31', '616-55-2697', '2002-05-23', 'Developer II', 'S', 'F'),
('Marleah', 'Pointon', 'BlogXS', 'mpointonj1@google.com', '493-546-6114', '2023-06-04', '511-30-8838', '1982-01-07', 'Structural Analysis Engineer', 'M', 'F'),
('Tyrone', 'Getten', 'Zoomcast', 'tgettenj2@privacy.gov.au', '862-479-3057', '2023-01-12', '170-20-0365', '1982-06-14', 'Assistant Media Planner', 'M', 'M'),
('Cairistiona', 'Dows', 'Skyba', 'cdowsj3@washingtonpost.com', '255-984-4038', '2022-09-24', '195-54-0585', '2002-04-20', 'Quality Engineer', 'M', 'F'),
('Wendel', 'Pemberton', 'Vipe', 'wpembertonj4@nationalgeographic.com', '718-507-8859', '2022-12-06', '262-49-9545', '1985-02-06', 'Librarian', 'S', 'M'),
('Ephraim', 'Scahill', 'Trunyx', 'escahillj5@angelfire.com', '640-237-5745', '2023-04-08', '861-58-3284', '1982-12-06', 'Senior Sales Associate', 'M', 'M'),
('Philomena', 'Treace', 'Brightbean', 'ptreacej6@ameblo.jp', '405-160-2570', '2023-07-18', '441-55-0102', '2000-03-29', 'Senior Editor', 'S', 'F'),
('Lotta', 'Atter', 'Shufflester', 'latterj7@spiegel.de', '763-647-6182', '2023-08-11', '106-89-0922', '1991-07-02', 'Registered Nurse', 'S', 'F'),
('Darlene', 'Macias', 'Blogtags', 'dmaciasj8@bloglovin.com', '958-244-9459', '2023-08-04', '405-95-6585', '2001-04-27', 'Administrative Assistant III', 'M', 'F'),
('Lewes', 'Kitchenman', 'Yombu', 'lkitchenmanj9@xrea.com', '802-312-0034', '2023-06-29', '866-65-3106', '1985-06-27', 'Electrical Engineer', 'S', 'M'),
('Ruprecht', 'Northin', 'Voonix', 'rnorthinja@taobao.com', '231-472-1578', '2022-11-02', '319-22-6404', '1986-11-29', 'Recruiting Manager', 'S', 'M'),
('Adoree', 'Forrester', 'Rhynyx', 'aforresterjb@deliciousdays.com', '894-613-5831', '2022-10-03', '620-73-1017', '1995-12-08', 'Nurse', 'S', 'F'),
('Alon', 'Camoys', 'Quire', 'acamoysjc@bluehost.com', '960-718-9533', '2022-10-16', '742-73-2653', '1987-07-17', 'Financial Advisor', 'M', 'M'),
('Ruth', 'Cremen', 'Thoughtworks', 'rcremenjd@adobe.com', '272-792-6396', '2022-10-16', '301-87-8050', '1994-03-08', 'Senior Developer', 'M', 'F'),
('Redford', 'Stockings', 'Kimia', 'rstockingsje@mail.ru', '112-188-1691', '2022-10-30', '107-32-1986', '1998-10-04', 'Actuary', 'S', 'M'),
('Guillemette', 'Szymanowski', 'Realfire', 'gszymanowskijf@macromedia.com', '937-406-8585', '2023-05-05', '876-83-3524', '1982-02-18', 'Project Manager', 'M', 'F'),
('Freemon', 'O''Deoran', 'Twitterwire', 'fodeoranjg@dailymotion.com', '410-958-0111', '2023-05-31', '563-17-4771', '1996-03-06', 'Graphic Designer', 'S', 'M'),
('Berkley', 'Haulkham', 'Wikizz', 'bhaulkhamjh@miitbeian.gov.cn', '733-200-0599', '2022-10-04', '217-58-2262', '1998-04-02', 'Financial Analyst', 'M', 'M'),
('Keven', 'Krzysztofiak', 'Realbuzz', 'kkrzysztofiakji@europa.eu', '137-929-3675', '2023-05-20', '620-93-0891', '1999-11-04', 'VP Accounting', 'M', 'M'),
('Patten', 'Shivell', 'Voonder', 'pshivelljj@so-net.ne.jp', '780-964-4987', '2023-07-03', '698-52-9116', '1997-10-16', 'Senior Financial Analyst', 'S', 'M'),
('Quill', 'Petrozzi', 'Topicshots', 'qpetrozzijk@shutterfly.com', '877-129-4045', '2023-03-28', '686-54-4633', '1982-09-30', 'Geological Engineer', 'M', 'M'),
('Maybelle', 'Huccaby', 'Twitterworks', 'mhuccabyjl@addthis.com', '967-597-8603', '2023-07-08', '657-43-9303', '2002-01-21', 'Senior Financial Analyst', 'S', 'F'),
('Friedrich', 'Puncher', 'Avaveo', 'fpuncherjm@umich.edu', '410-339-7731', '2023-03-15', '804-69-0578', '1992-08-31', 'Marketing Assistant', 'M', 'M'),
('Garwood', 'Deason', 'Bluezoom', 'gdeasonjn@businessinsider.com', '950-379-2318', '2022-10-01', '662-79-8142', '1992-07-13', 'Quality Control Specialist', 'M', 'M'),
('Claiborn', 'Haselgrove', 'Mycat', 'chaselgrovejo@joomla.org', '209-695-6036', '2022-12-07', '697-65-6467', '1996-03-08', 'Nurse Practicioner', 'M', 'M'),
('Arluene', 'Summons', 'Voomm', 'asummonsjp@jalbum.net', '246-228-3335', '2023-04-12', '304-75-7212', '2002-02-21', 'Health Coach I', 'S', 'F'),
('Jolee', 'Bladesmith', 'Snaptags', 'jbladesmithjq@slate.com', '194-343-9411', '2023-06-15', '508-29-3708', '2000-02-26', 'Database Administrator I', 'S', 'F'),
('Nataniel', 'Iacovozzo', 'Twimm', 'niacovozzojr@mediafire.com', '601-920-2897', '2023-02-17', '352-18-1905', '1989-12-14', 'Food Chemist', 'S', 'M'),
('Paxon', 'MacGinney', 'Bluezoom', 'pmacginneyjs@taobao.com', '405-308-3109', '2023-02-11', '559-17-9337', '1992-10-21', 'Administrative Assistant III', 'S', 'M'),
('Ulrick', 'Kingzet', 'Quimm', 'ukingzetjt@hao123.com', '446-503-8941', '2022-10-26', '860-71-2292', '1999-09-11', 'Director of Sales', 'M', 'M'),
('Rivalee', 'Vlach', 'Quatz', 'rvlachju@msu.edu', '216-323-4474', '2022-10-10', '132-58-4038', '1999-06-26', 'Electrical Engineer', 'M', 'F'),
('Amargo', 'Drife', 'Edgeify', 'adrifejv@pcworld.com', '686-350-8190', '2023-07-22', '880-43-6226', '1992-01-22', 'Help Desk Operator', 'S', 'F'),
('Cyndia', 'Overal', 'Jabbersphere', 'coveraljw@yahoo.com', '966-920-4005', '2023-01-01', '463-59-0890', '1999-10-24', 'VP Accounting', 'S', 'F'),
('Nata', 'Smalecombe', 'Thoughtsphere', 'nsmalecombejx@google.cn', '128-996-5110', '2023-07-08', '637-89-5259', '1992-05-23', 'Senior Cost Accountant', 'M', 'F'),
('Raquela', 'Hellier', 'Bluejam', 'rhellierjy@gov.uk', '286-736-8316', '2023-03-17', '316-74-6119', '1998-06-27', 'Quality Engineer', 'M', 'F'),
('Tallulah', 'Layus', 'Linkbuzz', 'tlayusjz@ovh.net', '395-118-8321', '2023-08-07', '469-01-5552', '1992-03-09', 'Recruiter', 'S', 'F'),
('Ronnie', 'Skentelbury', 'Quamba', 'rskentelburyk0@umn.edu', '754-933-6053', '2023-08-27', '246-12-7635', '1986-04-26', 'Software Engineer IV', 'M', 'M'),
('Jake', 'Isaaksohn', 'Linktype', 'jisaaksohnk1@e-recht24.de', '239-457-5748', '2023-02-15', '893-98-6531', '1996-07-09', 'Geologist I', 'S', 'M'),
('Sigismond', 'Beardon', 'Rhyloo', 'sbeardonk2@imageshack.us', '609-100-3767', '2022-10-18', '545-52-9516', '1987-06-13', 'Physical Therapy Assistant', 'M', 'M'),
('Merci', 'Bambrough', 'Trilith', 'mbambroughk3@flavors.me', '348-416-8459', '2022-11-28', '167-33-2695', '1984-02-15', 'Software Engineer IV', 'M', 'F'),
('Gualterio', 'Orrom', 'BlogXS', 'gorromk4@unc.edu', '471-345-2562', '2023-02-20', '800-47-4477', '2000-01-29', 'Junior Executive', 'S', 'M'),
('Bianca', 'Rogans', 'Aimbo', 'brogansk5@bloglovin.com', '854-305-8836', '2023-03-12', '640-45-4873', '1983-08-05', 'Project Manager', 'M', 'F'),
('Aguste', 'Dagnall', 'Devpoint', 'adagnallk6@dropbox.com', '915-603-4054', '2022-11-12', '590-39-9267', '1994-10-17', 'Registered Nurse', 'M', 'M'),
('Hasty', 'Serrell', 'Youbridge', 'hserrellk7@berkeley.edu', '210-500-2180', '2022-10-01', '165-94-5534', '2002-05-19', 'Database Administrator II', 'S', 'M'),
('Florina', 'Kitchingman', 'Edgewire', 'fkitchingmank8@un.org', '652-260-1485', '2023-06-03', '428-30-1536', '1991-12-25', 'Executive Secretary', 'S', 'F'),
('Hew', 'Fiddyment', 'Kwilith', 'hfiddymentk9@php.net', '559-109-2608', '2023-08-31', '542-93-4955', '1998-11-22', 'Sales Representative', 'M', 'M'),
('Hayward', 'Kubanek', 'Topiclounge', 'hkubanekka@skype.com', '470-132-1136', '2023-07-20', '519-39-1406', '1994-10-13', 'Payment Adjustment Coordinator', 'M', 'M'),
('Nester', 'Kennally', 'Rooxo', 'nkennallykb@ocn.ne.jp', '434-808-7119', '2023-09-07', '777-57-2750', '1985-12-12', 'Help Desk Operator', 'M', 'M'),
('Rickey', 'Pere', 'Flashset', 'rperekc@apple.com', '859-635-3058', '2022-10-12', '184-20-6555', '1986-02-25', 'Software Test Engineer I', 'S', 'M'),
('Earle', 'Kilius', 'Camimbo', 'ekiliuskd@ft.com', '579-170-2740', '2023-08-28', '755-51-8187', '1995-10-29', 'Database Administrator II', 'S', 'M'),
('James', 'Juza', 'Twinder', 'jjuzake@cdc.gov', '585-941-1865', '2023-04-27', '467-67-5047', '1985-07-22', 'Professor', 'M', 'M'),
('Flory', 'Readitt', 'Skyble', 'freadittkf@yolasite.com', '647-802-3741', '2023-02-06', '758-52-9820', '1982-10-07', 'Product Engineer', 'S', 'F'),
('Elnar', 'Suatt', 'Voonyx', 'esuattkg@alexa.com', '874-195-9169', '2022-10-08', '874-05-0725', '1983-06-25', 'Analog Circuit Design manager', 'M', 'M'),
('Hiram', 'Whaymand', 'Ntag', 'hwhaymandkh@oaic.gov.au', '820-659-3994', '2022-11-06', '174-21-4808', '1993-07-28', 'Environmental Specialist', 'M', 'M'),
('Kacie', 'Bodleigh', 'Eidel', 'kbodleighki@addthis.com', '569-563-9599', '2023-01-26', '206-17-0614', '1996-12-26', 'Research Assistant IV', 'M', 'F'),
('Filmer', 'Pioli', 'Photofeed', 'fpiolikj@independent.co.uk', '411-492-7486', '2023-05-05', '869-68-3631', '1982-02-10', 'Librarian', 'M', 'M'),
('Fancy', 'Iuorio', 'Latz', 'fiuoriokk@infoseek.co.jp', '328-809-2586', '2023-09-03', '488-08-4020', '1999-01-18', 'Assistant Media Planner', 'M', 'F'),
('Merci', 'Echallie', 'Aimbo', 'mechalliekl@naver.com', '602-885-9181', '2023-02-11', '232-95-8791', '2000-09-03', 'Environmental Tech', 'M', 'F'),
('Gregoire', 'Peascod', 'Devcast', 'gpeascodkm@uiuc.edu', '655-166-4022', '2023-06-05', '644-05-3488', '1986-02-02', 'Quality Control Specialist', 'S', 'M'),
('Dominique', 'Goding', 'Twinder', 'dgodingkn@nyu.edu', '850-780-3605', '2023-06-09', '446-59-5025', '1999-01-03', 'Senior Quality Engineer', 'M', 'M'),
('Zach', 'MacGinley', 'Pixoboo', 'zmacginleyko@woothemes.com', '963-402-6175', '2023-07-27', '523-78-8764', '1984-04-25', 'Community Outreach Specialist', 'M', 'M'),
('Caro', 'Dingivan', 'Edgewire', 'cdingivankp@archive.org', '908-120-6985', '2022-11-14', '225-24-2590', '1993-04-01', 'Actuary', 'M', 'F'),
('Urban', 'McLachlan', 'Eidel', 'umclachlankq@360.cn', '945-614-9528', '2023-07-26', '391-56-6506', '1985-08-08', 'Administrative Assistant II', 'S', 'M'),
('Paco', 'Giordano', 'Twitternation', 'pgiordanokr@foxnews.com', '798-470-2565', '2023-09-12', '118-65-5134', '1980-11-30', 'Environmental Specialist', 'M', 'M'),
('Ree', 'Fishenden', 'Eamia', 'rfishendenks@blogspot.com', '163-192-4259', '2023-01-16', '848-73-5084', '2002-04-20', 'Senior Quality Engineer', 'M', 'F'),
('Caressa', 'Dorrity', 'Zoomlounge', 'cdorritykt@hao123.com', '360-273-1554', '2023-01-09', '652-41-1136', '1987-11-14', 'Staff Scientist', 'M', 'F'),
('Pall', 'Martine', 'Twitterlist', 'pmartineku@hp.com', '249-881-3929', '2023-03-09', '465-34-0203', '1989-12-19', 'Statistician I', 'M', 'M'),
('Mill', 'Ivanikhin', 'Yambee', 'mivanikhinkv@hexun.com', '314-510-7331', '2023-02-22', '526-73-9654', '1985-10-16', 'Financial Analyst', 'S', 'M'),
('Lani', 'Maciaszek', 'Photolist', 'lmaciaszekkw@usnews.com', '690-832-9190', '2023-02-10', '499-02-2789', '1988-09-25', 'Staff Accountant I', 'M', 'F'),
('Mame', 'Dimitrijevic', 'Thoughtbeat', 'mdimitrijevickx@squarespace.com', '871-669-4682', '2022-10-13', '494-55-7779', '1982-01-21', 'VP Quality Control', 'S', 'F'),
('Leone', 'Broxton', 'Voolia', 'lbroxtonky@vk.com', '386-576-4462', '2023-09-12', '511-99-9036', '1981-08-11', 'Information Systems Manager', 'S', 'F'),
('Cornie', 'Weblin', 'Twiyo', 'cweblinkz@digg.com', '738-966-3260', '2023-06-19', '128-29-4854', '1993-10-18', 'Structural Engineer', 'M', 'F'),
('Shurwood', 'Schultes', 'Jaxnation', 'sschultesl0@springer.com', '251-314-8385', '2023-07-27', '149-24-4108', '1987-04-05', 'Structural Engineer', 'S', 'M'),
('Pippa', 'Derrell', 'Jabbersphere', 'pderrelll1@hibu.com', '543-526-6349', '2023-07-27', '521-06-3458', '1999-07-31', 'Help Desk Technician', 'S', 'F'),
('Tybalt', 'Duffy', 'Kwilith', 'tduffyl2@pinterest.com', '609-430-2599', '2023-07-16', '613-37-8241', '1984-08-11', 'Social Worker', 'M', 'M'),
('Sutton', 'Itzcovich', 'Tagpad', 'sitzcovichl3@angelfire.com', '494-985-3678', '2023-08-08', '214-13-1896', '1987-06-18', 'Research Associate', 'S', 'M'),
('Skyler', 'Jessop', 'Rhynyx', 'sjessopl4@simplemachines.org', '275-253-3774', '2023-06-15', '473-16-7143', '1989-12-26', 'Sales Associate', 'S', 'M'),
('Maynord', 'Klimmek', 'Kanoodle', 'mklimmekl5@cbsnews.com', '713-117-5854', '2023-08-08', '620-79-8952', '1989-12-08', 'Help Desk Technician', 'S', 'M'),
('Lorie', 'Bellworthy', 'Abatz', 'lbellworthyl6@csmonitor.com', '837-284-9244', '2023-06-04', '373-18-7175', '1993-12-19', 'Marketing Manager', 'M', 'F'),
('Aron', 'Clethro', 'Twitterbeat', 'aclethrol7@wikia.com', '871-529-8748', '2023-03-24', '211-98-3142', '1991-08-01', 'Tax Accountant', 'M', 'M'),
('Bertram', 'Jayume', 'Gigaclub', 'bjayumel8@usgs.gov', '715-405-8076', '2023-02-08', '775-63-8772', '2001-08-05', 'Director of Sales', 'M', 'M'),
('Frank', 'Paolucci', 'Dabtype', 'fpaoluccil9@canalblog.com', '337-647-1672', '2023-04-20', '855-87-6899', '1984-10-31', 'Administrative Officer', 'M', 'F'),
('Bennie', 'Pierce', 'Youbridge', 'bpiercela@gravatar.com', '648-473-1142', '2023-06-27', '120-92-2220', '1980-12-01', 'Senior Financial Analyst', 'M', 'M'),
('Chloris', 'De Roos', 'Yadel', 'cderooslb@uiuc.edu', '434-854-4969', '2022-09-23', '713-73-5348', '2000-01-10', 'Financial Advisor', 'M', 'F'),
('Caldwell', 'Tenny', 'Centizu', 'ctennylc@hugedomains.com', '804-701-6640', '2023-02-05', '539-23-6032', '1995-08-29', 'Administrative Officer', 'S', 'M'),
('Carline', 'Turbard', 'Bubblemix', 'cturbardld@g.co', '266-321-9887', '2023-08-28', '762-89-2219', '1994-05-15', 'Recruiting Manager', 'M', 'F'),
('Almeda', 'Timothy', 'Oyonder', 'atimothyle@harvard.edu', '856-343-2941', '2022-11-19', '372-06-5113', '1999-06-27', 'Payment Adjustment Coordinator', 'M', 'F'),
('Darrick', 'Marini', 'Quinu', 'dmarinilf@ustream.tv', '603-769-5203', '2023-09-11', '525-92-9999', '1993-10-11', 'Research Assistant II', 'S', 'M'),
('Tiphanie', 'Deware', 'Fivebridge', 'tdewarelg@state.tx.us', '888-878-8255', '2023-05-09', '228-04-8762', '1980-10-02', 'Assistant Manager', 'S', 'F'),
('Currey', 'Liddell', 'Snaptags', 'cliddelllh@cornell.edu', '720-956-1012', '2023-01-24', '202-99-0119', '1990-03-30', 'Electrical Engineer', 'M', 'M'),
('Darrell', 'Desseine', 'Brightbean', 'ddesseineli@fda.gov', '679-145-7498', '2022-11-21', '378-07-6398', '2002-01-01', 'General Manager', 'M', 'M'),
('Roddie', 'Hefforde', 'Brightdog', 'rheffordelj@example.com', '351-123-5557', '2022-12-24', '170-15-9755', '1986-07-16', 'Database Administrator IV', 'S', 'M'),
('Andreas', 'Krug', 'Dabjam', 'akruglk@odnoklassniki.ru', '547-331-7205', '2022-11-02', '638-24-3464', '1988-03-12', 'Physical Therapy Assistant', 'S', 'M'),
('Emmey', 'Work', 'Janyx', 'eworkll@scribd.com', '702-380-5639', '2023-05-25', '858-10-4472', '1985-03-23', 'Assistant Professor', 'S', 'F'),
('Andros', 'Stanyard', 'Tagtune', 'astanyardlm@networkadvertising.org', '700-555-3461', '2023-07-03', '463-61-1162', '1983-10-07', 'Structural Engineer', 'M', 'M'),
('Shanna', 'Proffitt', 'Twimm', 'sproffittln@github.io', '364-437-8073', '2022-09-28', '847-65-5136', '1985-05-09', 'Developer II', 'S', 'F'),
('Lebbie', 'Eaklee', 'Skimia', 'leakleelo@foxnews.com', '175-989-3536', '2023-02-12', '286-38-1465', '1989-08-19', 'Business Systems Development Analyst', 'S', 'F'),
('Jeremias', 'Himpson', 'Youbridge', 'jhimpsonlp@opera.com', '713-954-0561', '2022-11-10', '618-90-7231', '1996-09-18', 'Clinical Specialist', 'S', 'M'),
('Izak', 'Jenik', 'Browsecat', 'ijeniklq@hc360.com', '224-667-1847', '2022-10-03', '247-42-5190', '1998-11-14', 'Desktop Support Technician', 'S', 'M'),
('Jamil', 'Gilburt', 'Yodo', 'jgilburtlr@wix.com', '988-912-1353', '2022-11-02', '538-16-1846', '1983-06-08', 'Speech Pathologist', 'S', 'M'),
('Bobbi', 'Danit', 'Yoveo', 'bdanitls@unicef.org', '713-835-5019', '2023-05-16', '115-59-8900', '1992-06-23', 'Payment Adjustment Coordinator', 'S', 'F'),
('Emlyn', 'Fruish', 'Centidel', 'efruishlt@adobe.com', '505-718-4776', '2022-10-03', '513-76-4698', '1981-06-04', 'Statistician I', 'M', 'M'),
('Lyn', 'Kopacek', 'Trudeo', 'lkopaceklu@jugem.jp', '526-775-5679', '2022-10-18', '344-22-9520', '2001-10-06', 'Nurse', 'M', 'F'),
('Randi', 'Sines', 'Skinix', 'rsineslv@gnu.org', '652-315-9075', '2023-08-25', '636-38-8571', '1990-10-13', 'Account Coordinator', 'M', 'M'),
('Pincas', 'Gallanders', 'Eidel', 'pgallanderslw@nyu.edu', '965-507-4950', '2023-01-11', '536-21-4619', '1997-12-03', 'Structural Analysis Engineer', 'S', 'M'),
('Casey', 'Georgeau', 'Cogidoo', 'cgeorgeaulx@ebay.com', '622-217-8108', '2022-12-12', '252-95-2945', '1983-07-26', 'Automation Specialist II', 'S', 'M'),
('Barris', 'Dyer', 'Youtags', 'bdyerly@rakuten.co.jp', '615-901-2151', '2022-09-25', '146-37-4719', '1986-07-21', 'Recruiting Manager', 'M', 'M'),
('Pearla', 'Duchateau', 'Photobug', 'pduchateaulz@google.com.hk', '810-266-9979', '2023-03-31', '676-18-9658', '1988-08-05', 'Quality Control Specialist', 'M', 'F'),
('Rodi', 'McEachern', 'Dynazzy', 'rmceachernm0@opera.com', '907-405-8959', '2023-08-10', '592-74-0485', '1999-02-24', 'Account Executive', 'S', 'F'),
('Devora', 'Tourmell', 'Livetube', 'dtourmellm1@paypal.com', '292-850-0755', '2022-11-22', '662-44-1497', '1984-01-16', 'Teacher', 'M', 'F'),
('Bart', 'Mostin', 'Aibox', 'bmostinm2@wired.com', '537-648-2968', '2023-04-25', '460-59-9068', '1989-10-08', 'Accounting Assistant III', 'M', 'M'),
('Ambur', 'Riccard', 'Kare', 'ariccardm3@narod.ru', '654-264-4038', '2023-03-03', '223-73-0297', '2001-04-11', 'Programmer II', 'S', 'F'),
('Ermengarde', 'Abrahamoff', 'Meevee', 'eabrahamoffm4@geocities.jp', '275-256-6997', '2023-06-23', '120-30-6547', '1989-07-15', 'Desktop Support Technician', 'S', 'F'),
('Jilly', 'Ferbrache', 'Brainverse', 'jferbrachem5@quantcast.com', '619-466-9441', '2022-10-26', '683-16-6712', '1981-10-16', 'Systems Administrator III', 'S', 'F'),
('Darrin', 'Gelling', 'Gigazoom', 'dgellingm6@un.org', '718-522-0671', '2023-09-06', '833-63-1807', '2000-11-08', 'Structural Engineer', 'S', 'M'),
('Blaine', 'McMickan', 'Eayo', 'bmcmickanm7@hexun.com', '376-924-9532', '2022-11-27', '360-66-7427', '1996-10-27', 'Nurse', 'M', 'M'),
('Curcio', 'Billingsly', 'Realbuzz', 'cbillingslym8@desdev.cn', '300-579-6679', '2023-02-05', '726-13-9712', '1999-06-23', 'Compensation Analyst', 'M', 'M'),
('Hammad', 'Burnes', 'Oyoba', 'hburnesm9@census.gov', '125-550-2564', '2022-10-18', '278-81-6116', '2001-09-13', 'Project Manager', 'M', 'M'),
('Sher', 'Flaune', 'Topiczoom', 'sflaunema@google.com.br', '416-461-0611', '2022-11-01', '804-59-6757', '1992-05-26', 'Speech Pathologist', 'S', 'F'),
('Hoyt', 'Brosenius', 'Camido', 'hbroseniusmb@aboutads.info', '648-693-4790', '2023-09-07', '170-97-3431', '1990-03-22', 'Professor', 'S', 'M'),
('Adiana', 'Houndesome', 'Brainsphere', 'ahoundesomemc@forbes.com', '567-863-1235', '2023-06-29', '623-75-3918', '2000-07-13', 'Help Desk Operator', 'S', 'F'),
('Roby', 'Fishpool', 'Snaptags', 'rfishpoolmd@dot.gov', '275-662-3743', '2023-07-29', '381-53-7340', '2001-09-01', 'Recruiting Manager', 'M', 'F'),
('Brena', 'Wickersley', 'Abatz', 'bwickersleyme@linkedin.com', '275-887-2679', '2022-09-27', '327-52-8338', '1988-01-31', 'Environmental Tech', 'S', 'F'),
('Julieta', 'McKelvey', 'Twinte', 'jmckelveymf@baidu.com', '111-392-2836', '2023-02-22', '664-59-5208', '1992-05-19', 'Database Administrator II', 'S', 'F'),
('Lindi', 'Biffen', 'Vinte', 'lbiffenmg@blog.com', '330-354-6857', '2022-12-12', '862-47-9545', '1988-10-24', 'Information Systems Manager', 'M', 'F'),
('Yolande', 'Luberti', 'Miboo', 'ylubertimh@creativecommons.org', '231-319-1700', '2023-01-10', '170-79-3833', '1988-07-29', 'Executive Secretary', 'M', 'F'),
('Rasla', 'Farnworth', 'Realcube', 'rfarnworthmi@paginegialle.it', '901-599-0087', '2023-08-24', '568-76-8529', '1982-02-01', 'Information Systems Manager', 'M', 'F'),
('Marga', 'Krop', 'Livefish', 'mkropmj@wordpress.com', '303-137-7211', '2023-05-30', '535-84-9432', '1981-10-30', 'Assistant Professor', 'S', 'F'),
('Iggie', 'Piaggia', 'Kaymbo', 'ipiaggiamk@thetimes.co.uk', '909-892-3773', '2023-03-07', '606-35-0240', '1987-05-07', 'Financial Advisor', 'M', 'M'),
('Agatha', 'Teague', 'Voonyx', 'ateagueml@desdev.cn', '214-806-1370', '2022-11-02', '484-68-5954', '1990-04-07', 'Senior Financial Analyst', 'S', 'F'),
('Clifford', 'Kelwaybamber', 'Eayo', 'ckelwaybambermm@cornell.edu', '415-129-7985', '2023-03-16', '102-68-1020', '1987-01-24', 'Senior Cost Accountant', 'M', 'M'),
('Inger', 'Symms', 'Rhyloo', 'isymmsmn@purevolume.com', '829-122-6270', '2023-03-29', '826-66-5102', '1997-07-04', 'Desktop Support Technician', 'M', 'F'),
('Free', 'Bartak', 'Brainlounge', 'fbartakmo@prweb.com', '676-157-7461', '2023-08-08', '616-77-7873', '1985-01-24', 'Pharmacist', 'M', 'M'),
('Xylia', 'Endicott', 'Jazzy', 'xendicottmp@shareasale.com', '255-765-0020', '2023-03-19', '373-08-7325', '1982-07-18', 'Automation Specialist II', 'M', 'F'),
('Page', 'Gillitt', 'Fivebridge', 'pgillittmq@loc.gov', '141-577-4995', '2023-02-01', '704-42-1476', '1991-06-15', 'Staff Accountant II', 'M', 'F'),
('Jyoti', 'Henzer', 'Cogibox', 'jhenzermr@cyberchimps.com', '966-594-5629', '2023-07-09', '667-21-1595', '1981-07-01', 'Web Designer I', 'S', 'F'),
('Jeannie', 'Boswood', 'Lajo', 'jboswoodms@virginia.edu', '323-728-5785', '2023-07-28', '156-91-6031', '2001-03-06', 'Senior Sales Associate', 'M', 'F'),
('Bartram', 'Tichner', 'Twitterbridge', 'btichnermt@comcast.net', '203-786-0190', '2022-12-15', '224-55-0845', '1993-12-10', 'Recruiting Manager', 'S', 'M'),
('Prudence', 'Owttrim', 'Jaxbean', 'powttrimmu@dot.gov', '227-265-9885', '2022-10-02', '674-92-5336', '1983-06-03', 'Structural Engineer', 'S', 'F'),
('Chicky', 'Karpfen', 'Brainbox', 'ckarpfenmv@bloglines.com', '144-221-9634', '2023-07-27', '873-33-8523', '1988-01-12', 'Marketing Manager', 'M', 'M'),
('Mia', 'Cobb', 'Twiyo', 'mcobbmw@amazon.com', '634-162-8283', '2023-03-30', '245-49-7596', '1984-12-04', 'VP Marketing', 'M', 'F'),
('Sharl', 'Rulf', 'Photobean', 'srulfmx@engadget.com', '922-420-8580', '2023-05-20', '388-66-5148', '1998-05-01', 'Quality Engineer', 'M', 'F'),
('Kendra', 'Foskew', 'Roodel', 'kfoskewmy@foxnews.com', '339-941-9842', '2022-12-18', '673-08-0047', '1983-09-19', 'Database Administrator I', 'M', 'F'),
('Wallis', 'Learie', 'Zoovu', 'wleariemz@squidoo.com', '978-364-6634', '2023-09-10', '187-98-1728', '1990-10-19', 'Senior Quality Engineer', 'S', 'F'),
('Caril', 'Sorensen', 'Buzzshare', 'csorensenn0@time.com', '985-505-4410', '2023-04-29', '591-12-8375', '1980-11-12', 'Analyst Programmer', 'S', 'F'),
('Billi', 'Claiden', 'BlogXS', 'bclaidenn1@homestead.com', '762-270-9088', '2023-08-31', '160-31-9516', '1990-05-25', 'Analyst Programmer', 'S', 'F'),
('Anstice', 'Vasyanin', 'Divanoodle', 'avasyaninn2@seesaa.net', '971-259-6352', '2023-09-06', '306-22-0819', '1982-11-03', 'Business Systems Development Analyst', 'M', 'F'),
('Noelani', 'Lines', 'Kwideo', 'nlinesn3@ucsd.edu', '490-997-8244', '2023-03-13', '222-74-2286', '1997-03-31', 'Project Manager', 'S', 'F'),
('Tawsha', 'Coger', 'Yoveo', 'tcogern4@usatoday.com', '819-970-4611', '2022-12-29', '365-01-3554', '1989-07-14', 'Senior Financial Analyst', 'S', 'F'),
('Patten', 'Mackett', 'Thoughtmix', 'pmackettn5@salon.com', '104-203-2450', '2023-04-26', '225-68-4356', '1980-10-28', 'Senior Developer', 'S', 'M'),
('Alessandra', 'Larham', 'Twitternation', 'alarhamn6@nasa.gov', '568-791-4942', '2023-08-24', '367-13-4005', '1985-10-04', 'Recruiter', 'M', 'F'),
('Paula', 'Westcarr', 'Voolia', 'pwestcarrn7@mediafire.com', '206-941-3416', '2023-08-26', '667-57-4469', '1986-06-23', 'Assistant Professor', 'M', 'F'),
('Josias', 'Rangall', 'Edgepulse', 'jrangalln8@desdev.cn', '222-575-5767', '2023-01-03', '151-28-0957', '1995-11-24', 'Help Desk Operator', 'M', 'M'),
('Tobiah', 'Makepeace', 'Ainyx', 'tmakepeacen9@answers.com', '726-668-3897', '2023-02-23', '883-03-9623', '1989-09-10', 'Developer IV', 'M', 'M'),
('Gerry', 'Zanettini', 'Youspan', 'gzanettinina@hostgator.com', '119-322-2190', '2023-09-13', '759-55-4900', '1998-02-20', 'Statistician II', 'S', 'M'),
('Shannon', 'Nardrup', 'Pixoboo', 'snardrupnb@wikispaces.com', '219-635-9243', '2023-05-25', '663-15-6034', '1987-05-31', 'Web Designer I', 'S', 'F'),
('Minor', 'Muirhead', 'Rhyloo', 'mmuirheadnc@gmpg.org', '929-368-3657', '2023-07-01', '587-23-2943', '2000-12-05', 'Editor', 'M', 'M'),
('Wittie', 'Broxap', 'Feedbug', 'wbroxapnd@va.gov', '219-679-1705', '2022-10-06', '376-32-9581', '2000-10-12', 'Business Systems Development Analyst', 'M', 'M'),
('Mayne', 'Kobelt', 'Realpoint', 'mkobeltne@sitemeter.com', '743-234-8761', '2022-10-26', '578-27-6464', '1983-05-26', 'Research Nurse', 'S', 'M'),
('Sammie', 'Pyford', 'Edgetag', 'spyfordnf@google.com', '648-599-6738', '2023-08-09', '741-97-9668', '1981-09-06', 'Marketing Manager', 'M', 'M'),
('Evangeline', 'Asif', 'Mymm', 'easifng@army.mil', '266-216-4170', '2023-09-03', '536-55-5846', '1997-02-17', 'VP Quality Control', 'S', 'F'),
('Melisandra', 'Dowyer', 'Topiczoom', 'mdowyernh@networksolutions.com', '273-911-4000', '2023-06-01', '242-02-0250', '2002-04-06', 'Professor', 'S', 'F'),
('Sally', 'Guys', 'Viva', 'sguysni@51.la', '690-269-5120', '2023-03-07', '645-80-2743', '1984-02-11', 'Administrative Assistant I', 'S', 'F'),
('Chic', 'Himpson', 'Brainsphere', 'chimpsonnj@jimdo.com', '668-900-7566', '2023-02-05', '243-69-4667', '1985-08-06', 'Help Desk Technician', 'M', 'M'),
('Evan', 'Guiso', 'Blogpad', 'eguisonk@spotify.com', '542-383-0655', '2022-10-27', '241-96-2684', '1994-03-03', 'Research Associate', 'S', 'M'),
('Daniela', 'Jewster', 'Zoomcast', 'djewsternl@skype.com', '598-976-7237', '2022-12-31', '175-85-9429', '1985-06-22', 'Speech Pathologist', 'S', 'F'),
('Patrizius', 'Fumagalli', 'Quinu', 'pfumagallinm@time.com', '357-146-8284', '2023-08-24', '161-26-0897', '1988-02-10', 'Chief Design Engineer', 'S', 'M'),
('Marlo', 'MacHarg', 'Skiba', 'mmachargnn@ftc.gov', '936-599-4549', '2023-04-17', '342-54-8182', '1999-11-15', 'Cost Accountant', 'S', 'M'),
('Bernhard', 'Flarity', 'Voonte', 'bflarityno@mozilla.org', '941-606-5479', '2023-07-24', '212-25-0558', '1992-10-09', 'Professor', 'M', 'M'),
('Glyn', 'O''Murtagh', 'Trilia', 'gomurtaghnp@geocities.jp', '689-670-6317', '2023-03-25', '332-19-1196', '1982-07-27', 'Account Executive', 'S', 'F'),
('Corny', 'Biesty', 'Vidoo', 'cbiestynq@paginegialle.it', '980-982-6142', '2023-08-30', '578-77-5191', '1982-12-19', 'Software Test Engineer II', 'S', 'F'),
('Ambros', 'Dyka', 'Cogibox', 'adykanr@naver.com', '406-346-1706', '2023-03-04', '885-43-4327', '1981-06-12', 'Nuclear Power Engineer', 'S', 'M'),
('Fonzie', 'Treweela', 'Yozio', 'ftreweelans@chicagotribune.com', '873-610-4967', '2023-09-08', '486-94-0576', '1992-12-29', 'Sales Associate', 'M', 'M'),
('Colas', 'Stegell', 'Skiba', 'cstegellnt@bigcartel.com', '794-514-8924', '2023-07-01', '553-11-9774', '1990-01-20', 'Accountant III', 'M', 'M'),
('Paulita', 'Caudell', 'Divavu', 'pcaudellnu@hao123.com', '493-479-7283', '2022-11-22', '280-29-9401', '1993-05-09', 'Analyst Programmer', 'M', 'F'),
('Beret', 'Bice', 'Skipstorm', 'bbicenv@intel.com', '199-851-9716', '2023-06-17', '676-38-5770', '2001-04-13', 'Software Consultant', 'S', 'F'),
('Joachim', 'Weyman', 'Fanoodle', 'jweymannw@stumbleupon.com', '597-343-2076', '2023-02-12', '467-67-9057', '1999-05-30', 'Librarian', 'M', 'M'),
('Brok', 'Hacksby', 'Photospace', 'bhacksbynx@wordpress.org', '243-244-1194', '2023-03-28', '604-17-5670', '1999-10-06', 'Software Consultant', 'M', 'M'),
('Rufe', 'Shankland', 'Tagopia', 'rshanklandny@biblegateway.com', '566-948-5429', '2023-04-17', '406-42-9004', '1990-01-08', 'Health Coach IV', 'S', 'M'),
('Jacquelyn', 'Gaskins', 'Yata', 'jgaskinsnz@wikipedia.org', '651-851-6130', '2023-06-21', '889-49-5292', '2000-07-03', 'Research Nurse', 'M', 'F'),
('Minda', 'O''Heaney', 'Kwilith', 'moheaneyo0@dell.com', '210-264-5459', '2022-10-20', '832-55-6863', '1982-12-11', 'Information Systems Manager', 'S', 'F'),
('Jenine', 'Dowtry', 'Muxo', 'jdowtryo1@cpanel.net', '522-400-5530', '2023-09-02', '837-13-9824', '1997-03-18', 'Web Designer III', 'S', 'F'),
('Osborn', 'Marlor', 'Zoombox', 'omarloro2@weibo.com', '775-276-0964', '2022-12-19', '878-81-3383', '2001-03-13', 'Clinical Specialist', 'M', 'M'),
('North', 'Cade', 'Roomm', 'ncadeo3@imdb.com', '326-355-5493', '2022-11-30', '478-25-9054', '1985-11-11', 'Engineer I', 'M', 'M'),
('Quinlan', 'Postians', 'Jabbercube', 'qpostianso4@ucla.edu', '924-185-9917', '2023-03-31', '323-49-6345', '1994-05-10', 'Data Coordinator', 'S', 'M'),
('Karlens', 'Shotter', 'Meemm', 'kshottero5@usatoday.com', '937-479-1917', '2022-12-15', '126-10-5296', '1985-10-03', 'Web Developer IV', 'S', 'M'),
('Bronnie', 'Cases', 'Kamba', 'bcaseso6@typepad.com', '765-606-9107', '2023-01-24', '123-84-0341', '1982-01-01', 'Dental Hygienist', 'M', 'M'),
('Northrup', 'Labet', 'Aibox', 'nlabeto7@posterous.com', '160-844-9601', '2023-03-26', '186-11-5603', '1986-04-21', 'Recruiter', 'S', 'M'),
('Terri', 'Korn', 'Tagpad', 'tkorno8@vk.com', '700-606-3603', '2022-11-22', '638-06-4825', '1983-04-08', 'Administrative Officer', 'M', 'F'),
('Jolie', 'Simmonett', 'Shuffletag', 'jsimmonetto9@sohu.com', '670-822-2763', '2023-07-20', '367-25-3921', '2002-08-03', 'Account Coordinator', 'M', 'F'),
('Carmine', 'Vercruysse', 'Agivu', 'cvercruysseoa@msn.com', '497-523-3513', '2023-08-06', '438-68-9830', '1999-08-03', 'Nuclear Power Engineer', 'S', 'M'),
('Donella', 'Kingston', 'Agivu', 'dkingstonob@youku.com', '112-191-8431', '2023-03-19', '744-50-6694', '1987-08-28', 'Nuclear Power Engineer', 'S', 'F'),
('Aland', 'Skates', 'Midel', 'askatesoc@spiegel.de', '999-688-6141', '2022-10-30', '860-90-4242', '2001-06-20', 'Assistant Manager', 'S', 'M'),
('Breena', 'Cardoe', 'Fivechat', 'bcardoeod@techcrunch.com', '248-989-8106', '2022-11-01', '852-10-6962', '2002-06-30', 'Graphic Designer', 'S', 'F'),
('Jasen', 'Brockhurst', 'BlogXS', 'jbrockhurstoe@digg.com', '514-117-9242', '2022-11-28', '184-70-4820', '1997-07-07', 'Director of Sales', 'M', 'M'),
('Gwyn', 'Quelch', 'Quinu', 'gquelchof@printfriendly.com', '861-961-1741', '2023-03-22', '408-18-5269', '1986-06-15', 'Software Engineer IV', 'M', 'F'),
('Thoma', 'Everix', 'Kaymbo', 'teverixog@barnesandnoble.com', '314-943-0109', '2022-10-04', '588-99-5077', '1998-10-01', 'Financial Advisor', 'S', 'M'),
('Chaddie', 'Linden', 'Twitterbridge', 'clindenoh@so-net.ne.jp', '385-631-8947', '2023-09-13', '835-40-9138', '1989-03-23', 'Professor', 'S', 'M'),
('Teodoro', 'Jeremiah', 'Skinix', 'tjeremiahoi@cafepress.com', '546-553-7320', '2022-11-09', '234-67-1403', '1999-04-30', 'Human Resources Assistant II', 'M', 'M'),
('Devlin', 'Antosik', 'Feednation', 'dantosikoj@blinklist.com', '505-249-5007', '2023-02-23', '675-86-8777', '1981-07-30', 'Human Resources Manager', 'S', 'M'),
('Ly', 'Longfut', 'Meedoo', 'llongfutok@naver.com', '826-377-6997', '2023-02-12', '340-47-9945', '1985-09-01', 'Chief Design Engineer', 'S', 'M'),
('Remington', 'Sich', 'Rhyloo', 'rsichol@ocn.ne.jp', '253-831-5479', '2022-11-30', '208-47-6215', '1981-10-25', 'Account Representative I', 'S', 'M'),
('Dennie', 'Eskrigg', 'Brainsphere', 'deskriggom@dion.ne.jp', '621-901-2674', '2023-09-10', '711-28-6915', '1983-11-20', 'Desktop Support Technician', 'S', 'M'),
('Alleyn', 'Youdell', 'Wikivu', 'ayoudellon@wunderground.com', '947-168-7181', '2022-12-07', '122-41-3250', '1988-04-05', 'Project Manager', 'M', 'M'),
('Katee', 'Wavish', 'Dazzlesphere', 'kwavishoo@army.mil', '620-686-9750', '2022-11-17', '498-43-7942', '1999-07-22', 'Marketing Manager', 'M', 'F'),
('Uriah', 'Deam', 'Zoovu', 'udeamop@blogspot.com', '363-124-0974', '2023-06-03', '824-52-8712', '1989-01-31', 'Programmer Analyst II', 'M', 'M'),
('Edith', 'Klawi', 'Mudo', 'eklawioq@hhs.gov', '766-262-8019', '2022-10-14', '633-73-8628', '1986-01-10', 'Software Test Engineer I', 'S', 'F'),
('Siouxie', 'MacGraith', 'Riffpedia', 'smacgraithor@rediff.com', '554-249-7512', '2022-11-03', '331-90-3662', '1998-01-09', 'Web Designer IV', 'M', 'F'),
('Burk', 'Hovell', 'Voonte', 'bhovellos@nbcnews.com', '618-449-2965', '2022-12-20', '144-47-1043', '1999-04-05', 'Media Manager II', 'S', 'M'),
('Maisie', 'Macbeth', 'Kayveo', 'mmacbethot@mozilla.org', '234-311-8213', '2022-12-04', '352-44-9950', '1996-11-10', 'Quality Control Specialist', 'M', 'F'),
('Arlina', 'Whitsun', 'Dabvine', 'awhitsunou@unicef.org', '904-943-6339', '2023-07-31', '792-83-8494', '2001-12-21', 'Senior Developer', 'S', 'F'),
('Darcy', 'Ioan', 'Realmix', 'dioanov@google.pl', '854-555-3005', '2023-08-07', '223-41-7575', '1995-01-15', 'Professor', 'M', 'M'),
('Joete', 'Stolze', 'Yoveo', 'jstolzeow@last.fm', '190-400-2460', '2023-02-02', '177-73-0858', '1984-06-09', 'Payment Adjustment Coordinator', 'M', 'F'),
('Padget', 'Curtayne', 'Oyoloo', 'pcurtayneox@jimdo.com', '196-390-7317', '2023-02-04', '280-87-9416', '2001-10-15', 'Staff Scientist', 'S', 'M'),
('Angus', 'I''anson', 'Zoomcast', 'aiansonoy@home.pl', '967-674-1159', '2022-11-21', '176-77-4694', '1997-01-17', 'Assistant Professor', 'S', 'M'),
('Guilbert', 'Minard', 'Jabbercube', 'gminardoz@t-online.de', '559-662-5429', '2023-05-18', '743-68-9772', '1985-05-24', 'Quality Engineer', 'M', 'M'),
('Raynor', 'Grishechkin', 'Fiveclub', 'rgrishechkinp0@zimbio.com', '680-866-1967', '2022-11-26', '643-75-9923', '1987-01-15', 'Systems Administrator IV', 'S', 'M'),
('Bevin', 'Elsworth', 'Topiczoom', 'belsworthp1@bing.com', '760-528-3776', '2023-01-16', '730-90-4925', '1995-07-05', 'Health Coach I', 'M', 'M'),
('Alissa', 'Limbrick', 'Eamia', 'alimbrickp2@indiatimes.com', '235-301-5084', '2022-12-05', '117-42-6429', '2000-08-16', 'Design Engineer', 'S', 'F'),
('Raffaello', 'Salack', 'Gigazoom', 'rsalackp3@wikimedia.org', '436-479-6970', '2023-09-11', '202-77-0269', '1985-04-02', 'Chief Design Engineer', 'S', 'M'),
('Rickie', 'Skakunas', 'Blognation', 'rskakunasp4@xing.com', '421-514-9248', '2022-10-21', '188-18-3884', '1998-01-20', 'Human Resources Assistant IV', 'S', 'M'),
('Huntlee', 'Pressman', 'Oozz', 'hpressmanp5@bigcartel.com', '621-244-4398', '2022-11-22', '763-51-4337', '1983-10-28', 'Safety Technician IV', 'M', 'M'),
('Culver', 'Rathjen', 'Centimia', 'crathjenp6@nps.gov', '170-146-6733', '2023-02-07', '465-52-6361', '1984-12-01', 'Occupational Therapist', 'M', 'M'),
('Pauletta', 'Mertgen', 'Fivebridge', 'pmertgenp7@tuttocitta.it', '224-380-9225', '2023-07-05', '357-41-6589', '1999-08-17', 'Clinical Specialist', 'M', 'F'),
('Jeffy', 'Hairon', 'Feedspan', 'jhaironp8@bbc.co.uk', '941-298-1050', '2023-03-25', '584-32-2880', '1995-05-31', 'Editor', 'M', 'M'),
('Burr', 'Billyeald', 'Pixoboo', 'bbillyealdp9@google.com.au', '757-878-7315', '2022-12-16', '868-98-0219', '1989-01-24', 'Sales Associate', 'S', 'M'),
('Anastasia', 'Skeates', 'Fadeo', 'askeatespa@blog.com', '220-677-3184', '2022-12-17', '258-84-9796', '1985-04-29', 'Sales Representative', 'M', 'F'),
('Gaultiero', 'McDonagh', 'Meeveo', 'gmcdonaghpb@fc2.com', '549-440-8033', '2023-02-04', '141-82-7077', '1987-06-18', 'Occupational Therapist', 'S', 'M'),
('Lind', 'Northrop', 'Gabspot', 'lnorthroppc@mozilla.com', '953-246-1674', '2023-07-31', '198-74-7396', '1984-11-05', 'Civil Engineer', 'S', 'M'),
('Doria', 'Middler', 'Realcube', 'dmiddlerpd@cloudflare.com', '827-971-1206', '2023-01-24', '889-47-6025', '2002-05-06', 'Project Manager', 'S', 'F'),
('Rina', 'Tallyn', 'Zooveo', 'rtallynpe@eventbrite.com', '953-717-4025', '2023-06-21', '283-96-6938', '1995-06-17', 'Teacher', 'M', 'F'),
('Brigg', 'Beaman', 'Voomm', 'bbeamanpf@purevolume.com', '809-676-2497', '2022-10-13', '860-91-9806', '1996-06-03', 'Structural Engineer', 'S', 'M'),
('Jeramey', 'Hanner', 'Realblab', 'jhannerpg@ihg.com', '113-521-1584', '2022-09-27', '773-07-1698', '1982-03-27', 'Design Engineer', 'S', 'M'),
('Durante', 'Gowrich', 'Browsezoom', 'dgowrichph@topsy.com', '636-606-2236', '2022-11-07', '106-46-0279', '2002-02-10', 'Analyst Programmer', 'M', 'M'),
('Vidovic', 'Myatt', 'Wordware', 'vmyattpi@mapy.cz', '580-168-8220', '2023-02-27', '334-29-0444', '1997-06-14', 'Structural Engineer', 'S', 'M'),
('Regine', 'Bucklan', 'Tekfly', 'rbucklanpj@aol.com', '657-212-8487', '2023-05-02', '720-86-9168', '1997-12-07', 'Research Associate', 'S', 'F'),
('Ritchie', 'McCroary', 'Lazzy', 'rmccroarypk@live.com', '723-796-2692', '2023-04-26', '497-80-0127', '1992-02-03', 'Software Consultant', 'M', 'M'),
('Almire', 'Greatbatch', 'Vidoo', 'agreatbatchpl@biglobe.ne.jp', '481-365-2516', '2022-12-01', '384-82-1199', '1982-09-10', 'Physical Therapy Assistant', 'S', 'F'),
('Desdemona', 'Ormes', 'Divanoodle', 'dormespm@goodreads.com', '239-263-8904', '2023-05-17', '235-83-6426', '1981-08-15', 'Database Administrator IV', 'M', 'F'),
('Lodovico', 'Jurgenson', 'Shufflebeat', 'ljurgensonpn@mysql.com', '320-470-4237', '2023-07-24', '398-49-8552', '1993-07-03', 'Analyst Programmer', 'S', 'M'),
('Pierrette', 'Kiloh', 'Blogtags', 'pkilohpo@about.com', '736-660-8081', '2023-07-03', '371-66-2827', '1990-10-18', 'Web Designer II', 'S', 'F'),
('Josias', 'Trahar', 'Katz', 'jtraharpp@dell.com', '878-114-0236', '2023-09-08', '550-72-8116', '1997-01-14', 'Community Outreach Specialist', 'M', 'M'),
('Maribelle', 'Shatliffe', 'Kazio', 'mshatliffepq@ow.ly', '167-705-5751', '2023-04-07', '276-02-1627', '1983-12-26', 'Food Chemist', 'M', 'F'),
('Normie', 'Stedall', 'Realcube', 'nstedallpr@vimeo.com', '675-604-0440', '2023-01-19', '811-64-2532', '1991-12-08', 'Social Worker', 'M', 'M'),
('Codi', 'Vaugham', 'Ntag', 'cvaughamps@twitpic.com', '269-911-6542', '2023-09-10', '535-76-0338', '1997-04-15', 'Budget/Accounting Analyst IV', 'M', 'M'),
('Olvan', 'Mc Ilwrick', 'Skilith', 'omcilwrickpt@goodreads.com', '239-121-7750', '2023-04-21', '651-94-5480', '2000-04-30', 'General Manager', 'M', 'M'),
('Amalie', 'Olczak', 'Fliptune', 'aolczakpu@hp.com', '226-334-9543', '2023-04-12', '135-56-6548', '2002-06-17', 'Senior Developer', 'M', 'F'),
('Locke', 'Shoulders', 'Skyble', 'lshoulderspv@sina.com.cn', '827-324-8899', '2023-03-26', '854-08-7652', '1983-09-13', 'Nurse', 'M', 'M'),
('Rafaello', 'Daton', 'Buzzshare', 'rdatonpw@epa.gov', '883-976-4427', '2023-02-06', '895-14-2613', '1999-01-30', 'General Manager', 'S', 'M'),
('Ninette', 'Gartin', 'Rhycero', 'ngartinpx@about.com', '852-337-6020', '2023-07-08', '448-22-2144', '1997-02-26', 'Sales Representative', 'M', 'F'),
('Louella', 'Brent', 'Eare', 'lbrentpy@jiathis.com', '280-415-0624', '2023-04-29', '531-18-0802', '1994-09-09', 'Senior Developer', 'M', 'F'),
('Zack', 'Tweedle', 'Shuffledrive', 'ztweedlepz@spotify.com', '568-711-2149', '2022-10-14', '227-51-6765', '1985-09-21', 'Engineer I', 'M', 'M'),
('Constancy', 'Enderlein', 'Divavu', 'cenderleinq0@dedecms.com', '920-898-9853', '2023-04-27', '474-56-6068', '1988-08-29', 'Physical Therapy Assistant', 'M', 'F'),
('Caritta', 'Stolting', 'Rhynoodle', 'cstoltingq1@adobe.com', '913-281-2273', '2022-11-03', '345-61-8462', '1992-04-22', 'Office Assistant II', 'S', 'F'),
('Mirella', 'Zmitrovich', 'Abata', 'mzmitrovichq2@de.vu', '755-675-9596', '2023-01-06', '855-39-4609', '1997-03-23', 'VP Marketing', 'M', 'F'),
('Vivie', 'Davson', 'Cogibox', 'vdavsonq3@a8.net', '776-356-0897', '2023-07-30', '471-93-6996', '1985-07-16', 'Sales Associate', 'S', 'F'),
('Odille', 'Bursnall', 'Skyvu', 'obursnallq4@sbwire.com', '281-917-7111', '2022-11-29', '144-22-9857', '1990-01-26', 'Account Representative IV', 'S', 'F'),
('Neille', 'Vanyashkin', 'Realfire', 'nvanyashkinq5@whitehouse.gov', '771-591-8435', '2023-06-11', '287-65-7426', '1983-07-29', 'Senior Developer', 'S', 'F'),
('Mort', 'Fearnill', 'Devcast', 'mfearnillq6@wufoo.com', '867-391-1361', '2023-09-06', '744-25-9079', '1996-07-16', 'Senior Cost Accountant', 'M', 'M'),
('Adriaens', 'Waterhous', 'Demimbu', 'awaterhousq7@chronoengine.com', '265-346-8840', '2023-03-08', '118-66-8068', '1997-10-31', 'VP Product Management', 'M', 'F'),
('Gilemette', 'Gossage', 'Photofeed', 'ggossageq8@edublogs.org', '130-167-2195', '2023-08-11', '841-93-2604', '2000-06-13', 'Pharmacist', 'S', 'F'),
('Karoline', 'Haws', 'Mycat', 'khawsq9@harvard.edu', '593-411-0546', '2023-01-01', '101-73-7400', '2000-12-11', 'Programmer Analyst I', 'S', 'F'),
('Dorita', 'Pitkaithly', 'Devcast', 'dpitkaithlyqa@uiuc.edu', '268-837-5347', '2022-12-25', '601-91-9151', '1991-05-21', 'Operator', 'S', 'F'),
('Kelila', 'McBean', 'Topiczoom', 'kmcbeanqb@tripadvisor.com', '349-604-8423', '2023-09-11', '617-54-1704', '1992-03-28', 'GIS Technical Architect', 'M', 'F'),
('Christye', 'Gribbon', 'Buzzshare', 'cgribbonqc@devhub.com', '597-932-5644', '2023-04-01', '133-58-3506', '1991-11-21', 'Design Engineer', 'S', 'F'),
('Carie', 'Dignall', 'Rhyzio', 'cdignallqd@gmpg.org', '451-657-7206', '2023-05-18', '179-62-4552', '1994-04-18', 'Sales Associate', 'S', 'F'),
('Cliff', 'McDavitt', 'Livepath', 'cmcdavittqe@hexun.com', '831-196-1037', '2023-06-08', '185-19-7111', '1990-10-05', 'Social Worker', 'S', 'M'),
('Geordie', 'Kimbell', 'Centizu', 'gkimbellqf@nyu.edu', '743-599-8722', '2022-10-06', '800-38-7095', '1981-05-02', 'Project Manager', 'M', 'M'),
('Win', 'Corryer', 'Eare', 'wcorryerqg@dmoz.org', '216-182-2375', '2022-11-11', '710-89-6363', '1989-06-02', 'Sales Associate', 'S', 'M'),
('Alissa', 'Santello', 'Realfire', 'asantelloqh@who.int', '539-948-5475', '2023-03-06', '225-02-4531', '1994-02-16', 'Analyst Programmer', 'M', 'F'),
('Ketty', 'Derle', 'Chatterpoint', 'kderleqi@twitpic.com', '334-610-7069', '2023-02-07', '873-71-8845', '1996-01-15', 'VP Accounting', 'M', 'F'),
('Rey', 'Djurisic', 'Skippad', 'rdjurisicqj@google.com.au', '650-718-0706', '2023-06-29', '713-29-6048', '1996-12-15', 'Operator', 'S', 'F'),
('Davide', 'Musla', 'Eadel', 'dmuslaqk@google.es', '348-125-4833', '2023-04-08', '116-17-6784', '2002-02-08', 'Web Designer IV', 'S', 'M'),
('Jock', 'Hussey', 'Voonder', 'jhusseyql@bing.com', '250-153-5272', '2023-07-02', '209-41-9374', '1997-07-05', 'Computer Systems Analyst I', 'S', 'M'),
('Monro', 'Demke', 'Riffpedia', 'mdemkeqm@sbwire.com', '314-407-0976', '2022-10-05', '633-82-7483', '1983-08-21', 'Administrative Officer', 'S', 'M'),
('Christiano', 'Aldrin', 'Skaboo', 'caldrinqn@berkeley.edu', '908-787-0491', '2023-07-17', '403-78-9988', '2001-03-27', 'Environmental Tech', 'S', 'M'),
('Gweneth', 'Northidge', 'Jabbertype', 'gnorthidgeqo@gravatar.com', '539-461-1358', '2022-12-12', '643-94-9410', '1993-11-15', 'Automation Specialist II', 'S', 'F'),
('Fleur', 'Mapplebeck', 'Skinte', 'fmapplebeckqp@weibo.com', '201-260-7261', '2022-12-31', '630-73-2096', '1997-08-08', 'Quality Control Specialist', 'S', 'F'),
('Delia', 'Beetham', 'Thoughtstorm', 'dbeethamqq@microsoft.com', '176-637-0938', '2022-10-27', '664-24-0903', '1992-11-18', 'Quality Engineer', 'M', 'F'),
('Reggie', 'Maren', 'Dynabox', 'rmarenqr@nhs.uk', '182-589-1915', '2022-11-21', '458-70-6729', '1997-08-20', 'GIS Technical Architect', 'S', 'M'),
('Karry', 'McGilbon', 'Edgewire', 'kmcgilbonqs@msn.com', '338-338-7393', '2022-11-22', '789-83-5212', '1991-08-09', 'Senior Quality Engineer', 'M', 'F'),
('Renie', 'Catenot', 'Eadel', 'rcatenotqt@lulu.com', '926-403-3723', '2023-01-22', '718-54-6948', '1990-09-14', 'Clinical Specialist', 'S', 'F'),
('Fairlie', 'Ineson', 'Flipopia', 'finesonqu@hatena.ne.jp', '689-107-7427', '2022-10-10', '502-26-6404', '1985-04-13', 'Product Engineer', 'M', 'M'),
('Ardella', 'Petcher', 'Twitterbridge', 'apetcherqv@unesco.org', '654-725-2384', '2022-10-29', '165-86-5127', '1992-12-26', 'Web Developer I', 'M', 'F'),
('Grove', 'Spreull', 'Gigabox', 'gspreullqw@uol.com.br', '483-919-1787', '2023-05-25', '408-29-5893', '1998-02-16', 'Staff Scientist', 'M', 'M'),
('Coleman', 'Dacres', 'Wordtune', 'cdacresqx@lycos.com', '404-668-1730', '2023-09-15', '665-06-3229', '1990-05-12', 'Marketing Assistant', 'M', 'M'),
('Eleonore', 'O''Connell', 'Lazz', 'eoconnellqy@columbia.edu', '842-803-8178', '2023-03-07', '839-92-8228', '1998-03-09', 'Web Designer II', 'M', 'F'),
('Nathanil', 'Turnell', 'Yakidoo', 'nturnellqz@pinterest.com', '343-763-3237', '2023-06-14', '411-73-8837', '1994-08-12', 'Mechanical Systems Engineer', 'S', 'M'),
('Xaviera', 'Larne', 'Wikizz', 'xlarner0@ca.gov', '202-759-0676', '2023-05-20', '534-33-8839', '1999-12-24', 'Professor', 'S', 'F'),
('Miof mela', 'Frisby', 'Babbleset', 'mfrisbyr1@webeden.co.uk', '930-167-9745', '2022-09-22', '296-44-5796', '1983-09-05', 'Executive Secretary', 'M', 'F'),
('Artemis', 'Kilban', 'Meembee', 'akilbanr2@wsj.com', '327-132-8243', '2022-09-18', '878-85-0186', '1985-01-06', 'Financial Analyst', 'M', 'M'),
('Fremont', 'Edmans', 'Tavu', 'fedmansr3@tiny.cc', '582-698-2766', '2023-01-17', '188-25-3451', '1987-10-20', 'Human Resources Assistant I', 'S', 'M'),
('Porter', 'McKimmey', 'Katz', 'pmckimmeyr4@smh.com.au', '826-231-6774', '2023-04-15', '197-88-0623', '1981-08-27', 'Media Manager III', 'M', 'M'),
('Thorin', 'Ghidelli', 'Roomm', 'tghidellir5@slideshare.net', '167-684-0384', '2023-03-02', '862-12-1705', '1982-08-13', 'Web Developer II', 'M', 'M'),
('Aime', 'Gurley', 'Voonyx', 'agurleyr6@netscape.com', '368-414-1327', '2023-04-01', '204-91-6902', '1998-07-02', 'Senior Cost Accountant', 'M', 'F'),
('Symon', 'Ivanets', 'Edgeify', 'sivanetsr7@studiopress.com', '370-714-3112', '2023-06-12', '276-51-1171', '1982-04-21', 'Design Engineer', 'S', 'M'),
('Fayette', 'Crame', 'Eare', 'fcramer8@phpbb.com', '464-278-7871', '2022-10-22', '726-61-2336', '1995-02-03', 'VP Sales', 'S', 'F'),
('Lida', 'Boyle', 'Skinte', 'lboyler9@nps.gov', '853-625-0038', '2023-09-11', '729-54-9072', '1983-05-06', 'Business Systems Development Analyst', 'M', 'F'),
('Sven', 'Matthewson', 'Tagchat', 'smatthewsonra@artisteer.com', '121-694-3784', '2022-12-15', '755-69-6733', '1986-02-21', 'Cost Accountant', 'S', 'M'),
('Frayda', 'Germain', 'Eimbee', 'fgermainrb@archive.org', '507-882-6641', '2022-11-26', '346-38-6977', '1995-01-18', 'Paralegal', 'M', 'F'),
('Dalia', 'Iacapucci', 'Vinte', 'diacapuccirc@craigslist.org', '856-620-1392', '2023-01-28', '353-03-6805', '1981-02-26', 'Administrative Officer', 'S', 'F'),
('Hurleigh', 'Gooch', 'Dabshots', 'hgoochrd@scientificamerican.com', '370-808-0802', '2023-08-05', '182-80-3852', '1999-11-12', 'Dental Hygienist', 'S', 'M'),
('Carleen', 'Partlett', 'Thoughtbeat', 'cpartlettre@reverbnation.com', '866-621-0238', '2022-11-24', '276-02-3189', '1991-01-03', 'Account Coordinator', 'S', 'F'),
('Fletcher', 'Cuttell', 'Oyondu', 'fcuttellrf@auda.org.au', '373-921-0637', '2023-06-14', '432-01-4630', '1988-09-15', 'Sales Representative', 'S', 'M'),
('Jacquelin', 'Cowern', 'Brainbox', 'jcowernrg@newsvine.com', '500-530-2348', '2023-02-23', '721-59-3153', '1985-03-28', 'Accounting Assistant I', 'M', 'F'),
('Leroi', 'Batecok', 'Zoombox', 'lbatecokrh@github.io', '599-850-3514', '2022-11-03', '118-12-7482', '1982-01-05', 'Computer Systems Analyst III', 'M', 'M'),
('Mamie', 'Sylvaine', 'Gabtype', 'msylvaineri@sohu.com', '168-656-8063', '2023-03-01', '318-89-2118', '1992-12-26', 'Geological Engineer', 'M', 'F'),
('Erroll', 'Greenset', 'Topiczoom', 'egreensetrj@engadget.com', '213-442-3474', '2023-02-27', '480-77-7068', '1998-01-19', 'Account Coordinator', 'M', 'M'),
('Alex', 'Ast', 'Thoughtsphere', 'aastrk@1und1.de', '759-139-0236', '2022-11-07', '733-89-1168', '1989-08-11', 'Senior Developer', 'S', 'F'),
('Rickey', 'Pioli', 'Ntag', 'rpiolirl@cnet.com', '557-506-6880', '2023-07-14', '885-14-4872', '1997-02-21', 'Librarian', 'M', 'M'),
('Cindi', 'Waldie', 'Skibox', 'cwaldierm@nymag.com', '273-654-7523', '2022-11-17', '359-95-4617', '1991-05-22', 'Technical Writer', 'M', 'F'),
('Obadias', 'Gamage', 'Skimia', 'ogamagern@salon.com', '723-571-8438', '2023-04-12', '150-23-4026', '1985-04-03', 'Executive Secretary', 'M', 'M'),
('Bogey', 'Treneer', 'Zoombeat', 'btreneerro@phpbb.com', '524-265-5528', '2023-09-03', '158-04-5313', '1996-08-27', 'Marketing Manager', 'S', 'M'),
('Ailbert', 'McGaugie', 'Devbug', 'amcgaugierp@sourceforge.net', '919-781-6272', '2023-03-11', '335-36-6116', '1985-03-07', 'Legal Assistant', 'M', 'M'),
('Floris', 'Gildroy', 'Dabshots', 'fgildroyrq@wikia.com', '447-260-7961', '2022-10-08', '127-71-8988', '1990-08-14', 'Cost Accountant', 'S', 'F'),
('Jessy', 'Eaken', 'Edgeify', 'jeakenrr@mysql.com', '514-219-6869', '2023-04-08', '196-42-7941', '1985-10-01', 'Dental Hygienist', 'M', 'F');
GO

CREATE PROCEDURE PA_users_create 
AS
BEGIN
    DECLARE @user_first_name VARCHAR(250)
    DECLARE @user_last_name VARCHAR(250)
    DECLARE @user_full_name VARCHAR(250)
    DECLARE @user_type NVARCHAR(15)
    DECLARE @user_company_name NVARCHAR(255)
    DECLARE @user_email NVARCHAR(256)
    DECLARE @user_phone_number NVARCHAR(25)
    DECLARE @user_modified_date DATETIME
    DECLARE @RandomValue FLOAT

		declare cursor_mock Cursor 
			for select first_name, last_name,company_name, email_address, phone, date_time from MOCK_DATA3
		--Abrimos el cursor:
		open cursor_mock
		--navegamos en el cursor		--usamos into para cargar los datos del cursor a las variables que creamos
		fetch next from cursor_mock into @user_first_name, @user_last_name,@user_company_name,@user_email,@user_phone_number,@user_modified_date
		while @@FETCH_STATUS = 0
		BEGIN
			 SET @RandomValue = RAND()
			 SET @user_full_name = @user_first_name + ' ' + @user_last_name
			SET @user_type =
				(CASE
					WHEN (@RandomValue <= 0.3333) THEN 'T'
					WHEN (@RandomValue <= 0.6666) THEN 'C'
					ELSE 'I'
				END)
			INSERT INTO users.users (user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) 
			VALUES (@user_full_name, @user_type, @user_company_name, @user_email, @user_phone_number, @user_modified_date)
			fetch next from cursor_mock into @user_first_name, @user_last_name,@user_company_name,@user_email,@user_phone_number,@user_modified_date
		END;
		close cursor_mock
		--Liberamos el cursor:
		deallocate cursor_mock
    END
GO

CREATE PROCEDURE PA_user_profiles 
AS
BEGIN
	
	DECLARE @uspro_national_id nvarchar (20)
    DECLARE @uspro_birth_date DATE
    DECLARE @uspro_job_title nvarchar (50)
    DECLARE @uspro_marital_status nchar(1)
    DECLARE @uspro_gender nchar(1)
    DECLARE @uspro_addr_id int
	DECLARE @uspro_user_id int
	DECLARE @id INT

	SET @id = 1;
		declare user_profiles Cursor 
		for select national_id, birth_date,job_title, marital_status, gender from MOCK_DATA3
		--Abrimos el cursor:
		open user_profiles
		--navegamos en el cursor		--usamos into para cargar los datos del cursor a las variables que creamos
		fetch next from user_profiles into @uspro_national_id,@uspro_birth_date,@uspro_job_title,@uspro_marital_status,@uspro_gender
		while @@FETCH_STATUS = 0
		BEGIN
			set @uspro_addr_id = (SELECT TOP 1 addr_id FROM Master.address ORDER BY NEWID());
			INSERT INTO users.user_profiles (uspro_national_id, uspro_birth_date, uspro_job_title, uspro_marital_status, uspro_gender, uspro_addr_id, uspro_user_id)
			VALUES (@uspro_national_id,@uspro_birth_date,@uspro_job_title,@uspro_marital_status,@uspro_gender,@uspro_addr_id,@id)
			fetch next from user_profiles into @uspro_national_id,@uspro_birth_date,@uspro_job_title,@uspro_marital_status,@uspro_gender
			set @id = @id + 1;
		END;

		close user_profiles
		--Liberamos el cursor:
		deallocate user_profiles
    END
GO

CREATE PROCEDURE PA_work_orders_y_work_orders_detail 
AS
BEGIN
	DECLARE @woro_id int
    DECLARE @woro_date DATE
	DECLARE @wode_status nvarchar(15)
	DECLARE @wode_status2 nvarchar(15)
	DECLARE @wode_start_date DATE
	DECLARE @woro_user_id INT 
	DECLARE @wode_notes nvarchar(255)
	DECLARE @DATE DATE
	DECLARE @RandomValue FLOAT
	DECLARE @C INT
	DECLARE @EMPLOYEE INT
	DECLARE @FACI_ID INT

	SET @woro_id = 1;
	SET @C = 1;
		declare user_worker Cursor 
		for 	select user_id,user_full_name from Users.users where users.user_type = 'C'
		--Abrimos el cursor:
		open user_worker
		--navegamos en el cursor		--usamos into para cargar los datos del cursor a las variables que creamos
		fetch next from user_worker into @woro_user_id,@wode_notes
		while @@FETCH_STATUS = 0
		BEGIN
	
			SET @wode_start_date = GETDATE()- RAND() * 1000+1
			SET @RandomValue = RAND()
				SET @wode_status =
				(CASE
					WHEN (@RandomValue <= 0.3333) THEN 'OPEN'
					WHEN (@RandomValue <= 0.6666) THEN 'CLOSED'
					ELSE 'CANCELLED'
				END)

				SET @wode_status2 =
				(CASE 
					WHEN @wode_status = 'OPEN' THEN 'INPROGRESS'
					WHEN @wode_status = 'CLOSED' THEN 'COMPLETED'
					WHEN @wode_status = 'CANCELLED' THEN 'CANCELLED'
				END)
			SET @FACI_ID = (SELECT Top 1 Facilities.faci_id
						FROM Users.users,Hotel.Facilities
						WHERE @woro_user_id = Hotel.Facilities.faci_user_id)

			SET IDENTITY_INSERT HR.work_orders ON;
			Insert into HR.work_orders (woro_id,woro_date, woro_status, woro_user_id) values (@woro_id,@wode_start_date,@wode_status,@woro_user_id);
			SET IDENTITY_INSERT HR.work_orders OFF;

			SET @DATE = DATEADD(DAY,7,@wode_start_date);
			SET @EMPLOYEE = (SELECT TOP 1 emp_id FROM HR.employee ORDER BY NEWID());
			Insert into HR.work_order_detail (wode_task_name, wode_status, wode_start_date, wode_end_date, wode_notes, wode_emp_id, wode_seta_id, wode_faci_id, wode_woro_id) values ('work detail' + CAST(@C AS VARCHAR(10)) , @wode_status2, @wode_start_date, @DATE, @wode_notes, @EMPLOYEE, '21',@FACI_ID,@woro_id);



			fetch next from user_worker into @woro_user_id,@wode_notes
			set @woro_id = @woro_id + 1;
		END;
		close user_worker
		--Liberamos el cursor:
		deallocate user_worker
    END
GO

----------------------------------------------------------
CREATE PROCEDURE PA_RESTO 
AS
BEGIN
	
	DECLARE @orme_id int
	DECLARE @numero_menu int
	DECLARE @fecha_order_menus date 
	DECLARE @total_items int
	
	DECLARE @tipo_pago varchar(2)
	DECLARE @card_number varchar(25)
	DECLARE @pagado varchar(1)
	DECLARE @pedido_usuario int
	DECLARE @precio_item float
	DECLARE @id_usuario int	
    DECLARE @contador int	
	DECLARE @cant int
	DECLARE @RandomValue FLOAT
	DECLARE @RANDY INT
	DECLARE @PRE FLOAT
	DECLARE @prod int
	DECLARE @total float
	
		
	
	SET @orme_id = 1
	
		declare resto_cursor Cursor 
		for 	select user_id from Users.users where users.user_type = 'C'
		--Abrimos el cursor:
		open resto_cursor
		--navegamos en el cursor		--usamos into para cargar los datos del cursor a las variables que creamos
		fetch next from resto_cursor into @id_usuario
		while @@FETCH_STATUS = 0
		BEGIN
	
			SET @fecha_order_menus = GETDATE()- RAND() * 1000+1
			SET @RandomValue = RAND()
					SET @tipo_pago =
					(CASE
						WHEN (@RandomValue <= 0.3333) THEN 'QR'
						WHEN (@RandomValue <= 0.6666) THEN 'TJ'
						ELSE 'EF'
					END)

			
					SET @pagado =
					(CASE
						WHEN (@RandomValue <= 0.8888) THEN 'Y'
						ELSE 'N'
					END)

				
			set @total_items = RAND() * 3 + 1
			set @card_number = CAST((FLOOR(RAND() * 9000) + 1000) AS VARCHAR(4)) + '-' + CAST((FLOOR(RAND() * 9000) + 1000) AS VARCHAR(4)) + '-' + CAST((FLOOR(RAND() * 9000) + 1000) AS VARCHAR(4)) + '-' + CAST((FLOOR(RAND() * 9000) + 1000) AS VARCHAR(4))
			SET IDENTITY_INSERT resto.order_menus ON;
			INSERT INTO resto.order_menus (orme_id, orme_order_number, orme_order_date, orme_total_item, orme_total_discount, orme_total_amount, orme_pay_type, orme_cardnumber, orme_is_paid, orme_modified_date, orme_user_id)
			VALUES (@orme_id, 'MENUS#' + CAST(@orme_id AS varchar(10)), @fecha_order_menus, 0, 0, 0, @tipo_pago, @card_number, @pagado, GETDATE(), @id_usuario)
			SET IDENTITY_INSERT resto.order_menus OFF;
			
			SET @contador = 0
			SET @RANDY = FLOOR(RAND()*(4-1)+1)
			while(@contador < @RANDY)
					BEGIN
						SET @cant = FLOOR(RAND()*(4-1)+1)
						SET @prod = (SELECT TOP 1 reme_id FROM resto.resto_menus ORDER BY NEWID())
						SET @PRE = (SELECT TOP 1 reme_price FROM resto.resto_menus WHERE @prod = resto_menus.reme_id ORDER BY NEWID())
						INSERT INTO resto.order_menu_detail (orme_price, orme_qty, orme_discount,omde_orme_id, omde_reme_id)
						VALUES(@PRE, @cant, 0, @orme_id, @prod)
			
						SET	@total = @total + (@cant	 * @PRE)	
						SET  @total_items = @total_items + @cant
						SET @contador = @contador + 1
					END;
			
			SET @contador = 0
			UPDATE resto.order_menus SET orme_total_item = @total_items WHERE order_menus.orme_id = @orme_id
			UPDATE resto.order_menus SET orme_total_amount = @total WHERE order_menus.orme_id = @orme_id   
			SET @total_items = 0
		
			fetch next from resto_cursor into @id_usuario
			
			set @orme_id = @orme_id + 1

		
		END
			close resto_cursor
			--Liberamos el cursor:
			deallocate resto_cursor
END
GO

CREATE PROCEDURE booking_order_detail
AS
BEGIN
	
	DECLARE @boor_id int
	DECLARE @boor_order_number VARCHAR(50)
	DECLARE @boor_order_date DATE
	DECLARE @boor_total_room  INT
	DECLARE @boor_total_ammount MONEY
	DECLARE @boor_pay_type VARCHAR(2)
	DECLARE @boor_is_paid VARCHAR(2)
	DECLARE @boor_cardnumber VARCHAR(50)
	DECLARE @boor_hotel_id INT
	DECLARE @boor_down_payment INT
	DECLARE @RandomValue FLOAT
	DECLARE @id_usuario int
	DECLARE @contador int
	DECLARE @RANDY INT
	DECLARE @DATE DATE
	DECLARE @ADULTS INT
	DECLARE @KIDS INT
	DECLARE @facilities_id int
	DECLARE @PRICE INT
	declare @extras float
	declare @el_q_incre int

	
		SET @boor_id = 1
		set @el_q_incre = 1
	
		declare resto_cursor Cursor 
		for 	select user_id from Users.users where users.user_type = 'C'
		--Abrimos el cursor:
		open resto_cursor
		--navegamos en el cursor		--usamos into para cargar los datos del cursor a las variables que creamos
		fetch next from resto_cursor into @id_usuario
		while @@FETCH_STATUS = 0
		BEGIN
		SET @boor_order_date = GETDATE()- RAND() * 1000+1
		set  @boor_down_payment =RAND() * 500 + 1 


			SET @RandomValue = RAND()
					SET @boor_pay_type =
					(CASE
						WHEN (@RandomValue <= 0.3333) THEN 'CR'
						WHEN (@RandomValue <= 0.6666) THEN 'C'
						ELSE 'D'
					END)

			
					SET @boor_is_paid =
					(CASE
						WHEN (@RandomValue <= 0.3333) THEN 'DP'
						WHEN (@RandomValue <= 0.6666) THEN 'P'
						ELSE 'R'
					END)
			set @boor_cardnumber = CAST((FLOOR(RAND() * 9000) + 1000) AS VARCHAR(4)) + '-' + CAST((FLOOR(RAND() * 9000) + 1000) AS VARCHAR(4)) + '-' + CAST((FLOOR(RAND() * 9000) + 1000) AS VARCHAR(4)) + '-' + CAST((FLOOR(RAND() * 9000) + 1000) AS VARCHAR(4))
			SET @boor_hotel_id = (SELECT TOP 1 hotel_id FROM Hotel.Hotels ORDER BY NEWID())
			
			SET IDENTITY_INSERT Booking.booking_orders ON;

			INSERT INTO Booking.booking_orders (boor_id,boor_order_number,boor_order_date, boor_total_room, boor_total_ammount, boor_down_payment,boor_pay_type,boor_is_paid,boor_type, boor_cardnumber, boor_user_id,boor_hotel_id)
			VALUES (@boor_id,'BO_ORDER #'+ CAST(@boor_id AS varchar(10)), @boor_order_date, 0,0,@boor_down_payment,@boor_pay_type, @boor_is_paid,'T', @boor_cardnumber,  @id_usuario, @boor_hotel_id);

			SET IDENTITY_INSERT Booking.booking_orders OFF;


				

			SET @CONTADOR = 1
			SET @RANDY = FLOOR(RAND()*(3-1)+1)
			
			while(@contador <= @RANDY)
					BEGIN
						SET @ADULTS = FLOOR(RAND()*(4-1)+1)
						SET @KIDS = FLOOR(RAND()*(4-1)+1)
						SET @price = FLOOR(RAND()*(1000-1)+1)
						
						SET @facilities_id = (SELECT TOP 1 faci_id FROM Hotel.Facilities ORDER BY NEWID())
		
						--ESTAS AQUI
		
						SET @DATE = DATEADD(DAY,7,@boor_order_date);
						

						SET IDENTITY_INSERT Booking.booking_order_detail ON;
						INSERT INTO Booking.booking_order_detail (borde_boor_id, borde_id, borde_checkin, borde_checkout, borde_adults, borde_kids, borde_price, borde_extra, borde_discount, borde_tax, borde_faci_id)
						VALUES (@boor_id, @el_q_incre, @boor_order_date,@DATE, @ADULTS, @KIDS, @PRICE, 0,0.10, 0.10,  @facilities_id)
						
						SET IDENTITY_INSERT Booking.booking_order_detail OFF;
						
						EXECUTE Booking_order_detail_extra @boor_id,@extras OUTPUT
						


						UPDATE Booking.booking_order_detail SET borde_extra = @extras WHERE borde_boor_id = @boor_id

						set @el_q_incre = @el_q_incre + 1
						SET @contador = @contador + 1
					END;
			
			SET @contador = 0

			set @boor_id = @boor_id + 1
			fetch next from resto_cursor into @id_usuario
			
			

	
		END
			close resto_cursor
			--Liberamos el cursor:
			deallocate resto_cursor
END




EXEC booking_order_detail

---- Funciones con valores de tabla  //retorna un conjunto de valores (filas y columnas)
GO

	CREATE PROCEDURE Booking_order_detail_extra (@id int,@suma float OUTPUT)
	AS
	BEGIN
	    -- cuerpo de la funcion
		DECLARE @id_item int
		DECLARE	@PRICE FLOAT
		DECLARE @RANDOM_VALUE INT
		DECLARE @TIPO VARCHAR(30)
		DECLARE @contador int
		DECLARE @RANDY INT
		DECLARE @KIDS INT


		SET @RANDY = FLOOR(RAND()*(3-1)+1)
		SET @contador = 0		
		set @suma = 0
		while(@contador <= @RANDY)
					BEGIN
						SET @RANDOM_VALUE = FLOOR(RAND()*(4-1)+1)
						SET @KIDS = FLOOR(RAND()*(4-1)+1)
						SET @price = FLOOR(RAND()*(1000-1)+1)
						
						SET @id_item = (SELECT TOP 1 prit_id FROM Master.price_items ORDER BY NEWID())
						SET @PRICE = (SELECT TOP 1 prit_price FROM Master.price_items WHERE prit_id = @id_item ORDER BY NEWID())
						SET @TIPO = (SELECT TOP 1 prit_type FROM Master.price_items WHERE prit_id = @id_item ORDER BY NEWID())
						--ESTAS AQUI
						INSERT INTO Booking.booking_order_detail_extra (boex_price, boex_qty, boex_measure_unit, boex_borde_id, boex_prit_id)
						VALUES (@PRICE, @RANDOM_VALUE, 'people', @id, @id_item);

						SET @suma = @suma + @PRICE * @RANDOM_VALUE
						SET @contador = @contador + 1
					END;
	END





	GO
		CREATE OR ALTER TRIGGER Booking.TrToRoomAndTotalAmountUpdate
		ON booking.booking_order_detail
		AFTER INSERT, DELETE, UPDATE
		AS
		BEGIN
			SET XACT_ABORT ON;
  			UPDATE Booking.booking_orders
  			SET
			-- Update the boor_total_room column for each affected boorId
				boor_total_room =
				(
					SELECT COUNT(d.borde_id)
					FROM Booking.booking_order_detail d
					WHERE borde_boor_id = boor_id
  				),
			-- Update the boor_total_amount column for each affected boorId
				boor_total_ammount=
				(
					SELECT SUM(d.borde_subtotal)
					FROM Booking.booking_order_detail d
					WHERE borde_boor_id=boor_id
				)
		  WHERE boor_id IN (
			SELECT borde_boor_id
			FROM inserted
			UNION
			SELECT borde_boor_id
			FROM deleted
		  )
		END;
GO


CREATE OR ALTER TRIGGER Booking.TrToRoomAndTotalAmountUpdate
		ON booking.booking_order_detail
		AFTER INSERT, DELETE, UPDATE
		AS
		BEGIN
			SET XACT_ABORT ON;
  			UPDATE Booking.booking_orders
  			SET
			-- Update the boor_total_room column for each affected boorId
				boor_total_room =
				(
					SELECT COUNT(d.borde_id)
					FROM Booking.booking_order_detail d
					WHERE borde_boor_id = boor_id
  				),
			-- Update the boor_total_amount column for each affected boorId
				boor_total_ammount=
				(
					SELECT SUM(d.borde_subtotal)
					FROM Booking.booking_order_detail d
					WHERE borde_boor_id=boor_id
				)
		  WHERE boor_id IN (
			SELECT borde_boor_id
			FROM inserted
			UNION
			SELECT borde_boor_id
			FROM deleted
		  )
		END;
		GO




