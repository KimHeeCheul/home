--insert(Ticket)------------
insert into Ticket values(1,19870);
insert into Ticket values(0,0);


--insert(User_Info)------------
insert into User_Info values('admin@gmail.com','123','admin','01011111111');
insert into User_Info values('guard1@gmail.com','123','김성준','01022222222');
insert into User_Info values('guard2@gmail.com','123','김용찬','01033333333');
insert into User_Info values('guard3@gmail.com','123','김하림','01044444444');
insert into User_Info values('guard4@gmail.com','123','김희철','01055555555');
insert into User_Info values('guard5@gmail.com','123','안소진','01066666666');
insert into User_Info values('guard6@gmail.com','123','유지훈','01077777777');
insert into User_Info values('guard7@gmail.com','123','김희철','01088888888');

-----insert(category)-------
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'액션');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'코미디');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'로맨스');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'호러/스릴러');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'SF/판타지');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'드라마');

-----insert(Movie)-------
insert into movie values(MOVIE_M_NO_SEQ.nextval,'국제시장','윤제균, 황정민','이것은 가족의 따뜻한 이야기','국제시장.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,6);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'공조2','이석훈, 현빈, 유해진','이것은 남북의 합동수사 이야기','공조2.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,1);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'탑건:메버릭','조셉 코신스키, 톰 크루즈','이것은 전역못한 조종사 이야기','탑건.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,1);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'아바타','제임스 카메론, 샘 워싱턴','이것은 2009년 디자인팀 갈린이야기','아바타.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,5);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'그린북 ','피터 패럴티, 비고 모텐슨','이것은 백인과 흑인의 실화이야기','그린북.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,6);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'월-E','이것은 sf애니메이션 가족영화 이야기','앤드류 스탠튼, 벤 버트','월-E.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,5);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'어바웃타임','리차드 커티스, 레이첼 맥아담스','눈감으면 인생이바뀌는 이야기','어바웃타임.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,3);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'타이타닉','제임스 카메론, 레오나르도 디카프리오','배는가라앉지만 디카프리오 얼굴 잘생김..이야기','타이타닉.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,3);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'육사오','박규태, 고경표, 이이경','복권은 당첨됐지만 복권이 북한에 이야기','육사오.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,2);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'정직한후보2','장유정, 라미란, 김무열','너무 솔직한 국회의원 이야기','정직한후보2.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,2);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'놉','조던 필, 다니엘 칼루야','이것은 하늘에 뭐가 있지만 설명을 안해주는 이야기','놉.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,4);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'에일리언','마이클 갤밴','지구 벗어나면 개고생 이야기','에일리언.jpg',0,sysdate,MOVIE_M_NO_SEQ.currval,1,0,4);



-----insert(notice)-------
insert into notice values(NOTICE_N_NO_SEQ.nextval,sysdate,'신규콘텐츠 추가 예정','추가없데이트 예정입니다. 없데이트이기때문에 저희는 아무것도 안할겁니다.',NOTICE_N_NO_SEQ.currval,1,0);
insert into notice values(NOTICE_N_NO_SEQ.nextval,sysdate,'긴급 점검 예정','긴급 점검 예정입니다. 불가피한 점검이니 잠시만 기다려주세요.',NOTICE_N_NO_SEQ.currval,1,0);
insert into notice values(NOTICE_N_NO_SEQ.nextval,sysdate,'4대 명검 예정','없데이트 예정입니다. 없데이트이기때문에 저희는 아무것도 안할겁니다.',NOTICE_N_NO_SEQ.currval,1,0);
insert into notice values(NOTICE_N_NO_SEQ.nextval,sysdate,'시청시 주의사항','시청시 화면이 갑자기 꺼지면 아래에 연락 부탁드립니다.',NOTICE_N_NO_SEQ.currval,1,0);
insert into notice values(NOTICE_N_NO_SEQ.nextval,sysdate,'구독권 관련 안내사항','구독권은 개인 혼자 사용하는 1인용입니다. 여러명이서 사용하시면 계정에 보안이 위험합니다..',NOTICE_N_NO_SEQ.currval,1,0);

