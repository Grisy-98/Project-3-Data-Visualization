-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- DROP TABLE IF EXISTS "2018_table";
CREATE TABLE "2018_table" (
    "Zip_code" VARCHAR   NOT NULL,
    "2018_Median_Contract_Rent" NUMERIC,
    "Median_Monthly_Cost" NUMERIC,
    "Total_Median_Monthly_Cost" NUMERIC,
    "Median_Monthly_Cost_With_Mortgage" NUMERIC,
    "Median_Monthly_Cost_Without_Mortgage" NUMERIC,
    "Total_Housing_Units" NUMERIC,
    "Housing_Units_Owned" NUMERIC,
    "Housing_Units_Rented" NUMERIC,
    CONSTRAINT "pk_2018_table" PRIMARY KEY (
        "Zip_code"
     )
);



--DROP TABLE IF EXISTS "2019_table";
CREATE TABLE "2019_table" (
    "Zip_code" VARCHAR   NOT NULL,
    "2019_Median_Contract_Rent" NUMERIC,
    "Median_Monthly_Cost" NUMERIC,
    "Total_Median_Monthly_Cost" NUMERIC,
    "Median_Monthly_Cost_With_Mortgage" NUMERIC,
    "Median_Monthly_Cost_Without_Mortgage" NUMERIC,
    "Total_Housing_Units" NUMERIC,
    "Housing_Units_Owned" NUMERIC,
    "Housing_Units_Rented" NUMERIC,
    CONSTRAINT "pk_2019_table" PRIMARY KEY (
        "Zip_code"
     )
);

DROP TABLE IF EXISTS "2020_table";
CREATE TABLE "2020_table" (
    "Zip_code" VARCHAR   NOT NULL,
    "2020_Median_Contract_Rent" NUMERIC,
    "Median_Monthly_Cost" NUMERIC,
    "Total_Median_Monthly_Cost" NUMERIC,
    "Median_Monthly_Cost_With_Mortgage" NUMERIC,
    "Median_Monthly_Cost_Without_Mortgage" NUMERIC,
    "Total_Housing_Units" NUMERIC,
    "Housing_Units_Owned" NUMERIC,
    "Housing_Units_Rented" NUMERIC,
    CONSTRAINT "pk_2020_table" PRIMARY KEY (
        "Zip_code"
     )
);

--DROP TABLE IF EXISTS "2021_table";
CREATE TABLE "2021_table" (
    "Zip_code" VARCHAR,
    "2021_Median_Contract_Rent" NUMERIC,
    "Median_Monthly_Cost" NUMERIC,
    "Total_Median_Monthly_Cost" NUMERIC,
    "Median_Monthly_Cost_With_Mortgage" NUMERIC,
    "Median_Monthly_Cost_Without_Mortgage" NUMERIC,
    "Total_Housing_Units" NUMERIC   NOT NULL,
    "Housing_Units_Owned" NUMERIC   NOT NULL,
    "Housing_Units_Rented" NUMERIC   NOT NULL,
    CONSTRAINT "pk_2021_table" PRIMARY KEY (
        "Zip_code"
     )
);

-- DROP TABLE IF EXISTS "2022_table";
CREATE TABLE "2022_table" (
    "Zip_code" VARCHAR   NOT NULL,
    "2022_Median_Contract_Rent" NUMERIC,
    "Median_Monthly_Cost" NUMERIC,
    "Total_Median_Monthly_Cost" NUMERIC,
    "Median_Monthly_Cost_With_Mortgage" NUMERIC,
    "Median_Monthly_Cost_Without_Mortgage" NUMERIC,
    "Total_Housing_Units" NUMERIC,
    "Housing_Units_Owned" NUMERIC,
    "Housing_Units_Rented" NUMERIC,
    CONSTRAINT "pk_2022_table" PRIMARY KEY (
        "Zip_code"
     )
);



ALTER TABLE "2019_table" ADD CONSTRAINT "fk_2019_table_Zip_code" FOREIGN KEY("Zip_code")
REFERENCES "2018_table" ("Zip_code");

ALTER TABLE "2020_table" ADD CONSTRAINT "fk_2020_table_Zip_code" FOREIGN KEY("Zip_code")
REFERENCES "2018_table" ("Zip_code");

ALTER TABLE "2021_table" ADD CONSTRAINT "fk_2021_table_Zip_code" FOREIGN KEY("Zip_code")
REFERENCES "2018_table" ("Zip_code");

ALTER TABLE "2022_table" ADD CONSTRAINT "fk_2022_table_Zip_code" FOREIGN KEY("Zip_code")
REFERENCES "2018_table" ("Zip_code");

SELECT * FROM "2018_table";
SELECT * FROM "2019_table";
SELECT * FROM "2020_table";
SELECT * FROM "2021_table";
SELECT * FROM "2022_table";
