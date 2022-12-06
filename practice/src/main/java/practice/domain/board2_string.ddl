DROP TABLE board2 CASCADE CONSTRAINTS;

CREATE TABLE board2(
		b_no                          		NUMBER(10)		 NULL ,
		b_title                       		VARCHAR2(1000)		 NULL ,
		b_write                       		VARCHAR2(1000)		 NULL ,
		b_content                     		VARCHAR2(1000)		 NULL ,
		b_date                        		VARCHAR2(100)		 NULL 
);



ALTER TABLE board2 ADD CONSTRAINT IDX_board2_PK PRIMARY KEY (b_no);

