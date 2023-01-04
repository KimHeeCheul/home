DROP TABLE Subscription CASCADE CONSTRAINTS;
DROP TABLE Review CASCADE CONSTRAINTS;
DROP TABLE Ticket CASCADE CONSTRAINTS;
DROP TABLE Jjim CASCADE CONSTRAINTS;
DROP TABLE Movie CASCADE CONSTRAINTS;
DROP TABLE Prefer CASCADE CONSTRAINTS;
DROP TABLE Notice CASCADE CONSTRAINTS;
DROP TABLE User_Info CASCADE CONSTRAINTS;
DROP TABLE Category CASCADE CONSTRAINTS;

CREATE TABLE Category(
		cg_no                         		NUMBER(10)		 NOT NULL,
		cg_name                       		VARCHAR2(50)		 NOT NULL
);

DROP SEQUENCE Category_cg_no_SEQ;

CREATE SEQUENCE Category_cg_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE User_Info(
		u_email                       		VARCHAR2(50)		 NOT NULL,
		u_pass                        		VARCHAR2(20)		 NOT NULL,
		u_name                        		VARCHAR2(20)		 NOT NULL,
		u_phone                       		VARCHAR2(50)		 NULL 
);


CREATE TABLE Notice(
		n_no                          		NUMBER(10)		 NOT NULL,
		n_date                        		DATE		 DEFAULT sysdate		 NULL ,
		n_title                       		VARCHAR2(500)		 NOT NULL,
		n_content                     		VARCHAR2(2000)		 NOT NULL,
		n_groupno                     		NUMBER(10)		 NULL ,
		n_step                        		NUMBER(10)		 DEFAULT 0		 NULL ,
		n_depth                       		NUMBER(10)		 DEFAULT 0		 NULL 
);

DROP SEQUENCE Notice_n_no_SEQ;

CREATE SEQUENCE Notice_n_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE Prefer(
		p_groupno                     		NUMBER(10)		 NULL ,
		p_step                        		NUMBER(10)		 DEFAULT 0		 NULL ,
		p_depth                       		NUMBER(10)		 DEFAULT 0		 NULL ,
		u_email                       		VARCHAR2(50)		 NULL ,
		cg_no                         		NUMBER(10)		 NULL 
);
DROP SEQUENCE Prefer_p_groupno_SEQ;

CREATE SEQUENCE Prefer_p_groupno_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE Movie(
		m_no                          		NUMBER(10)		 NOT NULL,
		m_name                        		VARCHAR2(50)		 NOT NULL,
		m_actor                       		VARCHAR2(100)		 NULL ,
		m_info                        		VARCHAR2(2000)		 NOT NULL,
		m_image                       		VARCHAR2(500)		 NULL ,
		m_count                       		NUMBER(10)		 DEFAULT 0		 NULL ,
		m_date                        		DATE		 NULL ,
		m_url                         		VARCHAR2(500)		 NULL ,
		m_groupno                     		NUMBER(10)		 NULL ,
		m_step                        		NUMBER(10)		 DEFAULT 0		 NULL ,
		m_depth                       		NUMBER(10)		 DEFAULT 0		 NULL ,
		cg_no                         		NUMBER(10)		 NULL 
);

DROP SEQUENCE Movie_m_no_SEQ;

CREATE SEQUENCE Movie_m_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE Jjim(
		j_groupno                     		NUMBER(10)		 NULL ,
		j_step                        		NUMBER(10)		 DEFAULT 0		 NULL ,
		j_depth                       		NUMBER(10)		 DEFAULT 0		 NULL ,
		u_email                       		VARCHAR2(50)		 NULL ,
		m_no                          		NUMBER(10)		 NULL 
);
DROP SEQUENCE Jjim_j_groupno_SEQ;

CREATE SEQUENCE Jjim_j_groupno_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE Ticket(
		t_no                          		NUMBER(10)		 NULL ,
		t_price                       		VARCHAR2(50)		 NULL 
);

DROP SEQUENCE Ticket_t_no_SEQ;

