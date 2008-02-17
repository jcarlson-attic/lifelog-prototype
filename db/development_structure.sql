CREATE TABLE attrib_types ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255) DEFAULT NULL, "collection" boolean DEFAULT NULL, "entry_type_id" integer DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE attrib_types_entry_types ("attrib_type_id" integer DEFAULT NULL, "entry_type_id" integer DEFAULT NULL);
CREATE TABLE attrib_values ("attrib_id" integer DEFAULT NULL, "attrib_value" varchar(255) DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE attribs ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "entry_id" integer DEFAULT NULL, "attrib_type_id" integer DEFAULT NULL, "value_id" integer DEFAULT NULL, "value_type" varchar(255) DEFAULT 'AttribValue', "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE entries ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "entry_type_id" integer DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE entry_types ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255) DEFAULT NULL, "complex" boolean DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE entry_values ("attrib_id" integer DEFAULT NULL, "attrib_entry_id" integer DEFAULT NULL, "created_at" datetime DEFAULT NULL, "updated_at" datetime DEFAULT NULL);
CREATE TABLE schema_info (version integer);
CREATE UNIQUE INDEX "index_attrib_types_entry_types_on_attrib_type_id_and_entry_type_id" ON attrib_types_entry_types ("attrib_type_id", "entry_type_id");
CREATE UNIQUE INDEX "index_attrib_values_on_attrib_id" ON attrib_values ("attrib_id");
CREATE UNIQUE INDEX "index_entry_values_on_attrib_id" ON entry_values ("attrib_id");
INSERT INTO schema_info (version) VALUES (1)