-----insert(Subscription)-------
insert into Subscription values(SUBSCRIPTION_S_NO_SEQ.nextval,'2022-07-29','2022-09-28','김성준',1111,1,'guard1@gmail.com');
insert into Subscription values(SUBSCRIPTION_S_NO_SEQ.nextval,'2021-05-15','2022-10-14','김용찬',2222,1,'guard2@gmail.com');
insert into Subscription values(SUBSCRIPTION_S_NO_SEQ.nextval,'2022-07-25','2022-08-24','김하림',3333,0,'guard3@gmail.com');
insert into Subscription values(SUBSCRIPTION_S_NO_SEQ.nextval,'2022-01-16','2022-04-15','김희철',4444,0,'guard4@gmail.com');
insert into Subscription values(SUBSCRIPTION_S_NO_SEQ.nextval,'2021-04-02','2022-01-01','안소진',5555,0,'guard5@gmail.com');
insert into Subscription values(SUBSCRIPTION_S_NO_SEQ.nextval,'2022-06-22','2022-10-21','유지훈',6666,1,'guard6@gmail.com');


-----insert(jjim)-------
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard1@gmail.com',1);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard1@gmail.com',6);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard1@gmail.com',7);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard2@gmail.com',2);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard2@gmail.com',10);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard2@gmail.com',4);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard3@gmail.com',2);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard3@gmail.com',6);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard4@gmail.com',7);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard4@gmail.com',2);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard5@gmail.com',9);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard5@gmail.com',3);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard6@gmail.com',1);
insert into jjim VALUES(JJIM_J_GROUPNO_SEQ.nextval,1,0,'guard6@gmail.com',6);

---insert(prefer)------
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard1@gmail.com',1);
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard1@gmail.com',3);
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard2@gmail.com',2);
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard2@gmail.com',4);
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard3@gmail.com',1);
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard3@gmail.com',2);
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard4@gmail.com',3);
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard4@gmail.com',4);
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard5@gmail.com',1);
insert into prefer VALUES(PREFER_P_GROUPNO_SEQ.nextval,1,0,'guard6@gmail.com',4);

---insert(review)------
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'이영화 재밌었어요','재밌음','100',sysdate,REVIEW_R_NO_SEQ.currval,1,0,1,'guard1@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'이영화 뭐야!!','신기해요','50',sysdate,REVIEW_R_NO_SEQ.currval,1,0,2,'guard2@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'이영화 재미없어요','비추합니다','1',sysdate,REVIEW_R_NO_SEQ.currval,1,0,3,'guard3@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'다시 보고싶은 추천','강추합니다','100',sysdate,REVIEW_R_NO_SEQ.currval,1,0,4,'guard4@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'이세상 최고의 영화','꿀잼이네요','20',sysdate,REVIEW_R_NO_SEQ.currval,1,0,5,'guard5@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'보면서 울었어요','슬퍼요','50',sysdate,REVIEW_R_NO_SEQ.currval,1,0,6,'guard6@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'뭐해라는 두글짜에 니가 보고 싶어','너의 속마음을 알까 우우우~','90',sysdate,REVIEW_R_NO_SEQ.currval,1,0,7,'guard7@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'나는 아니야','쉽지 않을거 같아이야','80',sysdate,REVIEW_R_NO_SEQ.currval,1,0,8,'guard1@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'바람을 타고 날아오르는 새들은','아름다운 태양 속으로','100',sysdate,REVIEW_R_NO_SEQ.currval,1,0,9,'guard2@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'음표가 되어 나네~','향기나는','100',sysdate,REVIEW_R_NO_SEQ.currval,1,0,10,'guard3@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'잼잼','또 보러가야지!','100',sysdate,REVIEW_R_NO_SEQ.currval,1,0,11,'guard4@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'알만한 사람끼리 이정도','아이유_잼잼','100',sysdate,REVIEW_R_NO_SEQ.currval,1,0,12,'guard5@gmail.com');