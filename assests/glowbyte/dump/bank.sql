--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: prod_apps; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA prod_apps;


ALTER SCHEMA prod_apps OWNER TO postgres;

--
-- Name: prod_loans; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA prod_loans;


ALTER SCHEMA prod_loans OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: applications; Type: TABLE; Schema: prod_apps; Owner: postgres
--

CREATE TABLE prod_apps.applications (
    app_id bigint NOT NULL,
    app_date timestamp(0) without time zone,
    cred_amount numeric(18,2),
    cred_term integer,
    cred_object character(40),
    cust_month_income numeric(18,2),
    cust_family_month_income numeric(18,2),
    cust_fio character(100),
    cust_id bigint,
    cust_birth date,
    cust_inn character(20),
    guarantor_flag boolean,
    guarantor_fio character(100),
    guarantor_phone character(20),
    guarantor_birth date,
    pledge_amount numeric(18,2),
    pledge_type character(40),
    interview_datetime timestamp(0) without time zone,
    cust_relation_bank_type character(20),
    app_sale_channel character(20)
);


ALTER TABLE prod_apps.applications OWNER TO postgres;

--
-- Name: clients; Type: TABLE; Schema: prod_loans; Owner: postgres
--

CREATE TABLE prod_loans.clients (
    client_id bigint NOT NULL,
    fio character(100),
    birth_dt date,
    inn character(20),
    citizenship character(20)
);


ALTER TABLE prod_loans.clients OWNER TO postgres;

--
-- Name: collaterals; Type: TABLE; Schema: prod_loans; Owner: postgres
--

CREATE TABLE prod_loans.collaterals (
    collateral_id bigint,
    collateral_type character(20),
    collateral_amt numeric(18,2),
    loan_id bigint
);


ALTER TABLE prod_loans.collaterals OWNER TO postgres;

--
-- Name: loan_balance; Type: TABLE; Schema: prod_loans; Owner: postgres
--

CREATE TABLE prod_loans.loan_balance (
    loan_id bigint NOT NULL,
    od_amt numeric(18,2),
    int_amt numeric(18,2),
    od_overbue_amt numeric(18,2),
    int_overbue_amt numeric(18,2),
    start_dt timestamp(0) without time zone NOT NULL,
    end_dt timestamp(0) without time zone
);


ALTER TABLE prod_loans.loan_balance OWNER TO postgres;

--
-- Name: loans; Type: TABLE; Schema: prod_loans; Owner: postgres
--

CREATE TABLE prod_loans.loans (
    loan_id bigint NOT NULL,
    begin_dt date,
    close_plan_dt date,
    close_fact_dt date,
    client_id bigint,
    repayment_mode character(20),
    product_id bigint,
    interest_rate numeric(12,4)
);


ALTER TABLE prod_loans.loans OWNER TO postgres;

--
-- Name: pledge_x_collateral; Type: TABLE; Schema: prod_loans; Owner: postgres
--

CREATE TABLE prod_loans.pledge_x_collateral (
    pledge_id bigint,
    collateral_id bigint
);


ALTER TABLE prod_loans.pledge_x_collateral OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: prod_loans; Owner: postgres
--

CREATE TABLE prod_loans.products (
    product_id bigint NOT NULL,
    product_3_group character(100),
    product_2_group character(50),
    product_1_group character(20)
);


ALTER TABLE prod_loans.products OWNER TO postgres;

--
-- Data for Name: applications; Type: TABLE DATA; Schema: prod_apps; Owner: postgres
--

