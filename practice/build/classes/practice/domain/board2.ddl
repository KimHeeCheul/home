DROP TABLE board2 CASCADE CONSTRAINTS;

CREATE TABLE board2(
		b_no                          		NUMBER(10)		 NOT NULL,
		b_title                       		VARCHAR2(1000)		 NULL ,
		b_write                       		VARCHAR2(1000)		 NULL ,
		b_content                     		VARCHAR2(1000)		 NULL ,
		b_date                        		VARCHAR2(100)		 DEFAULT sysdate		 NULL 
);

DROP SEQUENCE board2_b_no_SEQ;

CREATE SEQUENCE board2_b_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

ALTER TABLE board2 ADD CONSTRAINT IDX_board2_PK PRIMARY KEY (b_no);

