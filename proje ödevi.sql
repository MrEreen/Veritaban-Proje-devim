--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: doktorara(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.doktorara(doktorno integer) RETURNS TABLE(doktornumara integer, doktorad character varying, doktorsoyad character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT "doktorid", "ad", "soyad" FROM doktor
                 WHERE "doktorid" = doktorNo;
END;
$$;


ALTER FUNCTION public.doktorara(doktorno integer) OWNER TO postgres;

--
-- Name: hastabak(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hastabak(hastano integer) RETURNS TABLE(numara integer, adi character varying, soyadi character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT "hastaid", "isim", "soyisim" FROM hasta
                 WHERE "hastaid" = hastaNo;
END;
$$;


ALTER FUNCTION public.hastabak(hastano integer) OWNER TO postgres;

--
-- Name: hastanenerede(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hastanenerede(hastane_no integer) RETURNS TABLE(numara integer, "hastaneadı" character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT "Hastane_id", "hastaneadi" FROM hastane
                 WHERE "Hastane_id" = hastane_No;
END;
$$;


ALTER FUNCTION public.hastanenerede(hastane_no integer) OWNER TO postgres;

--
-- Name: hastaneyap(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hastaneyap() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
INSERT INTO "hastane" ( "hastane_id","hastaneadi","il_id")
VALUES ( '4', 'ORHANGAZI DEVLET HASTANESI','16');
return new;
END;
$$;


ALTER FUNCTION public.hastaneyap() OWNER TO postgres;

--
-- Name: maashesapla(real); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.maashesapla(maas real) RETURNS real
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN 15 * maas;
END;
$$;


ALTER FUNCTION public.maashesapla(maas real) OWNER TO postgres;

--
-- Name: maashesapla(smallint); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.maashesapla(dolarkuru smallint) RETURNS TABLE(adi character varying, soyadi character varying, doktortlmaas integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
 doktortlmaas:= dolarkuru * maasdolar;
 
 ALTER TABLE doktor
ADD doktortlmaası int;

    RETURN QUERY SELECT  "ad", "soyad","maasdolar" FROM doktor;
               
END;
$$;


ALTER FUNCTION public.maashesapla(dolarkuru smallint) OWNER TO postgres;

--
-- Name: polikinlikhastageldi(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.polikinlikhastageldi() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
INSERT INTO "poliklinik" ( "odaid","doktorid","poliklinik_id","randevuid") 
VALUES ( '6', '3', '4', '3');
return new;
END;
$$;


ALTER FUNCTION public.polikinlikhastageldi() OWNER TO postgres;

--
-- Name: öldü(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public."öldü"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
update morg set yataksayisi=yataksayisi+1;
return new;
END;
$$;


ALTER FUNCTION public."öldü"() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ameliyathane; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ameliyathane (
    "Hastane_id" integer NOT NULL,
    odaid real NOT NULL
);


ALTER TABLE public.ameliyathane OWNER TO postgres;

--
-- Name: depo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.depo (
    odaid real NOT NULL,
    ilac real NOT NULL,
    serum real NOT NULL,
    "ası" real NOT NULL,
    "Hastane_id" integer NOT NULL
);


ALTER TABLE public.depo OWNER TO postgres;

--
-- Name: doktor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doktor (
    doktorid integer NOT NULL,
    ad character varying(25) NOT NULL,
    soyad character varying(20) NOT NULL,
    poliklinik_id smallint NOT NULL,
    "Hastane_id" integer NOT NULL,
    il_id smallint NOT NULL,
    maasdolar character varying(20) DEFAULT '0'::bpchar
);


ALTER TABLE public.doktor OWNER TO postgres;

--
-- Name: hasta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hasta (
    hastaid integer NOT NULL,
    hastane_id integer DEFAULT 1,
    isim character varying(30) NOT NULL,
    kangrubuid real,
    recete_id smallint,
    soyisim character varying(30) NOT NULL,
    il_id real,
    kangrubu character(5)
);


ALTER TABLE public.hasta OWNER TO postgres;

--
-- Name: hastane; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hastane (
    "Hastane_id" integer NOT NULL,
    hastaneadi character varying(40) NOT NULL,
    il_id integer NOT NULL,
    hasta smallint
);


ALTER TABLE public.hastane OWNER TO postgres;

--
-- Name: hastayakini; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hastayakini (
    hastayakiniid integer NOT NULL,
    adi text NOT NULL,
    soyadi text NOT NULL,
    "Hasta_id" integer NOT NULL
);


ALTER TABLE public.hastayakini OWNER TO postgres;

--
-- Name: il; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.il (
    iladi text NOT NULL,
    ilid smallint NOT NULL
);


ALTER TABLE public.il OWNER TO postgres;

--
-- Name: ilaclar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ilaclar (
    serino real NOT NULL,
    depo_id real NOT NULL
);


ALTER TABLE public.ilaclar OWNER TO postgres;

--
-- Name: kangrubu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kangrubu (
    "Hasta_id" smallint NOT NULL,
    kangrubu character varying(5) NOT NULL,
    kangrubuid smallint NOT NULL
);


ALTER TABLE public.kangrubu OWNER TO postgres;

--
-- Name: laboratuvar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.laboratuvar (
    tahlilsonuc real,
    "Hastane_id" integer NOT NULL,
    odaid real NOT NULL
);


ALTER TABLE public.laboratuvar OWNER TO postgres;

--
-- Name: morg; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.morg (
    odaid real NOT NULL,
    "Hastane_id" integer NOT NULL,
    yataksayisi text NOT NULL
);


ALTER TABLE public.morg OWNER TO postgres;

--
-- Name: poliklinik; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.poliklinik (
    odaid smallint NOT NULL,
    doktorid smallint NOT NULL,
    poliklinik_id smallint DEFAULT '5'::smallint NOT NULL,
    randevu_id smallint NOT NULL
);


ALTER TABLE public.poliklinik OWNER TO postgres;

--
-- Name: randevu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.randevu (
    randevuid integer NOT NULL,
    polikinlik real NOT NULL,
    doktor_id real NOT NULL,
    "Hasta_id" integer NOT NULL,
    zaman character varying(5) NOT NULL
);


ALTER TABLE public.randevu OWNER TO postgres;

--
-- Name: recete; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recete (
    receteid smallint NOT NULL,
    hastaid smallint NOT NULL,
    doktor_id smallint NOT NULL
);


ALTER TABLE public.recete OWNER TO postgres;

--
-- Name: tahliller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tahliller (
    tahlilid real NOT NULL,
    laboratuvar_id real NOT NULL
);


ALTER TABLE public.tahliller OWNER TO postgres;

--
-- Data for Name: ameliyathane; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ameliyathane VALUES
	(1, 2),
	(2, 3),
	(3, 4);


--
-- Data for Name: depo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.depo VALUES
	(3, 40, 20, 50, 1),
	(3, 20, 25, 40, 2),
	(3, 15, 25, 35, 3);


--
-- Data for Name: doktor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.doktor VALUES
	(1, 'MEHMET', 'ÖZ', 1, 1, 31, '3000$'),
	(6, 'ARDA', 'TURAN', 6, 3, 16, '3000$'),
	(2, 'AHMET', 'ASLAN', 2, 1, 61, '1000$'),
	(3, 'BURCU', 'ESMERSOY', 3, 1, 34, '1000$'),
	(4, 'AYLA', 'POLAT', 4, 2, 1, '2000$'),
	(5, 'KEREM', 'ADA', 5, 2, 6, '1000$');


--
-- Data for Name: hasta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hasta VALUES
	(2, 1, 'SERDAR', 2, 2, 'YILMAZ', 34, 'BRH- '),
	(1, 1, 'EREN', 1, 1, 'KIRAN', 31, '0RH+ '),
	(4, 3, 'EMRE', 4, 4, 'KIRAN', 61, 'ABRH+'),
	(5, 2, 'AYŞE', 5, 5, 'DOĞRU', 54, 'BRH+ '),
	(3, 2, 'HALİL MERT', 3, 3, 'TUNÇEL', 1, 'ARH+ '),
	(6, 4, 'DORA', 6, 6, 'AKIN', 54, 'ARH+ ');


--
-- Data for Name: hastane; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hastane VALUES
	(2, 'SAPANCA ILCE HASTANESI', 54, NULL),
	(1, 'HATAY EGITIM VE ARASTIRMA HASTANESI', 31, NULL),
	(3, 'BAHCELIEVLER DEVLET HASTANESİ', 34, NULL);


--
-- Data for Name: hastayakini; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hastayakini VALUES
	(1, 'OĞUZHAN', 'KOC', 1),
	(2, 'AHMET', 'SONUC', 2),
	(3, 'CEM', 'ADRIAN', 3),
	(4, 'HALUK', 'LEVENT', 4),
	(5, 'EMRE', 'AYDIN', 5),
	(6, 'BARIS', 'AKARSU', 6);


--
-- Data for Name: il; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.il VALUES
	('HATAY', 31),
	('ISTANBUL', 34),
	('SAKARYA', 54),
	('TRABZON', 64),
	('ADANA', 1);


--
-- Data for Name: ilaclar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ilaclar VALUES
	(155112, 1);


--
-- Data for Name: kangrubu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kangrubu VALUES
	(1, '0RH+', 1),
	(2, 'BRH-', 2),
	(3, 'ARH+', 3),
	(4, 'ABRH+', 4),
	(5, 'BRH+', 5),
	(6, 'ARH+', 6);


--
-- Data for Name: laboratuvar; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: morg; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.morg VALUES
	(1, 1, '20'),
	(2, 2, '25'),
	(3, 3, '30');


--
-- Data for Name: poliklinik; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.poliklinik VALUES
	(4, 1, 1, 1),
	(4, 3, 3, 3),
	(5, 2, 2, 2);


--
-- Data for Name: randevu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.randevu VALUES
	(1, 1, 1, 1, '12.30'),
	(2, 2, 2, 4, '09.00');


--
-- Data for Name: recete; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.recete VALUES
	(1, 3, 2),
	(2, 4, 3);


--
-- Data for Name: tahliller; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tahliller VALUES
	(1, 1),
	(2, 2),
	(4, 5);


--
-- Name: ameliyathane ameliyathane_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ameliyathane
    ADD CONSTRAINT ameliyathane_pkey PRIMARY KEY (odaid);


--
-- Name: doktor doktor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doktor
    ADD CONSTRAINT doktor_pkey PRIMARY KEY (doktorid);


--
-- Name: hasta hasta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT hasta_pkey PRIMARY KEY (hastaid);


--
-- Name: hastane hastane_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hastane
    ADD CONSTRAINT hastane_pkey PRIMARY KEY ("Hastane_id");


--
-- Name: hastayakini hastayakini_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hastayakini
    ADD CONSTRAINT hastayakini_pkey PRIMARY KEY (hastayakiniid);


--
-- Name: il il_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.il
    ADD CONSTRAINT il_pkey PRIMARY KEY (iladi);


--
-- Name: ilaclar ilaclar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ilaclar
    ADD CONSTRAINT ilaclar_pkey PRIMARY KEY (serino);


--
-- Name: kangrubu kangrubu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kangrubu
    ADD CONSTRAINT kangrubu_pkey PRIMARY KEY (kangrubuid);


--
-- Name: morg morg_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.morg
    ADD CONSTRAINT morg_pkey PRIMARY KEY (odaid);


--
-- Name: poliklinik poliklinik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.poliklinik
    ADD CONSTRAINT poliklinik_pkey PRIMARY KEY (poliklinik_id);


--
-- Name: randevu randevu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.randevu
    ADD CONSTRAINT randevu_pkey PRIMARY KEY (randevuid);


--
-- Name: recete recete_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recete
    ADD CONSTRAINT recete_pkey PRIMARY KEY (receteid);


--
-- Name: tahliller tahliller_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tahliller
    ADD CONSTRAINT tahliller_pkey PRIMARY KEY (tahlilid);


--
-- Name: doktor unique_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doktor
    ADD CONSTRAINT unique_1 UNIQUE (poliklinik_id, doktorid);


--
-- Name: hasta unique_Hasta_kangrubuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT "unique_Hasta_kangrubuid" UNIQUE (kangrubuid);


--
-- Name: hasta unique_Hasta_recete_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT "unique_Hasta_recete_id" UNIQUE (recete_id);


--
-- Name: morg unique_Morg_Hastane_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.morg
    ADD CONSTRAINT "unique_Morg_Hastane_id" UNIQUE ("Hastane_id");


--
-- Name: depo unique_depo_Hastane_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depo
    ADD CONSTRAINT "unique_depo_Hastane_id" UNIQUE ("Hastane_id");


--
-- Name: doktor unique_doktor_poliklinik_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doktor
    ADD CONSTRAINT unique_doktor_poliklinik_id UNIQUE (poliklinik_id);


--
-- Name: hasta unique_hasta_hastaid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hasta
    ADD CONSTRAINT unique_hasta_hastaid UNIQUE (hastaid);


--
-- Name: hastane unique_hastane_Hastane_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hastane
    ADD CONSTRAINT "unique_hastane_Hastane_id" UNIQUE ("Hastane_id");


--
-- Name: hastane unique_hastane_il_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hastane
    ADD CONSTRAINT unique_hastane_il_id UNIQUE (il_id);


--
-- Name: hastayakini unique_hastayakini_Hasta_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hastayakini
    ADD CONSTRAINT "unique_hastayakini_Hasta_id" UNIQUE ("Hasta_id");


--
-- Name: kangrubu unique_kangrubu_Hasta_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kangrubu
    ADD CONSTRAINT "unique_kangrubu_Hasta_id" UNIQUE ("Hasta_id");


--
-- Name: kangrubu unique_kangrubu_kangrubuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kangrubu
    ADD CONSTRAINT unique_kangrubu_kangrubuid UNIQUE (kangrubuid);


--
-- Name: laboratuvar unique_laboratuvar_odaid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laboratuvar
    ADD CONSTRAINT unique_laboratuvar_odaid UNIQUE (odaid);


--
-- Name: poliklinik unique_poliklinik_poliklinik_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.poliklinik
    ADD CONSTRAINT unique_poliklinik_poliklinik_id UNIQUE (poliklinik_id);


--
-- Name: poliklinik unique_poliklinik_randevu_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.poliklinik
    ADD CONSTRAINT unique_poliklinik_randevu_id UNIQUE (randevu_id);


--
-- Name: recete unique_recete_doktor_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recete
    ADD CONSTRAINT unique_recete_doktor_id UNIQUE (doktor_id);


--
-- Name: index_Hasta_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_Hasta_id" ON public.randevu USING btree ("Hasta_id");


--
-- Name: index_Hastane_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_Hastane_id" ON public.hasta USING btree (hastane_id);


--
-- Name: index_Hastane_id1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_Hastane_id1" ON public.doktor USING btree ("Hastane_id");


--
-- Name: index_Hastane_id2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_Hastane_id2" ON public.ameliyathane USING btree ("Hastane_id");


--
-- Name: index_Hastane_id3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_Hastane_id3" ON public.laboratuvar USING btree ("Hastane_id");


--
-- Name: index_depo_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_depo_id ON public.ilaclar USING btree (depo_id);


--
-- Name: index_doktor_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_doktor_id ON public.randevu USING btree (doktor_id);


--
-- Name: index_hastaid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_hastaid ON public.hasta USING btree (hastaid);


--
-- Name: index_il_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_il_id ON public.doktor USING btree (il_id);


--
-- Name: index_il_id1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_il_id1 ON public.hastane USING btree (il_id);


--
-- Name: index_il_id2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_il_id2 ON public.hasta USING btree (il_id);


--
-- Name: index_laboratuvar_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_laboratuvar_id ON public.tahliller USING btree (laboratuvar_id);


--
-- Name: index_tahlilid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tahlilid ON public.tahliller USING btree (tahlilid);


--
-- Name: depo hastaöldü; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER "hastaöldü" AFTER DELETE ON public.depo FOR EACH ROW EXECUTE FUNCTION public."öldü"();


--
-- Name: randevu randevuarttı; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER "randevuarttı" AFTER UPDATE ON public.randevu FOR EACH ROW EXECUTE FUNCTION public.polikinlikhastageldi();


--
-- Name: poliklinik tahlilekle; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tahlilekle AFTER UPDATE ON public.poliklinik FOR EACH ROW EXECUTE FUNCTION public.polikinlikhastageldi();


--
-- Name: il yenihastane; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER yenihastane AFTER UPDATE ON public.il FOR EACH ROW EXECUTE FUNCTION public.hastaneyap();


--
-- Name: hastayakini lnk_Hasta_hastayakini; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hastayakini
    ADD CONSTRAINT "lnk_Hasta_hastayakini" FOREIGN KEY ("Hasta_id") REFERENCES public.hasta(hastaid) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kangrubu lnk_Hasta_kangrubu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kangrubu
    ADD CONSTRAINT "lnk_Hasta_kangrubu" FOREIGN KEY ("Hasta_id") REFERENCES public.hasta(hastaid) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: randevu lnk_Hasta_randevu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.randevu
    ADD CONSTRAINT "lnk_Hasta_randevu" FOREIGN KEY ("Hasta_id") REFERENCES public.hasta(hastaid) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: morg lnk_Hastane_Morg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.morg
    ADD CONSTRAINT "lnk_Hastane_Morg" FOREIGN KEY ("Hastane_id") REFERENCES public.hastane("Hastane_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ameliyathane lnk_Hastane_ameliyathane; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ameliyathane
    ADD CONSTRAINT "lnk_Hastane_ameliyathane" FOREIGN KEY ("Hastane_id") REFERENCES public.hastane("Hastane_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: depo lnk_Hastane_depo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depo
    ADD CONSTRAINT "lnk_Hastane_depo" FOREIGN KEY ("Hastane_id") REFERENCES public.hastane("Hastane_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