COPY prod_apps.applications (app_id, app_date, cred_amount, cred_term, cred_object, cust_month_income, cust_family_month_income, cust_fio, cust_id, cust_birth, cust_inn, guarantor_flag, guarantor_fio, guarantor_phone, guarantor_birth, pledge_amount, pledge_type, interview_datetime, cust_relation_bank_type, app_sale_channel) FROM stdin;
10010010011	2021-09-01 00:00:00	100500.00	5	Выдача средств                          	35000.00	75000.00	Лопатин Иван Иванович                                                                               	100200300	1982-03-02	589463240112        	f	\N	\N	\N	\N	\N	2021-09-01 16:11:00	\N	Онлайн-приложение   
10010010012	2021-09-20 00:00:00	200000.00	12	Кредит на обучение                      	\N	\N	Алексеев Борис Петрович                                                                             	100200301	1984-01-12	345345697678        	t	Тишова Юлия Владимировна                                                                            	+7 (924)3452356     	1984-03-02	\N	\N	2021-09-21 10:23:00	\N	Онлайн-приложение   
10010010013	2021-09-13 00:00:00	55000.00	6	Выдача средств                          	\N	\N	Захарова Людмила Айдаровна                                                                          	100200302	1966-09-04	554567899997        	f	\N	\N	\N	\N	\N	\N	\N	\N
10010010014	2021-09-17 00:00:00	15040000.00	25	Городская недвижимость                  	435000.00	\N	Макарова Елизавета Сергеевна                                                                        	100200303	2001-03-11	348791847556        	t	Федорова Александра Федеровна                                                                       	+7 916 885 43 23    	1999-07-04	21509000.00	Квартира 3 кмнт                         	2021-09-17 17:49:59	Инсайдер            	Офис                
10010010015	2021-09-15 00:00:00	654600.00	15	Оборудование                            	\N	\N	Романова Валентина Александровна                                                                    	100200304	1968-10-16	234568923474        	t	Соловьев Савелий Ильич                                                                              	89256584498         	1983-08-13	150000.00	Типографский станок                     	2021-09-16 09:43:02	\N	\N
10010010016	2021-09-17 00:00:00	2267000.00	20	Авто                                    	120.00	157.00	Нургалиев Алим Мухамбетович                                                                         	100200305	1990-04-07	112435322234        	t	Макаров Эдуард Васильевич                                                                           	\N	1984-02-26	3200000.00	Дача                                    	2021-09-17 12:05:20	\N	Сайт                
10010010017	2021-09-20 00:00:00	559000.00	6	Земельный участок                       	66.00	150.00	Сорокин Павел Леонидович                                                                            	100200306	1984-10-17	345233350097        	f	\N	\N	\N	680000.00	Авто                                    	2021-09-21 13:07:45	\N	Онлайн-приложение   
10010010018	2021-09-01 00:00:00	1547000.00	15	Авто                                    	160.00	\N	Киселев Аффанасий Денисович                                                                         	100200307	1949-08-09	547688972234        	t	Моргунова Ирина Олеговна                                                                            	 +7(935)6122055     	1991-02-16	1599000.00	Авто                                    	2021-09-01 10:31:00	\N	Сайт                
10010010019	2021-09-16 00:00:00	8838925.00	36	Дача                                    	95.00	143.00	Сабиров Рамиль Маратович                                                                            	100200308	1984-12-19	234525680984        	t	Лопанова Арина Васильевна                                                                           	 8 965 12476 99     	1988-12-30	\N	\N	2021-09-16 19:01:56	Сотрудник банка     	\N
10010010020	2021-09-22 00:00:00	502000.00	20	Выдача средств                          	\N	\N	Медведев Юрий Ефремович                                                                             	100200309	1988-03-11	234522220978        	f	\N	\N	\N	\N	\N	2021-09-22 15:14:08	\N	Офис                
10010010021	2021-09-02 00:00:00	35500.00	5	Бытовая техника                         	\N	\N	Николаев Егор Ибрагимович                                                                           	100200310	2000-01-21	398088777766        	f	\N	\N	\N	\N	\N	\N	\N	Онлайн-приложение   
10010010022	2021-09-28 00:00:00	987400.00	24	Авто                                    	65.00	108.00	Лебедев Марк Генадьевич                                                                             	100200311	2002-03-29	546987610001        	t	Нуждин Борис Станиславович                                                                          	 + 7 912 634 77 66  	1965-06-01	\N	\N	2021-09-29 18:14:08	\N	Онлайн-приложение   
10010010023	2021-09-17 00:00:00	2502000.00	35	Коммерческая недвижимость               	210.00	210.00	Федорова Александра Федеровна                                                                       	100200312	1999-07-04	221908593124        	t	Романова Валентина Александровна                                                                    	82354564455         	\N	2830000.00	Квартира 1 кмнт                         	2021-09-13 19:01:01	\N	Сайт                
\.


