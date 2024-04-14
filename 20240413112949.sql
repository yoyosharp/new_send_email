/*
PostgreSQL Backup
Database: postgres/public
Backup Time: 2024-04-13 11:29:51
*/

DROP SEQUENCE IF EXISTS "public"."Clients_Id_seq";
DROP SEQUENCE IF EXISTS "public"."Clients_Id_seq1";
DROP SEQUENCE IF EXISTS "public"."Clients_Id_seq2";
DROP SEQUENCE IF EXISTS "public"."EmailMessages_Id_seq";
DROP SEQUENCE IF EXISTS "public"."EmailMessages_Id_seq1";
DROP SEQUENCE IF EXISTS "public"."EmailMessages_Id_seq2";
DROP SEQUENCE IF EXISTS "public"."EmailProviders_Id_seq";
DROP SEQUENCE IF EXISTS "public"."EmailProviders_Id_seq1";
DROP SEQUENCE IF EXISTS "public"."EmailProviders_Id_seq2";
DROP SEQUENCE IF EXISTS "public"."EmailProviders_id_seq";
DROP SEQUENCE IF EXISTS "public"."OtpRequestHistories_Id_seq";
DROP SEQUENCE IF EXISTS "public"."OtpRequestHistories_Id_seq1";
DROP SEQUENCE IF EXISTS "public"."OtpRequestHistories_Id_seq2";
DROP SEQUENCE IF EXISTS "public"."OtpRequestHistories_Id_seq3";
DROP SEQUENCE IF EXISTS "public"."OtpRequests_Id_seq";
DROP SEQUENCE IF EXISTS "public"."OtpRequests_Id_seq1";
DROP SEQUENCE IF EXISTS "public"."OtpRequests_Id_seq2";
DROP SEQUENCE IF EXISTS "public"."OtpRequests_Id_seq3";
DROP SEQUENCE IF EXISTS "public"."SmsMessageLogs_Id_seq";
DROP SEQUENCE IF EXISTS "public"."SmsMessageLogs_Id_seq1";
DROP SEQUENCE IF EXISTS "public"."SmsMessageLogs_Id_seq2";
DROP SEQUENCE IF EXISTS "public"."SmsMessageLogs_Id_seq3";
DROP SEQUENCE IF EXISTS "public"."SmsMessages_Id_seq";
DROP SEQUENCE IF EXISTS "public"."SmsMessages_Id_seq1";
DROP SEQUENCE IF EXISTS "public"."SmsMessages_Id_seq2";
DROP SEQUENCE IF EXISTS "public"."SmsMessages_Id_seq3";
DROP SEQUENCE IF EXISTS "public"."SmsProviderDevices_Id_seq";
DROP SEQUENCE IF EXISTS "public"."SmsProviderDevices_Id_seq1";
DROP SEQUENCE IF EXISTS "public"."SmsProviderDevices_Id_seq2";
DROP SEQUENCE IF EXISTS "public"."SmsProviders_Id_seq";
DROP SEQUENCE IF EXISTS "public"."SmsProviders_Id_seq1";
DROP SEQUENCE IF EXISTS "public"."SmsProviders_Id_seq2";
DROP SEQUENCE IF EXISTS "public"."SmsProviders_Id_seq3";
DROP SEQUENCE IF EXISTS "public"."emailmessages_id_seq";
DROP TABLE IF EXISTS "public"."Clients";
DROP TABLE IF EXISTS "public"."EmailProviders";
DROP TABLE IF EXISTS "public"."OtpRequestHistories";
DROP TABLE IF EXISTS "public"."OtpRequests";
DROP TABLE IF EXISTS "public"."SmsMessageLogs";
DROP TABLE IF EXISTS "public"."SmsMessages";
DROP TABLE IF EXISTS "public"."SmsProviderDevices";
DROP TABLE IF EXISTS "public"."SmsProviders";
DROP TABLE IF EXISTS "public"."SmsTemplates";
DROP TABLE IF EXISTS "public"."__EFMigrationsHistory";
DROP TABLE IF EXISTS "public"."emailmessages";
DROP TABLE IF EXISTS "public"."emailtemplates";
CREATE SEQUENCE "Clients_Id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "Clients_Id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "Clients_Id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "EmailMessages_Id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "EmailMessages_Id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "EmailMessages_Id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "EmailProviders_Id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "EmailProviders_Id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "EmailProviders_Id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "EmailProviders_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "OtpRequestHistories_Id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "OtpRequestHistories_Id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "OtpRequestHistories_Id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "OtpRequestHistories_Id_seq3" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "OtpRequests_Id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "OtpRequests_Id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "OtpRequests_Id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "OtpRequests_Id_seq3" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "SmsMessageLogs_Id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "SmsMessageLogs_Id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "SmsMessageLogs_Id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "SmsMessageLogs_Id_seq3" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "SmsMessages_Id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "SmsMessages_Id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "SmsMessages_Id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "SmsMessages_Id_seq3" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "SmsProviderDevices_Id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "SmsProviderDevices_Id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "SmsProviderDevices_Id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "SmsProviders_Id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "SmsProviders_Id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "SmsProviders_Id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "SmsProviders_Id_seq3" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "emailmessages_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE TABLE "Clients" (
  "ClientId" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "ClientSecret" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ClientCallbackUrl" varchar(255) COLLATE "pg_catalog"."default",
  "Status" int4,
  "CreateTime" date,
  "UpdateTime" date,
  "SmsEnable" bool,
  "EmailEnable" bool,
  "SmsDefaultProviderId" int4,
  "EmailDefaultProviderId" int4,
  "Id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
)
)
;
ALTER TABLE "Clients" OWNER TO "postgres";
CREATE TABLE "EmailProviders" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" text COLLATE "pg_catalog"."default",
  "providerconnectconfig" jsonb,
  "status" int4 NOT NULL,
  "createdate" timestamp(6),
  "updatedate" timestamp(6)
)
;
ALTER TABLE "EmailProviders" OWNER TO "postgres";
CREATE TABLE "OtpRequestHistories" (
  "Id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "RequestId" int8 NOT NULL,
  "Code" text COLLATE "pg_catalog"."default",
  "RequestStatus" int4 NOT NULL,
  "CreatedTime" timestamp(6) NOT NULL
)
;
ALTER TABLE "OtpRequestHistories" OWNER TO "postgres";
CREATE TABLE "OtpRequests" (
  "Id" int8 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "Code" text COLLATE "pg_catalog"."default",
  "Mobile" varchar(12) COLLATE "pg_catalog"."default",
  "VerifyRequestId" text COLLATE "pg_catalog"."default",
  "Type" int4 NOT NULL,
  "NumVerify" int4 NOT NULL,
  "Status" int4 NOT NULL,
  "SentTime" timestamp(6) NOT NULL,
  "CreatedTime" timestamp(6) NOT NULL,
  "ExpiredTime" timestamp(6) NOT NULL,
  "VerifiedTime" timestamp(6),
  "NumVerifyMax" int4 NOT NULL,
  "ResendRemain" int4 NOT NULL
)
;
ALTER TABLE "OtpRequests" OWNER TO "postgres";
CREATE TABLE "SmsMessageLogs" (
  "Id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "CreateTime" timestamp(6) NOT NULL,
  "SmsMessageId" int8 NOT NULL,
  "Request" jsonb,
  "Response" jsonb,
  "ProviderId" int8,
  "ProviderResponseCode" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "SmsMessageLogs" OWNER TO "postgres";
CREATE TABLE "SmsMessages" (
  "Id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "RequestId" text COLLATE "pg_catalog"."default",
  "Date" int4 NOT NULL,
  "CreateTime" timestamp(6) NOT NULL,
  "SmsProviderId" int4 NOT NULL,
  "SmsTemplateId" int4,
  "Data" jsonb,
  "Message" text COLLATE "pg_catalog"."default",
  "ClientId" text COLLATE "pg_catalog"."default",
  "Status" int4 NOT NULL,
  "ReTryTimes" int4,
  "SendTime" timestamp(6),
  "PhoneNumber" text COLLATE "pg_catalog"."default",
  "SmsClientPhoneNumber" varchar(255) COLLATE "pg_catalog"."default",
  "Subject" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "SmsMessages" OWNER TO "postgres";
CREATE TABLE "SmsProviderDevices" (
  "Id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "DeviceId" varchar(32) COLLATE "pg_catalog"."default",
  "SecretKey" varchar(255) COLLATE "pg_catalog"."default",
  "PhoneNumber" varchar(50) COLLATE "pg_catalog"."default",
  "TelecomType" varchar(255) COLLATE "pg_catalog"."default",
  "AreaCode" varchar(255) COLLATE "pg_catalog"."default",
  "SmsProviderId" int4
)
;
ALTER TABLE "SmsProviderDevices" OWNER TO "postgres";
CREATE TABLE "SmsProviders" (
  "Id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "Name" text COLLATE "pg_catalog"."default",
  "ProviderConnectConfig" jsonb,
  "Status" int4 NOT NULL,
  "CreateDate" timestamp(6),
  "UpdateDate" timestamp(6)
)
;
ALTER TABLE "SmsProviders" OWNER TO "postgres";
CREATE TABLE "SmsTemplates" (
  "Id" int4 NOT NULL,
  "Name" text COLLATE "pg_catalog"."default",
  "Template" text COLLATE "pg_catalog"."default" NOT NULL,
  "VariableFields" text COLLATE "pg_catalog"."default",
  "Status" int4 NOT NULL,
  "Campaign" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "SmsTemplates" OWNER TO "postgres";
CREATE TABLE "__EFMigrationsHistory" (
  "MigrationId" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "ProductVersion" varchar(32) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "__EFMigrationsHistory" OWNER TO "postgres";
CREATE TABLE "emailmessages" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "requestid" varchar(255) COLLATE "pg_catalog"."default",
  "date" int4 NOT NULL,
  "createtime" timestamp(6) NOT NULL,
  "emailproviderid" int4 NOT NULL,
  "emailtemplateid" int4,
  "data" jsonb,
  "sento" text COLLATE "pg_catalog"."default",
  "attachments" jsonb,
  "message" text COLLATE "pg_catalog"."default",
  "subject" text COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "clientid" text COLLATE "pg_catalog"."default",
  "status" int4 NOT NULL,
  "retrytimes" int4,
  "sendtime" timestamp(6),
  "templatecontent" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "emailmessages" OWNER TO "postgres";
CREATE TABLE "emailtemplates" (
  "id" int4 NOT NULL,
  "name" text COLLATE "pg_catalog"."default",
  "template" text COLLATE "pg_catalog"."default" NOT NULL,
  "variableFields" text COLLATE "pg_catalog"."default",
  "status" int4 NOT NULL,
  "campaign" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "emailtemplates" OWNER TO "postgres";
BEGIN;
LOCK TABLE "public"."Clients" IN SHARE MODE;
DELETE FROM "public"."Clients";
INSERT INTO "public"."Clients" ("ClientId","ClientSecret","ClientCallbackUrl","Status","CreateTime","UpdateTime","SmsEnable","EmailEnable","SmsDefaultProviderId","EmailDefaultProviderId","Id") VALUES ('hieu-dev.com', 'lxeStdADHS4/DkUx6UuP6g==', 'hieu-dev.com/updatestatusemail.php', 1, '2024-03-04', '2024-03-04', 't', 't', 1, 1, 2),('ha-dev.com', 'lxeStdADHS4/DkUx6UuP6g==', 'ha-dev.com/updatestatusemail.php', 1, '2024-03-04', '2024-03-04', 't', 't', 1, 1, 1)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."EmailProviders" IN SHARE MODE;
DELETE FROM "public"."EmailProviders";
INSERT INTO "public"."EmailProviders" ("id","name","providerconnectconfig","status","createdate","updatedate") VALUES (1, 'ZetoMail', '"const url = \"zeptomail.zoho.com/\";\nconst token = \"[Authorization key]\";\n\nlet client = new SendMailClient({ url, token });\n\nclient\n  .sendMail({\n  from: {\n      address: \"yourname@yourdomain.com\",\n      name: \"noreply\"\n  },\n  to: [\n      {\n      email_address: {\n          address: \"receiver@yourdomain.com\",\n          name: \"Receiver\"\n      },\n      },\n  ],\n  subject: \"Test Email\",\n  htmlbody: \" Test email sent successfully.\",\n  })\n  .then((resp) => console.log(\"success\"))\n  .catch((error) => console.log(\"error\"));"', 1, NULL, NULL)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."OtpRequestHistories" IN SHARE MODE;
DELETE FROM "public"."OtpRequestHistories";
COMMIT;
BEGIN;
LOCK TABLE "public"."OtpRequests" IN SHARE MODE;
DELETE FROM "public"."OtpRequests";
COMMIT;
BEGIN;
LOCK TABLE "public"."SmsMessageLogs" IN SHARE MODE;
DELETE FROM "public"."SmsMessageLogs";
COMMIT;
BEGIN;
LOCK TABLE "public"."SmsMessages" IN SHARE MODE;
DELETE FROM "public"."SmsMessages";
COMMIT;
BEGIN;
LOCK TABLE "public"."SmsProviderDevices" IN SHARE MODE;
DELETE FROM "public"."SmsProviderDevices";
COMMIT;
BEGIN;
LOCK TABLE "public"."SmsProviders" IN SHARE MODE;
DELETE FROM "public"."SmsProviders";
COMMIT;
BEGIN;
LOCK TABLE "public"."SmsTemplates" IN SHARE MODE;
DELETE FROM "public"."SmsTemplates";
COMMIT;
BEGIN;
LOCK TABLE "public"."__EFMigrationsHistory" IN SHARE MODE;
DELETE FROM "public"."__EFMigrationsHistory";
COMMIT;
BEGIN;
LOCK TABLE "public"."emailmessages" IN SHARE MODE;
DELETE FROM "public"."emailmessages";
INSERT INTO "public"."emailmessages" ("id","requestid","date","createtime","emailproviderid","emailtemplateid","data","sento","attachments","message","subject","content","clientid","status","retrytimes","sendtime","templatecontent") VALUES (61, 'SO-1712743699', 1712743699, '2024-04-10 10:08:19.173', 1, NULL, '{"otp": 371799, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 10:08:19.173', NULL),(65, 'SO-1712744238', 1712744238, '2024-04-10 10:17:18.31', 1, NULL, '{"otp": 519320, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 10:17:18.31', NULL),(3, 'SO-1712132829', 1712132829, '2024-04-03 08:27:09.611', 1, NULL, '{"otp": 659406, "type": "otpOrder", "title": "Payment Confirmation", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-03 08:27:09.611', NULL),(4, 'SO-1712132974', 1712132974, '2024-04-03 08:29:34.714', 1, NULL, '{"otp": 624169, "type": "otpOrder", "user_id": 1, "template": "otpOrder", "user_email": "hatran3898222@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-03 08:29:34.715', NULL),(70, 'SO-1712804291', 1712804291, '2024-04-11 02:58:11.813', 1, NULL, '{"otp": 642190, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 02:58:11.813', NULL),(76, 'SO-1712806083', 1712806083, '2024-04-11 03:28:03.567', 1, NULL, '{"otp": 608670, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 03:28:03.567', NULL),(82, 'SO-1712807949', 1712807949, '2024-04-11 03:59:09.198', 1, NULL, '{"otp": 647129, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 03:59:09.198', NULL),(62, 'SO-1712743763', 1712743763, '2024-04-10 10:09:23.863', 1, NULL, '{"otp": 266051, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 10:09:23.863', NULL),(66, 'SO-1712744319', 1712744319, '2024-04-10 10:18:39.681', 1, NULL, '{"otp": 471506, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 10:18:39.681', NULL),(71, 'SO-1712804568', 1712804568, '2024-04-11 03:02:48.835', 1, NULL, '{"otp": 994362, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 03:02:48.835', NULL),(77, 'SO-1712806189', 1712806189, '2024-04-11 03:29:49.111', 1, NULL, '{"otp": 699387, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 03:29:49.111', NULL),(83, 'SO-1712808015', 1712808015, '2024-04-11 04:00:15.529', 1, NULL, '{"date": "11-04-2024", "type": "ecommerce", "email": "ankhieu322@gmail.com", "title": "Thông báo từ Tomiru.com, mã đơn hàng 20240411960231 đã được thanh toán", "buyer_id": 2, "tomxu_paid": 560, "pre_balance": 268850, "productName": "BdB Air Accomodattion WordPress Theme, Isomorphic React Next Joomla Template", "post_balance": 268290, "id_transactions": [290396, 290398], "tracking_number": "20240411960231"}', NULL, NULL, NULL, 'ecommerce', NULL, NULL, 1, NULL, '2024-04-11 04:00:15.529', NULL),(84, 'SO-1712808015', 1712808015, '2024-04-11 04:00:15.536', 1, NULL, '{"date": "11-04-2024", "type": "ecommerce", "email": "hatran3898@gmail.com", "title": "Thông báo từ Tomiru.com, mã đơn hàng 20240411960231 đã được thanh toán", "seller_id": 3, "tomxu_paid": 60, "pre_balance": 9187, "productName": "Isomorphic React Next Joomla Template", "post_balance": 9247, "id_transaction": 290397, "tracking_number": "20240411960231"}', NULL, NULL, NULL, 'ecommerce', NULL, NULL, 1, NULL, '2024-04-11 04:00:15.536', NULL),(85, 'SO-1712808015', 1712808015, '2024-04-11 04:00:15.539', 1, NULL, '{"date": "11-04-2024", "type": "ecommerce", "email": "hatran3898222@gmail.com", "title": "Thông báo từ Tomiru.com, mã đơn hàng 20240411960231 đã được thanh toán", "seller_id": 1, "tomxu_paid": 500, "pre_balance": 124950, "productName": "BdB Air Accomodattion WordPress Theme", "post_balance": 125450, "id_transaction": 290399, "tracking_number": "20240411960231"}', NULL, NULL, NULL, 'ecommerce', NULL, NULL, 1, NULL, '2024-04-11 04:00:15.539', NULL),(63, 'SO-1712743945', 1712743945, '2024-04-10 10:12:25.782', 1, NULL, '{"otp": 226988, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 10:12:25.782', NULL),(67, 'SO-1712803899', 1712803899, '2024-04-11 02:51:39.901', 1, NULL, '{"otp": 600196, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 02:51:39.902', NULL),(68, 'SO-1712803906', 1712803906, '2024-04-11 02:51:46.988', 1, NULL, '{"otp": 795056, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 02:51:46.988', NULL),(72, 'SO-1712804657', 1712804657, '2024-04-11 03:04:17.071', 1, NULL, '{"otp": 627809, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 03:04:17.071', NULL),(78, 'SO-1712806301', 1712806301, '2024-04-11 03:31:41.999', 1, NULL, '{"otp": 256836, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 03:31:41.999', NULL),(86, 'SO-1712808037', 1712808037, '2024-04-11 04:00:37.882', 1, NULL, '{"otp": 512105, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 04:00:37.882', NULL),(64, 'SO-1712744175', 1712744175, '2024-04-10 10:16:15.155', 1, NULL, '{"otp": 528412, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 10:16:15.155', NULL),(69, 'SO-1712804208', 1712804208, '2024-04-11 02:56:48.969', 1, NULL, '{"otp": 941884, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-11 02:56:48.969', NULL),(73, 'SO-1712804681', 1712804681, '2024-04-11 03:04:41.324', 1, NULL, '{"date": "04-04-2024", "type": "ecommerce", "email": "ankhieu322@gmail.com", "title": "Thông báo từ Tomiru.com, mã đơn hàng 20240404505297 đã được thanh toán", "buyer_id": 2, "tomxu_paid": 180, "pre_balance": 269110, "productName": "Isomorphic React Next Joomla Template, BdB Air Accomodattion WordPress Theme, Shoppie UI- Test SP ", "post_balance": 268930, "id_transactions": [290388, 290390], "tracking_number": "20240404505297"}', NULL, NULL, NULL, 'ecommerce', NULL, NULL, 1, NULL, '2024-04-11 03:04:41.325', NULL),(74, 'SO-1712804681', 1712804681, '2024-04-11 03:04:41.331', 1, NULL, '{"date": "11-04-2024", "type": "ecommerce", "email": "hatran3898@gmail.com", "title": "Thông báo từ Tomiru.com, mã đơn hàng 20240404505297 đã được thanh toán", "seller_id": 3, "tomxu_paid": 130, "pre_balance": 9027, "productName": "Isomorphic React Next Joomla Template, Shoppie UI- Test SP ", "post_balance": 9157, "id_transaction": 290389, "tracking_number": "20240404505297"}', NULL, NULL, NULL, 'ecommerce', NULL, NULL, 1, NULL, '2024-04-11 03:04:41.331', NULL),(75, 'SO-1712804681', 1712804681, '2024-04-11 03:04:41.333', 1, NULL, '{"date": "11-04-2024", "type": "ecommerce", "email": "hatran3898222@gmail.com", "title": "Thông báo từ Tomiru.com, mã đơn hàng 20240404505297 đã được thanh toán", "seller_id": 1, "tomxu_paid": 50, "pre_balance": 124850, "productName": "BdB Air Accomodattion WordPress Theme", "post_balance": 124900, "id_transaction": 290391, "tracking_number": "20240404505297"}', NULL, NULL, NULL, 'ecommerce', NULL, NULL, 1, NULL, '2024-04-11 03:04:41.333', NULL),(79, 'SO-1712806332', 1712806332, '2024-04-11 03:32:12.901', 1, NULL, '{"date": "11-04-2024", "type": "ecommerce", "email": "ankhieu322@gmail.com", "title": "Thông báo từ Tomiru.com, mã đơn hàng 20240411473937 đã được thanh toán", "buyer_id": 2, "tomxu_paid": 80, "pre_balance": 268930, "productName": "BdB Air Accomodattion WordPress Theme, Isomorphic React Next Joomla Template", "post_balance": 268850, "id_transactions": [290392, 290394], "tracking_number": "20240411473937"}', NULL, NULL, NULL, 'ecommerce', NULL, NULL, 1, NULL, '2024-04-11 03:32:12.901', NULL),(80, 'SO-1712806332', 1712806332, '2024-04-11 03:32:12.909', 1, NULL, '{"date": "11-04-2024", "type": "ecommerce", "email": "hatran3898222@gmail.com", "title": "Thông báo từ Tomiru.com, mã đơn hàng 20240411473937 đã được thanh toán", "seller_id": 1, "tomxu_paid": 50, "pre_balance": 124900, "productName": "BdB Air Accomodattion WordPress Theme", "post_balance": 124950, "id_transaction": 290393, "tracking_number": "20240411473937"}', NULL, NULL, NULL, 'ecommerce', NULL, NULL, 1, NULL, '2024-04-11 03:32:12.909', NULL),(81, 'SO-1712806332', 1712806332, '2024-04-11 03:32:12.911', 1, NULL, '{"date": "11-04-2024", "type": "ecommerce", "email": "hatran3898@gmail.com", "title": "Thông báo từ Tomiru.com, mã đơn hàng 20240411473937 đã được thanh toán", "seller_id": 3, "tomxu_paid": 30, "pre_balance": 9157, "productName": "Isomorphic React Next Joomla Template", "post_balance": 9187, "id_transaction": 290395, "tracking_number": "20240411473937"}', NULL, NULL, NULL, 'ecommerce', NULL, NULL, 1, NULL, '2024-04-11 03:32:12.912', NULL),(55, 'SO-1712741936', 1712741936, '2024-04-10 09:38:56.631', 1, NULL, '{"otp": 419378, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 09:38:56.632', NULL),(56, 'SO-1712742380', 1712742380, '2024-04-10 09:46:20.727', 1, NULL, '{"otp": 878554, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 09:46:20.727', NULL),(57, 'SO-1712742403', 1712742403, '2024-04-10 09:46:43.156', 1, NULL, '{"otp": 928823, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 09:46:43.156', NULL),(58, 'SO-1712742629', 1712742629, '2024-04-10 09:50:29.616', 1, NULL, '{"otp": 944122, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 09:50:29.616', NULL),(59, 'SO-1712743303', 1712743303, '2024-04-10 10:01:43.772', 1, NULL, '{"otp": 914723, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 10:01:43.772', NULL),(60, 'SO-1712743326', 1712743326, '2024-04-10 10:02:06.018', 1, NULL, '{"otp": 536413, "type": "otpOrder", "title": "Mã OTP xác thực đơn hàng", "user_id": 2, "template": "otpOrder", "user_email": "ankhieu322@gmail.com"}', NULL, NULL, NULL, 'otpOrder', NULL, NULL, 1, NULL, '2024-04-10 10:02:06.018', NULL)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."emailtemplates" IN SHARE MODE;
DELETE FROM "public"."emailtemplates";
INSERT INTO "public"."emailtemplates" ("id","name","template","variableFields","status","campaign") VALUES (2, 'otpOrder', '<html>
  <head>
    <style>
      body {
        font-family: roboto, sans-serif;
        font-weight: 400;
        font-size: 14px;
        line-height: 35px;
        letter-spacing: 0.5px;
        background-color: darkgray;
      }
      .note {
        font-family: roboto, sans-serif;
        font-weight: 400;
        font-size: 14px;
        line-height: 20px;
        text-align: center;
        letter-spacing: 0.5px;
      }
      .main {
        margin: 10px auto;
        min-height: 500px;
        background-color: #fff;
        max-width: 634px;
      }

      .logo {
        text-align: center;
      }

      .logo img {
        margin: 10px auto;
        width: 170px;
      }

      @media screen and (max-width: 425px) {
        .body {
          margin-left: 20px;
          margin-right: 20px;
          margin-top: 15px;
          padding-bottom: 20px;
        }
        body {
          font-family: roboto, sans-serif;
          font-weight: 400;
          font-size: 12px;
          line-height: 30px;
          letter-spacing: 0.5px;
          background-color: darkgray;
        }
        h2 {
          font-weight: 700;
          font-size: 18px;
          line-height: 24px;
        }
      }

      .body {
        margin-left: 50px;
        margin-right: 50px;
        margin-top: 15px;
        padding-bottom: 50px;
      }

      .table-product {
        width: 100%;
        font-size: 14px;
        vertical-align: middle;
        padding: 10px;
      }

      .table-right {
        text-align: right;
        font-weight: 600;
      }

      .table-row {
        height: 35px;
      }

      .table-user-info {
        width: 100%;
        font-size: 13px;
        background: #f8f8fa;
        border-radius: 5px;
        padding: 15px;
      }

      .table-user-info tr {
        height: 30px;
      }

      .payment-button {
        margin-top: 30px;
        margin-bottom: 30px;
      }

      h2 {
        font-weight: 700;
        font-size: 22px;
        line-height: 28px;
      }

      .title {
        text-align: center;
        font-weight: 500;
        font-size: 18px;
        line-height: 26px;
        margin-bottom: 6px;
      }

      .detail {
        font-weight: 600;
      }

      .block {
        display: block;
        width: 100%;
        border: none;
        background-color: #007aff;
        color: white;
        padding: 14px 28px;
        font-size: 16px;
        cursor: pointer;
        text-align: center;
      }

      .block:hover {
        background-color: #ddd;
        color: black;
      }

      .footer {
        font-size: 13px;
        line-height: 18px;
        letter-spacing: -0.08px;
      }
    </style>
  </head>

  <body>
    <div class="main">
      <div class="logo" style="">
        <img
          src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSSx0z5kB-8FREEzunMxrzXcbaqKm4S0th1ZsMJetS-w&s"
          alt=""
        />
      </div>

      <div class="body">
        <div class="title">TOMIRU.com</div>
        <div class="note">Chân thành cảm ơn quý khác đã lựa chọn Tomiru.</div>
        <div class="note">
          Chúng tôi hy vọng Quý khách hài lòng với dịch vụ đã chọn!
        </div>
        <hr />
        <h2>Thông báo</h2>

        <p>
          Chúng tôi xin gửi đến bạn thông báo về mã OTP giao dịch mới nhất của
          bạn. Mã OTP này sẽ có hiệu lực trong vòng 2 phút kể từ thời điểm nhận
          được.
        </p>
        <p
          style="
            margin: 0;
            margin-top: 60px;
            font-size: 40px;
            font-weight: 600;
            letter-spacing: 25px;
            color: #ba3d4f;
            text-align: center;
          "
        >
          OTP_CODE
        </p>
        <p>
          Vui lòng sử dụng mã OTP này trong thời gian hiệu lực để hoàn thành
          giao dịch của bạn. Trong trường hợp bạn không nhận được mã OTP hoặc
          cần hỗ trợ thêm, vui lòng liên hệ với chúng tôi để được hỗ trợ.
        </p>
        <div class="payment-button">
          <a
            style="text-decoration: none; color: white"
            target="_blank"
            href="https://webfast.com.vn/"
          >
            <button class="block">Đi tới website</button></a
          >
        </div>

        <hr />
        <div class="footer">
          <div class="logo-left">
            <!-- <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSSx0z5kB-8FREEzunMxrzXcbaqKm4S0th1ZsMJetS-w&s" height="55" /> -->
          </div>
          <table style="width: 100%">
            <tr>
              <td style="width: 70%">
                <table style="width: 100%; font-size: 13px">
                  <tr style="height: 18px">
                    <td>
                      <img
                        src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/location.png"
                      />&nbsp;Số 121 Tô Hiệu, Hà Đông, Hà Nội.
                    </td>
                  </tr>
                  <tr style="height: 18px">
                    <td>
                      <img
                        src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/phone.png"
                      />&nbsp;...........
                    </td>
                  </tr>
                  <tr style="height: 18px">
                    <td>
                      <img
                        src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/mail.png"
                      />&nbsp;&nbsp;info@tomiru.com
                    </td>
                  </tr>
                  <tr style="height: 18px">
                    <td>&copy; &nbsp; 2024 TOMIRU</td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>
', NULL, 1, NULL),(3, 'pdf', '<html>

<head>
    <style>
        body {
            font-family: roboto, sans-serif;
            font-weight: 400;
            font-size: 14px;
            line-height: 35px;
            letter-spacing: 0.5px;
            background-color: darkgray
        }
     .note {
            font-family: roboto, sans-serif;
            font-weight: 400;
            font-size: 14px;
			line-height:20px;
			text-align:center;
            letter-spacing: 0.5px;
           
        }
        .main {
            margin: 10px auto;
            min-height: 500px;
            background-color: #fff;
            max-width: 634px;
        }
        
        .logo {
            text-align: center;
        }
        
        .logo img {
            margin: 10px auto;
            width: 218px;
        }
        
        @media screen and (max-width: 425px) {
            .body {
                margin-left: 20px;
                margin-right: 20px;
                margin-top: 15px;
                padding-bottom: 20px;
            }
            body {
                font-family: roboto, sans-serif;
                font-weight: 400;
                font-size: 12px;
                line-height: 30px;
                letter-spacing: 0.5px;
                background-color: darkgray
            }
            h2 {
                font-weight: 700;
                font-size: 18px;
                line-height: 24px;
            }
        }
        
        .body {
            margin-left: 50px;
            margin-right: 50px;
            margin-top: 15px;
            padding-bottom: 50px;
        }
        
        .table-product {
            width: 100%;
            font-size: 14px;
            vertical-align: middle;
            padding: 10px;
        }
        
        .table-right {
            text-align: right;
            font-weight: 600;
        }
        
        .table-row {
            height: 35px;
        }
        
        .table-user-info {
            width: 100%;
            font-size: 13px;
            background: #F8F8FA;
            border-radius: 5px;
            padding: 15px;
        }
        
        .table-user-info tr {
            height: 30px;
        }
        
        .payment-button {
            margin-top: 30px;
            margin-bottom: 30px;
        }
        
        h2 {
            font-weight: 700;
            font-size: 22px;
            line-height: 28px;
        }
        
        .title {
            text-align: center;
            font-weight: 500;
            font-size: 18px;
            line-height: 26px;
			margin-bottom: 6px;
        }
        
        .detail {
            font-weight: 600;
        }
        
        .block {
            display: block;
            width: 100%;
            border: none;
            background-color: #007AFF;
            color: white;
            padding: 14px 28px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
        }
        
        .block:hover {
            background-color: #ddd;
            color: black;
        }
        
        .footer {
            font-size: 13px;
            line-height: 18px;
            letter-spacing: -0.08px;
        }
    </style>
</head>

<body>
    <div class="main">
        <div class="logo">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSSx0z5kB-8FREEzunMxrzXcbaqKm4S0th1ZsMJetS-w&s" alt="">
        </div>

        <div class="body">
            <div class="title">Xác nhận thẻ smart OTP.</div>
            <div class="note">Chân thành cảm ơn quý khác đã lựa chọn Tomiru.</div>
            <div class="note">Chúng tôi hy vọng Quý khách hài lòng với dịch vụ đã chọn!</div>
            <hr>
            <p>Chào USER_NAME,</p>
    <p>Chúng tôi rất vui thông báo rằng thẻ của bạn đã được kích hoạt thành công! Để tiếp tục sử dụng dịch vụ của chúng tôi một cách thuận tiện và an toàn, bạn sẽ cần mã OTP (One-Time Password).</p>
    <p>Vui lòng tải xuống file PDF đính kèm để lấy mã OTP cho thẻ của bạn.</p>
    <p><a href="LINK_PDF">Tải xuống file PDF</a></p>
    <p>Nếu có bất kỳ thắc mắc hoặc cần hỗ trợ gì khác, đừng ngần ngại liên hệ với chúng tôi. Chúng tôi luôn sẵn lòng hỗ trợ bạn.</p>
    <p>Xin cảm ơn đã lựa chọn dịch vụ của Tomiru.</p>
    <p>Trân trọng.</p>

           

            <hr>
            <div class="footer">
                <div class="logo-left">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSSx0z5kB-8FREEzunMxrzXcbaqKm4S0th1ZsMJetS-w&s" height="55" />
                </div>
                <table style="width: 100%;">
                    <tr>
                        <td style="width:70%">
                            <table style="width: 100%;font-size:13px">
                                <tr style="height:18px">
                                    <td><img src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/location.png" />&nbsp;Số 54 Lê Văn Lương, Nhân Chính, Thanh Xuân, Hà Nội</td>
                                </tr>
                                <tr style="height:18px">
                                    <td><img src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/phone.png" />&nbsp;0933725622</td>
                                </tr>
                                <tr style="height:18px">
                                    <td><img src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/mail.png" />&nbsp;&nbsp;info@tepavn.com</td>
                                </tr>
                                <tr style="height:18px">
                                    <td>&copy; &nbsp; 2022 TEPA</td>
                                </tr>
                            </table>
                        </td>
                        <td class="table-right">
                            <img src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/qr+website+1.png"></img>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>

</html>', NULL, 1, NULL),(1, 'ecommerce', '<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Thông báo đơn hàng</title>
    <style>
      /* CSS styles go here */
      body {
        font-family: roboto, sans-serif;
        font-weight: 400;
        font-size: 14px;
        line-height: 35px;
        letter-spacing: 0.5px;
        background-color: darkgray;
      }

      .note {
        font-family: roboto, sans-serif;
        font-weight: 400;
        font-size: 14px;
        line-height: 20px;
        text-align: center;
        letter-spacing: 0.5px;
      }

      .main {
        margin: 10px auto;
        min-height: 500px;
        background-color: #fff;
        max-width: 634px;
      }

      .logo {
        text-align: center;
      }

      .logo img {
        margin: 10px auto;
        width: 170px;
      }

      @media screen and (max-width: 425px) {
        .body {
          margin-left: 20px;
          margin-right: 20px;
          margin-top: 15px;
          padding-bottom: 20px;
        }

        body {
          font-family: roboto, sans-serif;
          font-weight: 400;
          font-size: 12px;
          line-height: 30px;
          letter-spacing: 0.5px;
          background-color: darkgray;
        }

        h2 {
          font-weight: 700;
          font-size: 18px;
          line-height: 24px;
        }
      }

      .body {
        margin-left: 50px;
        margin-right: 50px;
        margin-top: 15px;
        padding-bottom: 50px;
      }

      .table-product {
        width: 100%;
        font-size: 14px;
        vertical-align: middle;
        padding: 10px;
      }

      .table-right {
        text-align: right;
        font-weight: 600;
      }

      .table-row {
        height: 35px;
      }

      .table-user-info {
        width: 100%;
        font-size: 13px;
        background: #f8f8fa;
        border-radius: 5px;
        padding: 15px;
      }

      .table-user-info tr {
        height: 30px;
      }

      .payment-button {
        margin-top: 30px;
        margin-bottom: 30px;
      }

      h2 {
        font-weight: 700;
        font-size: 22px;
        line-height: 28px;
      }

      .title {
        text-align: center;
        font-weight: 500;
        font-size: 18px;
        line-height: 26px;
        margin-bottom: 6px;
      }

      .detail {
        font-weight: 600;
      }

      .block {
        display: block;
        width: 100%;
        border: none;
        background-color: #007aff;
        color: white;
        padding: 14px 28px;
        font-size: 16px;
        cursor: pointer;
        text-align: center;
      }

      .block:hover {
        background-color: #ddd;
        color: black;
      }

      .footer {
        font-size: 13px;
        line-height: 18px;
        letter-spacing: -0.08px;
      }

      /* CSS cho modal */
      .modal {
        display: none; /* Ẩn ban đầu */
        position: fixed; /* Cố định vị trí */
        z-index: 1; /* Hiển thị trên tất cả các phần khác */
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto; /* Scroll nếu cần */
        background-color: rgba(0, 0, 0, 0.4); /* Màu nền đen với độ mờ */
      }

      /* Nội dung modal */
      .modal-content {
        background-color: #fefefe;
        margin: 15% auto; /* Căn giữa trên và dưới khi hiển thị modal */
        padding: 20px;
        border: 1px solid #888;
        width: 80%; /* Độ rộng của modal */
      }

      /* Đóng modal nút */
      .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
      }

      .close:hover,
      .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
      }
    </style>
  </head>

  <body>
    <div class="main">
      <div class="logo">
        <img
          src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSSx0z5kB-8FREEzunMxrzXcbaqKm4S0th1ZsMJetS-w&s"
          alt=""
        />
      </div>

      <div class="body">
        <div class="title">Xác nhận thanh toán giao dịch thành công!</div>
        <div class="note">Chân thành cảm ơn quý khách đã lựa chọn Tomiru.</div>
        <div class="note">
          Chúng tôi hy vọng Quý khách hài lòng với dịch vụ đã chọn!
        </div>
        <hr />
        <h2>Thông tin đơn hàng</h2>
        <p>Chi tiết dịch vụ mà bạn đã lựa chọn</p>
        <table class="table-product">
          <tr ck class="table-row">
            <td class="table-left">Tên dịch vụ/sản phẩm</td>
            <td class="table-right"><a class="detail" href="#">PRODUCT</a></td>
          </tr>
          <tr ck class="table-row">
            <td class="table-left">Mã đơn hàng</td>
            <td class="table-right">TRACKING_NUMBER</td>
          </tr>
          <tr ck class="table-row">
            <td class="table-left">Ngày đặt hàng</td>
            <td class="table-right">DATE_ORDER</td>
          </tr>
          <tr ck class="table-row">
            <td class="table-left">Hình thức thanh toán</td>
            <td class="table-right">Tomxu</td>
          </tr>
          <tr ck class="table-row">
            <td class="table-left">Giá trị giao dịch</td>
            <td class="table-right">
              <a href="#" style="text-decoration: none">PRICE_ORDER Tomxu</a>
            </td>
          </tr>
          <tr ck class="table-row">
            <td class="table-left">Số dư trước giao dịch</td>
            <td class="table-right">
              <a href="#" style="text-decoration: none">PRICE_START Tomxu</a>
            </td>
          </tr>
          <tr ck class="table-row">
            <td class="table-left">Số dư sau giao dịch</td>
            <td class="table-right">
              <a href="#" style="text-decoration: none">PRICE_END Tomxu</a>
            </td>
          </tr>
          <tr ck class="table-row">
            <td class="table-left">Trạng thái đơn hàng</td>
            <td class="table-right">
              <span
                style="
                  background-color: coral;
                  color: white;
                  padding: 5px;
                  border-radius: 5px;
                "
                >Thành công</span
              >
            </td>
          </tr>
        </table>

        <div class="payment-button">
          <a
            style="text-decoration: none; color: white"
            target="_blank"
            href="https://tepavn.com/"
            ><button class="block">Đi tới website</button></a
          >
        </div>

        <hr />
        <div class="footer">
          <div class="logo-left"></div>
          <table style="width: 100%">
            <tr>
              <td style="width: 70%">
                <table style="width: 100%; font-size: 13px">
                  <tr style="height: 18px">
                    <td>
                      <img
                        src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/location.png"
                      />&nbsp;Số 121 Tô Hiệu, Hà Đông, Hà Nội
                    </td>
                  </tr>
                  <tr style="height: 18px">
                    <td>
                      <img
                        src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/phone.png"
                      />&nbsp;..........
                    </td>
                  </tr>
                  <tr style="height: 18px">
                    <td>
                      <img
                        src="https://cenx.s3.ap-southeast-1.amazonaws.com/mail/img/mail.png"
                      />&nbsp;&nbsp;info@tomiru.com
                    </td>
                  </tr>
                  <tr style="height: 18px">
                    <td>&copy; &nbsp; 2024 TOMIRU</td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </div>
      </div>
    </div>

    <!-- Modal -->
    <div id="myModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <p>Thông tin chi tiết về sản phẩm sẽ được hiển thị ở đây.</p>
      </div>
    </div>

    <script>
      // Lấy nút "Xem chi tiết"
      var detailButton = document.querySelector(''.detail'');

      // Lấy modal
      var modal = document.getElementById(''myModal'');

      // Lấy phần đóng modal
      var span = document.getElementsByClassName(''close'')[0];

      // Khi người dùng click vào "Xem chi tiết", hiển thị modal
      detailButton.onclick = function () {
        modal.style.display = ''block'';
      };

      // Khi người dùng click vào nút đóng (x), ẩn modal
      span.onclick = function () {
        modal.style.display = ''none'';
      };

      // Khi người dùng click bên ngoài modal, ẩn modal
      window.onclick = function (event) {
        if (event.target == modal) {
          modal.style.display = ''none'';
        }
      };
    </script>
  </body>
</html>
', NULL, 1, NULL)
;
COMMIT;
ALTER TABLE "Clients" ADD CONSTRAINT "Clients_pkey" PRIMARY KEY ("Id");
ALTER TABLE "OtpRequestHistories" ADD CONSTRAINT "PK_OtpRequestHistories" PRIMARY KEY ("Id");
CREATE INDEX "IX_OtpRequestHistories_RequestId" ON "OtpRequestHistories" USING btree (
  "RequestId" "pg_catalog"."int8_ops" ASC NULLS LAST
);
ALTER TABLE "OtpRequests" ADD CONSTRAINT "PK_OtpRequests" PRIMARY KEY ("Id");
ALTER TABLE "SmsMessageLogs" ADD CONSTRAINT "PK_SmsMessageLogs" PRIMARY KEY ("Id");
CREATE INDEX "IX_SmsMessageLogs_SmsMessageId" ON "SmsMessageLogs" USING btree (
  "SmsMessageId" "pg_catalog"."int8_ops" ASC NULLS LAST
);
ALTER TABLE "SmsMessages" ADD CONSTRAINT "PK_SmsMessages" PRIMARY KEY ("Id");
CREATE INDEX "IX_SmsMessages_SmsProviderId" ON "SmsMessages" USING btree (
  "SmsProviderId" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "IX_SmsMessages_SmsTemplateId" ON "SmsMessages" USING btree (
  "SmsTemplateId" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "SmsProviderDevices" ADD CONSTRAINT "SmsProviderDevices_pkey" PRIMARY KEY ("Id");
ALTER TABLE "SmsProviders" ADD CONSTRAINT "PK_SmsProviders" PRIMARY KEY ("Id");
ALTER TABLE "SmsTemplates" ADD CONSTRAINT "PK_SmsTemplates" PRIMARY KEY ("Id");
ALTER TABLE "__EFMigrationsHistory" ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
ALTER TABLE "emailmessages" ADD CONSTRAINT "PK_EmailMessages" PRIMARY KEY ("id");
CREATE INDEX "IX_EmailMessages_EmailProviderId" ON "emailmessages" USING btree (
  "emailproviderid" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "IX_EmailMessages_EmailTemplateId" ON "emailmessages" USING btree (
  "emailtemplateid" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "OtpRequestHistories" ADD CONSTRAINT "FK_OtpRequestHistories_OtpRequests_RequestId" FOREIGN KEY ("RequestId") REFERENCES "public"."OtpRequests" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "SmsMessageLogs" ADD CONSTRAINT "FK_SmsMessageLogs_SmsMessages_SmsMessageId" FOREIGN KEY ("SmsMessageId") REFERENCES "public"."SmsMessages" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "SmsMessages" ADD CONSTRAINT "FK_SmsMessages_SmsProviders_SmsProviderId" FOREIGN KEY ("SmsProviderId") REFERENCES "public"."SmsProviders" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "SmsMessages" ADD CONSTRAINT "FK_SmsMessages_SmsTemplates_SmsTemplateId" FOREIGN KEY ("SmsTemplateId") REFERENCES "public"."SmsTemplates" ("Id") ON DELETE RESTRICT ON UPDATE NO ACTION;
ALTER TABLE "SmsProviderDevices" ADD CONSTRAINT "SmsProviderDevices_SmsProviderId_fkey" FOREIGN KEY ("SmsProviderId") REFERENCES "public"."SmsProviders" ("Id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER SEQUENCE "Clients_Id_seq"
OWNED BY "Clients"."Id";
SELECT setval('"Clients_Id_seq"', 2, true);
ALTER SEQUENCE "Clients_Id_seq" OWNER TO "postgres";
ALTER SEQUENCE "Clients_Id_seq1"
OWNED BY "Clients"."Id";
SELECT setval('"Clients_Id_seq1"', 1, true);
ALTER SEQUENCE "Clients_Id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "Clients_Id_seq2"
OWNED BY "Clients"."Id";
SELECT setval('"Clients_Id_seq2"', 1, false);
ALTER SEQUENCE "Clients_Id_seq2" OWNER TO "postgres";
ALTER SEQUENCE "EmailMessages_Id_seq"
OWNED BY "emailmessages"."id";
SELECT setval('"EmailMessages_Id_seq"', 22, true);
ALTER SEQUENCE "EmailMessages_Id_seq" OWNER TO "postgres";
ALTER SEQUENCE "EmailMessages_Id_seq1"
OWNED BY "emailmessages"."id";
SELECT setval('"EmailMessages_Id_seq1"', 255, true);
ALTER SEQUENCE "EmailMessages_Id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "EmailMessages_Id_seq2"
OWNED BY "emailmessages"."id";
SELECT setval('"EmailMessages_Id_seq2"', 86, true);
ALTER SEQUENCE "EmailMessages_Id_seq2" OWNER TO "postgres";
ALTER SEQUENCE "EmailProviders_Id_seq"
OWNED BY "EmailProviders"."id";
SELECT setval('"EmailProviders_Id_seq"', 3, false);
ALTER SEQUENCE "EmailProviders_Id_seq" OWNER TO "postgres";
ALTER SEQUENCE "EmailProviders_Id_seq1"
OWNED BY "EmailProviders"."id";
SELECT setval('"EmailProviders_Id_seq1"', 2, false);
ALTER SEQUENCE "EmailProviders_Id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "EmailProviders_Id_seq2"
OWNED BY "EmailProviders"."id";
SELECT setval('"EmailProviders_Id_seq2"', 1, false);
ALTER SEQUENCE "EmailProviders_Id_seq2" OWNER TO "postgres";
ALTER SEQUENCE "EmailProviders_id_seq"
OWNED BY "EmailProviders"."id";
SELECT setval('"EmailProviders_id_seq"', 1, false);
ALTER SEQUENCE "EmailProviders_id_seq" OWNER TO "postgres";
ALTER SEQUENCE "OtpRequestHistories_Id_seq"
OWNED BY "OtpRequestHistories"."Id";
SELECT setval('"OtpRequestHistories_Id_seq"', 280, true);
ALTER SEQUENCE "OtpRequestHistories_Id_seq" OWNER TO "postgres";
ALTER SEQUENCE "OtpRequestHistories_Id_seq1"
OWNED BY "OtpRequestHistories"."Id";
SELECT setval('"OtpRequestHistories_Id_seq1"', 24, true);
ALTER SEQUENCE "OtpRequestHistories_Id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "OtpRequestHistories_Id_seq2"
OWNED BY "OtpRequestHistories"."Id";
SELECT setval('"OtpRequestHistories_Id_seq2"', 1, false);
ALTER SEQUENCE "OtpRequestHistories_Id_seq2" OWNER TO "postgres";
ALTER SEQUENCE "OtpRequestHistories_Id_seq3"
OWNED BY "OtpRequestHistories"."Id";
SELECT setval('"OtpRequestHistories_Id_seq3"', 1, false);
ALTER SEQUENCE "OtpRequestHistories_Id_seq3" OWNER TO "postgres";
ALTER SEQUENCE "OtpRequests_Id_seq"
OWNED BY "OtpRequests"."Id";
SELECT setval('"OtpRequests_Id_seq"', 143, true);
ALTER SEQUENCE "OtpRequests_Id_seq" OWNER TO "postgres";
ALTER SEQUENCE "OtpRequests_Id_seq1"
OWNED BY "OtpRequests"."Id";
SELECT setval('"OtpRequests_Id_seq1"', 35, true);
ALTER SEQUENCE "OtpRequests_Id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "OtpRequests_Id_seq2"
OWNED BY "OtpRequests"."Id";
SELECT setval('"OtpRequests_Id_seq2"', 1, false);
ALTER SEQUENCE "OtpRequests_Id_seq2" OWNER TO "postgres";
ALTER SEQUENCE "OtpRequests_Id_seq3"
OWNED BY "OtpRequests"."Id";
SELECT setval('"OtpRequests_Id_seq3"', 1, false);
ALTER SEQUENCE "OtpRequests_Id_seq3" OWNER TO "postgres";
ALTER SEQUENCE "SmsMessageLogs_Id_seq"
OWNED BY "SmsMessageLogs"."Id";
SELECT setval('"SmsMessageLogs_Id_seq"', 3, false);
ALTER SEQUENCE "SmsMessageLogs_Id_seq" OWNER TO "postgres";
ALTER SEQUENCE "SmsMessageLogs_Id_seq1"
OWNED BY "SmsMessageLogs"."Id";
SELECT setval('"SmsMessageLogs_Id_seq1"', 406, true);
ALTER SEQUENCE "SmsMessageLogs_Id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "SmsMessageLogs_Id_seq2"
OWNED BY "SmsMessageLogs"."Id";
SELECT setval('"SmsMessageLogs_Id_seq2"', 1, false);
ALTER SEQUENCE "SmsMessageLogs_Id_seq2" OWNER TO "postgres";
ALTER SEQUENCE "SmsMessageLogs_Id_seq3"
OWNED BY "SmsMessageLogs"."Id";
SELECT setval('"SmsMessageLogs_Id_seq3"', 1, false);
ALTER SEQUENCE "SmsMessageLogs_Id_seq3" OWNER TO "postgres";
ALTER SEQUENCE "SmsMessages_Id_seq"
OWNED BY "SmsMessages"."Id";
SELECT setval('"SmsMessages_Id_seq"', 256, true);
ALTER SEQUENCE "SmsMessages_Id_seq" OWNER TO "postgres";
ALTER SEQUENCE "SmsMessages_Id_seq1"
OWNED BY "SmsMessages"."Id";
SELECT setval('"SmsMessages_Id_seq1"', 453, true);
ALTER SEQUENCE "SmsMessages_Id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "SmsMessages_Id_seq2"
OWNED BY "SmsMessages"."Id";
SELECT setval('"SmsMessages_Id_seq2"', 1, false);
ALTER SEQUENCE "SmsMessages_Id_seq2" OWNER TO "postgres";
ALTER SEQUENCE "SmsMessages_Id_seq3"
OWNED BY "SmsMessages"."Id";
SELECT setval('"SmsMessages_Id_seq3"', 1, false);
ALTER SEQUENCE "SmsMessages_Id_seq3" OWNER TO "postgres";
ALTER SEQUENCE "SmsProviderDevices_Id_seq"
OWNED BY "SmsProviderDevices"."Id";
SELECT setval('"SmsProviderDevices_Id_seq"', 6, true);
ALTER SEQUENCE "SmsProviderDevices_Id_seq" OWNER TO "postgres";
ALTER SEQUENCE "SmsProviderDevices_Id_seq1"
OWNED BY "SmsProviderDevices"."Id";
SELECT setval('"SmsProviderDevices_Id_seq1"', 1, false);
ALTER SEQUENCE "SmsProviderDevices_Id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "SmsProviderDevices_Id_seq2"
OWNED BY "SmsProviderDevices"."Id";
SELECT setval('"SmsProviderDevices_Id_seq2"', 1, false);
ALTER SEQUENCE "SmsProviderDevices_Id_seq2" OWNER TO "postgres";
ALTER SEQUENCE "SmsProviders_Id_seq"
OWNED BY "SmsProviders"."Id";
SELECT setval('"SmsProviders_Id_seq"', 3, false);
ALTER SEQUENCE "SmsProviders_Id_seq" OWNER TO "postgres";
ALTER SEQUENCE "SmsProviders_Id_seq1"
OWNED BY "SmsProviders"."Id";
SELECT setval('"SmsProviders_Id_seq1"', 2, false);
ALTER SEQUENCE "SmsProviders_Id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "SmsProviders_Id_seq2"
OWNED BY "SmsProviders"."Id";
SELECT setval('"SmsProviders_Id_seq2"', 1, false);
ALTER SEQUENCE "SmsProviders_Id_seq2" OWNER TO "postgres";
ALTER SEQUENCE "SmsProviders_Id_seq3"
OWNED BY "SmsProviders"."Id";
SELECT setval('"SmsProviders_Id_seq3"', 1, false);
ALTER SEQUENCE "SmsProviders_Id_seq3" OWNER TO "postgres";
ALTER SEQUENCE "emailmessages_id_seq"
OWNED BY "emailmessages"."id";
SELECT setval('"emailmessages_id_seq"', 1, false);
ALTER SEQUENCE "emailmessages_id_seq" OWNER TO "postgres";
