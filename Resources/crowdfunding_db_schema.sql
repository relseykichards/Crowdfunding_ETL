-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/dVdzjB
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE DATABASE crowdfunding_db;

CREATE TABLE contact (
    "contact_id" int   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "email" text   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);



CREATE TABLE category (
    "category_id" text   NOT NULL,
    "category" text   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);



CREATE TABLE subcategory (
    "subcategory_id" text   NOT NULL,
    "subcategory" text   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);


CREATE TABLE campaign (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" text   NOT NULL,
    "description" text   NOT NULL,
    "goal" real   NOT NULL,
    "pledged" real   NOT NULL,
	"outcome" text NOT NULL,
    "backers_count" int   NOT NULL,
    "country" text   NOT NULL,
    "currency" text   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" text   NOT NULL,
    "subcategory_id" text   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

DROP TABLE campaign;

ALTER TABLE campaign ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES contact ("contact_id");

ALTER TABLE campaign ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES category ("category_id");

ALTER TABLE campaign ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES subcategory ("subcategory_id");

SELECT * FROM contact; 
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;