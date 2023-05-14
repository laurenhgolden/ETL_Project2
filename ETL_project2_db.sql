-- ERD exported from QuickDBD: https://www.quickdatabasediagrams.com/

-- Create tables with schema

-- Drop table if exists Category;
-- Drop table if exists Subcategory
-- Drop table if exists Contact_info
-- Drop table if exitss Campaign

CREATE TABLE Category (
    category_id VARCHAR(255)   NOT NULL,
    category VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR(255)   NOT NULL,
    subcategory VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE Contact_Info (
    contact_id int   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    email VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Contact_Info PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE Campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name VARCHAR(255)   NOT NULL,
    description VARCHAR(255)   NOT NULL,
    goal decimal   NOT NULL,
    pledged decimal   NOT NULL,
    outcome VARCHAR(255)   NOT NULL,
    backers_count int   NOT NULL,
    country VARCHAR(255)   NOT NULL,
    currency VARCHAR(255)   NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id VARCHAR(255)   NOT NULL,
    subcategory_id VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Campaign PRIMARY KEY (
        cf_id
     )
);

-- Adjust tables for foreign keys

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES Contact_Info (contact_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_category_id FOREIGN KEY(category_id)
REFERENCES Category (category_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES Subcategory (subcategory_id);

-- Verify that each table has the correct data by running a SELECT statement for each.
select * from category
select * from subcategory
select * from contact_info
select * from campaign