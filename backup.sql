--
-- PostgreSQL database dump
--

\restrict UQ7MVnGi4IqgwU4Cs4WMMQdtgFJctr1bPkL4y4FGC5pKJkBaClq2ngTLKLPUZHn

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course_name character varying(50),
    fee integer
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- Name: enrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrollments (
    enrollment_id integer NOT NULL,
    student_id integer,
    course_id integer,
    marks integer
);


ALTER TABLE public.enrollments OWNER TO postgres;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    name character varying(50),
    age integer,
    city character varying(50)
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, course_name, fee) FROM stdin;
101	DBMS	5000
102	Python	4500
103	Java	5500
104	Web Development	6000
105	Data Structures	6500
\.


--
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrollments (enrollment_id, student_id, course_id, marks) FROM stdin;
1	1	101	92
2	1	102	85
3	2	101	78
4	2	105	88
5	3	102	91
6	3	104	76
7	4	101	95
8	4	103	82
9	5	102	73
10	5	105	90
11	6	104	87
12	6	102	94
13	7	103	79
14	7	105	92
15	8	101	89
16	8	104	81
17	9	105	96
18	9	101	84
19	10	102	88
20	10	103	91
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, name, age, city) FROM stdin;
1	Arman	21	Rajkot
2	Rahul	22	Ahmedabad
3	Priya	20	Surat
4	Neha	23	Rajkot
5	Amit	24	Ahmedabad
6	Riya	21	Vadodara
7	Karan	25	Surat
8	Meera	22	Rajkot
9	Dev	23	Ahmedabad
10	Anjali	20	Vadodara
\.


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- PostgreSQL database dump complete
--

\unrestrict UQ7MVnGi4IqgwU4Cs4WMMQdtgFJctr1bPkL4y4FGC5pKJkBaClq2ngTLKLPUZHn

