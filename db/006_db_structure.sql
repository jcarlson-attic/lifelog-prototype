CREATE TABLE attribute_types (
	"id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	"name" varchar(255) DEFAULT NULL, 
	"entry_type_id" integer DEFAULT NULL, 
	"collection" boolean DEFAULT NULL, 
	"created_at" datetime DEFAULT NULL, 
	"updated_at" datetime DEFAULT NULL
);

CREATE TABLE attribute_values (
	"id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	"attribute_id" integer DEFAULT NULL, 
	"value" varchar(255) DEFAULT NULL, 
	"created_at" datetime DEFAULT NULL, 
	"updated_at" datetime DEFAULT NULL
);

CREATE TABLE attributes (
	"id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	"attribute_type_id" integer DEFAULT NULL, 
	"entry_id" integer DEFAULT NULL, 
	"created_at" datetime DEFAULT NULL, 
	"updated_at" datetime DEFAULT NULL
);

CREATE TABLE attributes_entries (
	"id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	"attribute_id" integer DEFAULT NULL, 
	"entry_id" integer DEFAULT NULL, 
	"created_at" datetime DEFAULT NULL, 
	"updated_at" datetime DEFAULT NULL
);

CREATE TABLE entries (
	"id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	"entry_type_id" integer DEFAULT NULL, 
	"created_at" datetime DEFAULT NULL, 
	"updated_at" datetime DEFAULT NULL
);

CREATE TABLE entry_type_attribute_types (
	"id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	"entry_type_id" integer DEFAULT NULL, 
	"attribute_type_id" integer DEFAULT NULL, 
	"created_at" datetime DEFAULT NULL, 
	"updated_at" datetime DEFAULT NULL
);

CREATE TABLE entry_types (
	"id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	"name" varchar(255) DEFAULT NULL, 
	"complex" boolean DEFAULT NULL, 
	"created_at" datetime DEFAULT NULL, 
	"updated_at" datetime DEFAULT NULL
);

CREATE TABLE schema_info (
version integer
);

CREATE INDEX "index_attribute_values_on_attribute_id" ON attribute_values ("attribute_id");
CREATE INDEX "index_attributes_entries_on_attribute_id_and_entry_id" ON attributes_entries ("attribute_id", "entry_id");
CREATE INDEX "index_entry_type_attribute_types_on_entry_type_id_and_attribute_type_id" ON entry_type_attribute_types ("entry_type_id", "attribute_type_id");

INSERT INTO schema_info (version) VALUES (6);