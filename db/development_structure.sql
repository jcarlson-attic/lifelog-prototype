CREATE TABLE attrib_types ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255) DEFAULT NULL, "collection" boolean DEFAULT NULL, "entry_type_id" integer DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE attrib_types_entry_types ("attrib_type_id" integer DEFAULT NULL, "entry_type_id" integer DEFAULT NULL);
CREATE TABLE attrib_values ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "attrib_value" varchar(255) DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE attribs ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "entry_id" integer DEFAULT NULL, "attrib_type_id" integer DEFAULT NULL, "value_id" integer DEFAULT NULL, "value_type" varchar(255) DEFAULT 'AttribValue', "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE entries ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "entry_type_id" integer DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE entry_types ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255) DEFAULT NULL, "complex" boolean DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL, "template" varchar(255));
CREATE TABLE entry_values ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "attrib_entry_id" integer DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE schema_info (version integer);
CREATE UNIQUE INDEX "index_attrib_types_entry_types_on_attrib_type_id_and_entry_type_id" ON attrib_types_entry_types ("attrib_type_id", "entry_type_id");
INSERT INTO schema_info (version) VALUES (3)