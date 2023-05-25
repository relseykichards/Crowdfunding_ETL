-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/dVdzjB
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Contact" (
    "contact_id" int   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "email" text   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Category" (
    "category_id" int   NOT NULL,
    "category" int   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" int   NOT NULL,
    "subcategory" text   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" text   NOT NULL,
    "description" text   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" text   NOT NULL,
    "currency" text   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" int   NOT NULL,
    "subcategory_id" int   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contact" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