--
-- Data for Name: clients; Type: TABLE DATA; Schema: prod_loans; Owner: postgres
--

COPY prod_loans.clients (client_id, fio, birth_dt, inn, citizenship) FROM stdin;
100200300	Лопатин Иван Иванович                                                                               	1982-03-02	589463240112        	РФ                  
100200302	Захарова Людмила Айдаровна                                                                          	1966-09-04	554567899997        	Республика Беларусь 
100200304	Романова Валентина Александровна                                                                    	1968-10-16	234568923474        	РФ                  
100200306	Сорокин Павел Леонидович                                                                            	1984-10-17	345233350097        	РФ                  
100200308	Сабиров Рамиль Маратович                                                                            	1984-12-19	234525680984        	РФ                  
100200310	Николаев Егор Ибрагимович                                                                           	2000-01-21	398088777766        	РФ                  
\.


--
-- Data for Name: collaterals; Type: TABLE DATA; Schema: prod_loans; Owner: postgres
--

COPY prod_loans.collaterals (collateral_id, collateral_type, collateral_amt, loan_id) FROM stdin;
98800100	залог               	5790000.00	15556671000
98800101	залог               	9076000.00	15556671001
98800102	залог               	567000.00	15556671003
98800103	поручитель          	260200.00	15556671002
98800104	поручитель          	57500.00	15556671005
\.


--
-- Data for Name: loan_balance; Type: TABLE DATA; Schema: prod_loans; Owner: postgres
--

COPY prod_loans.loan_balance (loan_id, od_amt, int_amt, od_overbue_amt, int_overbue_amt, start_dt, end_dt) FROM stdin;
15556671000	3945600.00	267040.00	0.00	0.00	2021-08-20 00:00:00	2021-09-04 00:00:00
15556671000	3942700.00	261540.00	0.00	0.00	2021-09-05 00:00:00	2999-01-01 00:00:00
15556671001	357800.00	24780.00	3670.00	550.00	2021-08-20 00:00:00	2999-01-01 00:00:00
15556671002	134500.00	22760.00	0.00	0.00	2021-08-05 00:00:00	2021-09-09 00:00:00
15556671002	134500.00	25678.00	0.00	0.00	2021-09-10 00:00:00	2021-09-11 00:00:00
15556671002	128650.00	20653.00	0.00	0.00	2021-09-12 00:00:00	2999-01-01 00:00:00
15556671003	0.00	0.00	0.00	0.00	2021-08-05 00:00:00	2999-01-01 00:00:00
15556671004	0.00	0.00	189034.00	36905.00	2021-07-31 00:00:00	2999-01-01 00:00:00
15556671005	0.00	0.00	0.00	0.00	2021-06-30 00:00:00	2999-01-01 00:00:00
\.


--
-- Data for Name: loans; Type: TABLE DATA; Schema: prod_loans; Owner: postgres
--

COPY prod_loans.loans (loan_id, begin_dt, close_plan_dt, close_fact_dt, client_id, repayment_mode, product_id, interest_rate) FROM stdin;
15556671000	2019-01-20	2029-11-30	\N	100200300	аннуитет            	111117	12.5000
15556671001	2021-04-05	2023-04-06	\N	100200302	дисконт             	111121	7.8000
15556671002	2021-08-07	2022-09-08	\N	100200304	аннуитет            	111119	11.3000
15556671003	2020-10-31	2022-05-01	2021-08-05	100200306	аннуитет            	111120	10.0000
15556671004	2016-04-24	2021-04-25	\N	100200308	аннуитет            	111120	9.4000
15556671005	2020-12-05	2021-12-06	2021-06-30	100200310	аннуитет            	111122	6.9000
\.


