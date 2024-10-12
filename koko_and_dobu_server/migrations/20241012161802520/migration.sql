BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "dorm" (
    "id" bigserial PRIMARY KEY,
    "ownerId" bigint NOT NULL,
    "name" text NOT NULL,
    "lat" double precision NOT NULL,
    "long" double precision NOT NULL,
    "websiteUrl" text
);

-- Indexes
CREATE UNIQUE INDEX "dorm_owner_unique_idx" ON "dorm" USING btree ("ownerId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "dorm_join_request" (
    "id" bigserial PRIMARY KEY,
    "dormId" bigint NOT NULL,
    "userId" bigint NOT NULL,
    "sendDate" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post" (
    "id" bigserial PRIMARY KEY,
    "dormId" bigint NOT NULL,
    "createdById" bigint NOT NULL,
    "message" text NOT NULL,
    "datePosted" timestamp without time zone NOT NULL
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "user" ADD COLUMN "dormId" bigint;
ALTER TABLE "user" ADD COLUMN "_postSeenbyPostId" bigint;
ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_fk_1"
    FOREIGN KEY("dormId")
    REFERENCES "dorm"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_fk_2"
    FOREIGN KEY("_postSeenbyPostId")
    REFERENCES "post"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "dorm"
    ADD CONSTRAINT "dorm_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "dorm_join_request"
    ADD CONSTRAINT "dorm_join_request_fk_0"
    FOREIGN KEY("dormId")
    REFERENCES "dorm"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "dorm_join_request"
    ADD CONSTRAINT "dorm_join_request_fk_1"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "post"
    ADD CONSTRAINT "post_fk_0"
    FOREIGN KEY("dormId")
    REFERENCES "dorm"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "post"
    ADD CONSTRAINT "post_fk_1"
    FOREIGN KEY("createdById")
    REFERENCES "user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR koko_and_dobu
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('koko_and_dobu', '20241012161802520', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241012161802520', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