CREATE SEQUENCE Ticket_t_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE Review(
		r_no                          		NUMBER(10)		 NOT NULL,
		r_title                       		VARCHAR2(500)		 NULL ,
		r_content                     		VARCHAR2(2000)		 NULL ,
		r_grade                       		NUMBER(20)		 NULL ,
		r_date                        		DATE		 DEFAULT sysdate		 NULL ,
		r_groupno                     		NUMBER(10)		 NULL ,
		r_step                        		NUMBER(10)		 DEFAULT 0		 NULL ,
		r_depth                       		NUMBER(10)		 DEFAULT 0		 NULL ,
		m_no                          		NUMBER(10)		 NULL ,
		u_email                       		VARCHAR2(50)		 NULL 
);

DROP SEQUENCE Review_r_no_SEQ;

CREATE SEQUENCE Review_r_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE Subscription(
		s_no                          		NUMBER(10)		 NULL ,
		s_start                       		DATE		 DEFAULT sysdate		 NULL ,
		s_end                         		DATE		 NULL ,
		s_cardName                    		VARCHAR2(20)		 NULL ,
		s_cardNumber                  		NUMBER(20)		 NULL ,
		t_no                          		NUMBER(10)		 NULL ,
		u_email                       		VARCHAR2(50)		 NULL 
);

DROP SEQUENCE Subscription_s_no_SEQ;

CREATE SEQUENCE Subscription_s_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


ALTER TABLE Category ADD CONSTRAINT IDX_Category_PK PRIMARY KEY (cg_no);

ALTER TABLE User_Info ADD CONSTRAINT IDX_User_Info_PK PRIMARY KEY (u_email);

ALTER TABLE Notice ADD CONSTRAINT IDX_Notice_PK PRIMARY KEY (n_no);

ALTER TABLE Prefer ADD CONSTRAINT IDX_Prefer_FK0 FOREIGN KEY (u_email) REFERENCES User_Info (u_email) ON DELETE CASCADE;
ALTER TABLE Prefer ADD CONSTRAINT IDX_Prefer_FK1 FOREIGN KEY (cg_no) REFERENCES Category (cg_no);

ALTER TABLE Movie ADD CONSTRAINT IDX_Movie_PK PRIMARY KEY (m_no);
ALTER TABLE Movie ADD CONSTRAINT IDX_Movie_FK0 FOREIGN KEY (cg_no) REFERENCES Category (cg_no) ON DELETE CASCADE;

ALTER TABLE Jjim ADD CONSTRAINT IDX_Jjim_FK0 FOREIGN KEY (u_email) REFERENCES User_Info (u_email) ON DELETE CASCADE;
ALTER TABLE Jjim ADD CONSTRAINT IDX_Jjim_FK1 FOREIGN KEY (m_no) REFERENCES Movie (m_no) ON DELETE CASCADE;

ALTER TABLE Ticket ADD CONSTRAINT IDX_Ticket_PK PRIMARY KEY (t_no);

ALTER TABLE Review ADD CONSTRAINT IDX_Review_PK PRIMARY KEY (r_no);
ALTER TABLE Review ADD CONSTRAINT IDX_Review_FK0 FOREIGN KEY (m_no) REFERENCES Movie (m_no) ON DELETE CASCADE;
ALTER TABLE Review ADD CONSTRAINT IDX_Review_FK1 FOREIGN KEY (u_email) REFERENCES User_Info (u_email) ON DELETE CASCADE;

ALTER TABLE Subscription ADD CONSTRAINT IDX_Subscription_PK PRIMARY KEY (s_no);
ALTER TABLE Subscription ADD CONSTRAINT IDX_Subscription_FK0 FOREIGN KEY (t_no) REFERENCES Ticket (t_no) ON DELETE CASCADE;
ALTER TABLE Subscription ADD CONSTRAINT IDX_Subscription_FK1 FOREIGN KEY (u_email) REFERENCES User_Info (u_email) ON DELETE CASCADE;