--
-- Data for Name: pledge_x_collateral; Type: TABLE DATA; Schema: prod_loans; Owner: postgres
--

COPY prod_loans.pledge_x_collateral (pledge_id, collateral_id) FROM stdin;
70070000	98800100
70070001	98800101
70070002	98800102
70070003	98800102
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: prod_loans; Owner: postgres
--

COPY prod_loans.products (product_id, product_3_group, product_2_group, product_1_group) FROM stdin;
111116	Ипотека "Хуторок" на строительство дачи                                                             	Ипотека "Хуторок"                                 	Ипотека             
111117	Ипотека "Теремок" для молодых семей                                                                 	Ипотека "Теремок"                                 	Ипотека             
111118	Ипотека "Теремок" совместно с застройщиком                                                          	Ипотека "Теремок"                                 	Ипотека             
111119	Потребительский кредит "Электро"                                                                    	Потребительский кредит "Электро"                  	Потребительский     
111120	Потребительский кредит без обеспечения                                                              	Потребительский кредит без обеспечения            	Потребительский     
111121	Автокредит "Рули!" под авто отечественного производства                                             	Автокредит "Рули!"                                	Автокредит          
111122	Автокредит "Рули!" под спортивное авто                                                              	Автокредит "Рули!"                                	Автокредит          
\.


--
-- Name: applications applications_pkey; Type: CONSTRAINT; Schema: prod_apps; Owner: postgres
--

ALTER TABLE ONLY prod_apps.applications
    ADD CONSTRAINT applications_pkey PRIMARY KEY (app_id);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: prod_loans; Owner: postgres
--

ALTER TABLE ONLY prod_loans.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (client_id);


--
-- Name: loan_balance loan_balance_pkey; Type: CONSTRAINT; Schema: prod_loans; Owner: postgres
--

ALTER TABLE ONLY prod_loans.loan_balance
    ADD CONSTRAINT loan_balance_pkey PRIMARY KEY (loan_id, start_dt);


--
-- Name: loans loans_pkey; Type: CONSTRAINT; Schema: prod_loans; Owner: postgres
--

ALTER TABLE ONLY prod_loans.loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (loan_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: prod_loans; Owner: postgres
--

ALTER TABLE ONLY prod_loans.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: SCHEMA prod_apps; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA prod_apps TO gbc;


--
-- Name: SCHEMA prod_loans; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA prod_loans TO gbc;


--
-- Name: TABLE applications; Type: ACL; Schema: prod_apps; Owner: postgres
--

GRANT ALL ON TABLE prod_apps.applications TO gbc;


--
-- Name: TABLE clients; Type: ACL; Schema: prod_loans; Owner: postgres
--

GRANT ALL ON TABLE prod_loans.clients TO gbc;


--
-- Name: TABLE collaterals; Type: ACL; Schema: prod_loans; Owner: postgres
--

GRANT ALL ON TABLE prod_loans.collaterals TO gbc;


--
-- Name: TABLE loan_balance; Type: ACL; Schema: prod_loans; Owner: postgres
--

GRANT ALL ON TABLE prod_loans.loan_balance TO gbc;


--
-- Name: TABLE loans; Type: ACL; Schema: prod_loans; Owner: postgres
--

GRANT ALL ON TABLE prod_loans.loans TO gbc;


--
-- Name: TABLE pledge_x_collateral; Type: ACL; Schema: prod_loans; Owner: postgres
--

GRANT ALL ON TABLE prod_loans.pledge_x_collateral TO gbc;


--
-- Name: TABLE products; Type: ACL; Schema: prod_loans; Owner: postgres
--

GRANT ALL ON TABLE prod_loans.products TO gbc;


--
-- PostgreSQL database dump complete
--

