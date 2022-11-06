-- SCHEMA: warehouse

-- DROP SCHEMA IF EXISTS warehouse ;

CREATE SCHEMA IF NOT EXISTS warehouse
    AUTHORIZATION postgres;

-- Table: warehouse.Items

-- DROP TABLE IF EXISTS warehouse."Items";

CREATE TABLE IF NOT EXISTS warehouse."Items"
(
    "Id" uuid NOT NULL,
    "Name" text COLLATE pg_catalog."default" NOT NULL,
    "Count" integer NOT NULL,
    CONSTRAINT "PK_Items" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS warehouse."Items"
    OWNER to postgres;

-- Table: warehouse.DeliveryQueryItems

-- DROP TABLE IF EXISTS warehouse."DeliveryQueryItems";

CREATE TABLE IF NOT EXISTS warehouse."DeliveryQueryItems"
(
    "Id" uuid NOT NULL,
    "ItemId" uuid NOT NULL,
    "RequestTimestamp" timestamp with time zone NOT NULL,
    CONSTRAINT "PK_DeliveryQueryItems" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_DeliveryQueryItems_Items_ItemId" FOREIGN KEY ("ItemId")
        REFERENCES warehouse."Items" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS warehouse."DeliveryQueryItems"
    OWNER to postgres;
-- Index: IX_DeliveryQueryItems_ItemId

-- DROP INDEX IF EXISTS warehouse."IX_DeliveryQueryItems_ItemId";

CREATE UNIQUE INDEX IF NOT EXISTS "IX_DeliveryQueryItems_ItemId"
    ON warehouse."DeliveryQueryItems" USING btree
    ("ItemId" ASC NULLS LAST)
    TABLESPACE pg_default;