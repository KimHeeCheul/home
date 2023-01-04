--insert(Ticket)------------
insert into Ticket values(1,19870);
insert into Ticket values(0,0);


--insert(User_Info)------------
insert into User_Info values('admin@gmail.com','a123123!','admin','01011111111');
insert into User_Info values('guard1@gmail.com','a123123!','김성준','01022222222');
insert into User_Info values('guard2@gmail.com','a123123!','김용찬','01033333333');
insert into User_Info values('guard3@gmail.com','a123123!','김하림','01044444444');
insert into User_Info values('guard4@gmail.com','a123123!','김희철','01055555555');
insert into User_Info values('guard5@gmail.com','a123123!','안소진','01066666666');
insert into User_Info values('guard6@gmail.com','a123123!','유지훈','01077777777');
insert into User_Info values('guard7@gmail.com','a123123!','김희철','01088888888');

-----insert(category)-------
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'액션');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'코미디');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'로맨스');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'공포 미스터리');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'SF 판타지');
insert into category values(CATEGORY_CG_NO_SEQ.nextval,'드라마');

-----insert(Movie)-------
--드라마
insert into movie values(MOVIE_M_NO_SEQ.nextval,'국제시장','윤제균, 황정민','이것은 가족의 따뜻한 이야기','국제시장.jpg',0,'2014.12.17','https://www.youtube.com/embed/BBEDtovULHY',MOVIE_M_NO_SEQ.currval,1,0,6);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'그린북','피터 패럴티, 비고 모텐슨','이것은 백인과 흑인의 실화이야기','그린북.jpg',0,'2019.01.09','https://www.youtube.com/embed/juHmLAQVmOE',MOVIE_M_NO_SEQ.currval,1,0,6);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'지금, 이대로가 좋아요','부지영, 공효진, 신민아','“그냥 사는 거야. 너도, 나도” 외모, 성격, 취향은 물론 사고방식도 너무 다른 자매 명주(공효진)와 명은(신민아). 아버지가 다르다는 이유로 이미 두 사람 사이에는 오래전부터 좁힐 수 없는 거리가 있다. 서로 남보다 못한 자매로 살아가고 있던 어느 날, 갑작스러운 어머니의 죽음을 계기로 명주와 명은은 다시 만나게 되고 이미 오래전에 자취를 감춘 명은의 아버지를 찾아 여행을 떠나는데…','지금, 이대로가 좋아요.jpg',0,'2022.09.22','https://www.youtube.com/embed/Zwa3ieiSfko',MOVIE_M_NO_SEQ.currval,1,0,6);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'다 잘된 거야','프랑소와 오종, 소피 마르소, 앙드레 뒤솔리에, 제랄딘 팔리아스','“도와줘 끝낼 수 있게” 갑자기 쓰러진 아빠 ‘앙드레’로부터 자신의 죽음을 도와 달라고 부탁받은 딸 ‘엠마뉘엘’. 끝을 선택하고 시작된 조금 다른 작별에 관한 이야기를 담은 프랑수아 오종 감독의 품위 있는 마스터피스','다 잘된 거야.jpg',0,'2022.09.07','https://www.youtube.com/embed/vWQN18H9mbs',MOVIE_M_NO_SEQ.currval,1,0,6);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'보일링 포인트','필립 바랜티니, 스테판 그레이엄','웰컴 투 헬’s 키친! 90분간 쉴 틈 없이 몰아치는 현장 스릴러 365일 중 가장 바쁜 크리스마스, 런던의 고급 레스토랑. 셰프 ‘앤디’는 사고 없이 음식과 직원, 손님 모두를 살펴야 한다. 쏟아지는 주문으로 정신없는 가운데 반갑지 않은 위생 관리관의 급습과 입맛 까다로운 평론가의 눈치까지 보게 되고, 여기에 상황을 아는지 모르는지 직원들은 서로 싸우기까지 한다. 도저히 통제되지 않는 현장에 ‘앤디’는 점점 끓어오르기 시작하는데… 단 한 번의 테이크로 질주하는 키친 서스펜스를 경험하라!','보일링 포인트.jpg',0,'2022.08.04','https://www.youtube.com/embed/Zz8kM9EMXcA',MOVIE_M_NO_SEQ.currval,1,0,6);

--액션
insert into movie values(MOVIE_M_NO_SEQ.nextval,'공조2','이석훈, 현빈, 유해진','이것은 남북의 합동수사 이야기','공조2.jpg',0,'2022.09.07','https://www.youtube.com/embed/fzUKUfHeIYA',MOVIE_M_NO_SEQ.currval,1,0,1);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'탑건_메버릭','조셉 코신스키, 톰 크루즈','이것은 전역못한 조종사 이야기','탑건.jpg',0,'2022.06.22','https://www.youtube.com/embed/Mrj9XACVJ8U',MOVIE_M_NO_SEQ.currval,1,0,1);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'늑대사냥','김홍선, 서인국, 장동윤, 최귀화','인간 스스로 먹잇감이 되다 동남아시아로 도피한 인터폴 수배자들을 이송할 움직이는 교도소 ‘프론티어 타이탄’. 극악무도한 이들과 베테랑 형사들이 필리핀 마닐라 항구에 모이고 탈출을 꿈꾸는 종두(서인국), 한국으로 돌아가야만 하는 도일(장동윤)을 비롯해 이들은 각자의 목적과 경계심을 품고 탑승한다. 한국으로 향하던 중, 태평양 한 가운데에서 이들에게는 지금까지 보지 못한 극한의 상황과 마주하게 되는데… 태평양 한 가운데의 지옥, 누가 살아남을 것인가?','늑대사냥.jpg',0,'2022.09.21','https://www.youtube.com/embed/Hkd_9kop8B0',MOVIE_M_NO_SEQ.currval,1,0,1);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'불릿 트레인','데이빗 레이치, 브래드 피트, 조이 킹, 애런 존슨','"탑승을 환영합니다" 승차는 자유, 하차는 불가?! 초고속 열차에서 벌어지는 "레이디버그"(브래드 피트)와 고스펙 킬러들의 피 튀기는 전쟁! 운이 없기로 유명한 킬러 "레이디버그"(브래드 피트)는 초고속 열차에 탑승해 의문의 서류 가방을 가져오라는 미션을 받는다. 생각보다 쉽게 미션을 클리어한 후 열차에서 내리려는 그를 가로막는 것이 있었으니, 그것은 바로 전세계에서 몰려든 초특급 킬러들! 열차에서 내릴 수 없다면 목숨을 걸고 가방을 지켜야만 한다. 과연 "레이디버그"는 무사히 열차에서 내려 미션을 완수할 수 있을까? 누구도 멈출 수 없는 논스톱 액션 블록버스터 <불릿 트레인>에 탑승하라!','불릿트레인.jpg',0,'2022.08.24','https://www.youtube.com/embed/vR5cn7O46TU',MOVIE_M_NO_SEQ.currval,1,0,1);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'한산_한산 용의 출현','김한민, 박해일, 변요한, 안성기','나라의 운명을 바꿀 압도적 승리의 전투가 시작된다! 1592년 4월, 조선은 임진왜란 발발 후 단 15일 만에 왜군에 한양을 빼앗기며 절체절명의 위기에 놓인다. 조선을 단숨에 점령한 왜군은 명나라로 향하는 야망을 꿈꾸며 대규모 병역을 부산포로 집결시킨다. 한편, 이순신 장군은 연이은 전쟁의 패배와 선조마저 의주로 파천하며 수세에 몰린 상황에서도 조선을 구하기 위해 전술을 고민하며 출전을 준비한다. 하지만 앞선 전투에서 손상을 입은 거북선의 출정이 어려워지고, 거북선의 도면마저 왜군의 첩보에 의해 도난 당하게 되는데… 왜군은 연승에 힘입어 그 우세로 한산도 앞바다로 향하고, 이순신 장군은 조선의 운명을 가를 전투를 위해 필사의 전략을 준비한다. 1592년 여름, 음력 7월 8일 한산도 앞바다, 압도적인 승리가 필요한 조선의 운명을 건 지상 최고의 해전이 펼쳐진다.','한산 용의 출현.jpg',0,'2022.07.27','https://www.youtube.com/embed/GduEtmvwcI0',MOVIE_M_NO_SEQ.currval,1,0,1);

--SF
insert into movie values(MOVIE_M_NO_SEQ.nextval,'아바타','제임스 카메론, 샘 워싱턴','이것은 2009년 디자인팀 갈린이야기','아바타.jpg',0,'2022.09.21','https://www.youtube.com/embed/IZpaMT1H85o',MOVIE_M_NO_SEQ.currval,1,0,5);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'월-E','앤드류 스탠튼, 벤 버트','이것은 sf애니메이션 가족영화 이야기','월-E.jpg',0,'2008.08.06','https://www.youtube.com/embed/7IFmaMaK2RA',MOVIE_M_NO_SEQ.currval,1,0,5);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'그래비티','알폰소 쿠아론, 산드라 블록, 조지 클루니, 에드 해리스','허블 우주망원경을 수리하기 위해 우주를 탐사하던 라이언 스톤 박사는 폭파된 인공위성의 잔해와 부딪히면서 소리도 산소도 없는 우주 한 가운데에 홀로 남겨지는데…','그래비티.jpg',0,'2018.08.29','https://www.youtube.com/embed/ql8WbM3Qea8',MOVIE_M_NO_SEQ.currval,1,0,5);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'매트릭스','릴리 워쇼스키, 라나 워쇼스키, 키아누 리브스, 로렌스 피시번','서기 2199년, 인공지능 AI에 의해 인류가 재배되고 있다! 인간의 기억마저 AI에 의해 입력되고 삭제 되는 세상.진짜보다 더 진짜 같은 가상 현실 "매트릭스" 그 속에서 진정한 현실을 인식할 수 없게 재배되는 인간들. 그 "매트릭스"를 빠져 나오면서 AI에게 가장 위험한 인물이 된 "모피어스"는 자신과 함께 인류를 구할 마지막 영웅 "그"를 찾아 헤맨다. 마침내 "모피어스"는 낮에는 평범한 회사원으로, 밤에는 해커로 활동하는 청년 "네오"를 "그"로 지목하는데… 꿈에서 깨어난 자들, 이제 그들이 만드는 새로운 세상이 열린다!','매트릭스.jpg',0,'2019.09.25','https://www.youtube.com/embed/9mn4seqI8Vs',MOVIE_M_NO_SEQ.currval,1,0,5);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'레미니센스','리사 조이, 휴 잭맨, 레베카 퍼거슨, 탠디 뉴튼','모든 단서는 기억 속에 있다! 해수면의 상승으로 도시의 절반이 바다에 잠긴 가까운 미래. 사람들의 머릿속을 엿보는 탐정 닉은 고객들이 잃어버린 기억에 다가가게 도와주며 위험하지만 매혹적인 세계인 과거 속을 항해한다. 단조롭던 닉의 인생은 잃어버린 귀걸이를 찾으려는 새로운 고객 메이의 등장으로 영원히 바뀌게 된다. 닉은 메이와 운명처럼 사랑에 빠지지만, 어느 날 메이는 흔적도 없이 사라져 버린다. 메이의 실종에 대한 진실을 찾고자 분투하던 닉은 숨겨진 잔혹한 음모를 밝혀내고, 결국 이 질문에 대해 대답을 해야만 하는데…. “사랑하는 이를 곁에 두기 위해, 당신은 무엇까지 할 수 있는가?”','레미니센스.jpg',0,'2021.08.25','https://www.youtube.com/embed/jLpKjmEko2M',MOVIE_M_NO_SEQ.currval,1,0,5);

--공포/미스터리
insert into movie values(MOVIE_M_NO_SEQ.nextval,'놉','조던 필, 다니엘 칼루야','이것은 하늘에 뭐가 있지만 설명을 안해주는 이야기','놉.jpg',0,'2022.08.17','https://www.youtube.com/embed/N03Y5xQp0Cw',MOVIE_M_NO_SEQ.currval,1,0,4);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'비스트','발타자르 코루마쿠르, 이드리스 엘바,샬토 코플리 외','두 딸 메어, 노라와 함께 시간을 보내기 위해 친구 마틴이 있는 남아프리카를 찾은 의사 네이트. 그러나 즐거운 여행도 잠시, 처참히 죽어 있는 마을 사람들을 목격한 이들은 곧이어 이 모든 상황을 벌인 사자에게 맹목적으로 쫓기기 시작한다. 무전조차 터지지 않는 고립된 지역에서 마을을 완전히 장악해버린 사자로부터 벗어나기 위해 서로 의지하며 고군분투하는데… 가족 그리고 생존을 위한 사투가 시작된다!','비스트.jpg',0,'2022.09.14','https://www.youtube.com/embed/xT76LsDubZ0',MOVIE_M_NO_SEQ.currval,1,0,4);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'기기묘묘','이탁, 남순아, 심규호, 오민애, 김재화, 한해인','땅을 둘러 싼 이웃들의 다툼, 엄마와 딸의 기이한 관계, 낙향한 청년과 괴인의 기묘한 만남, 아들 세대의 암울한 미래를 직감한 아버지의 고군분투기 불안한 사회, 불안한 사람들을 소환한 판타스틱 스릴러','기기묘묘.jpg',0,'2022.09.22','https://www.youtube.com/embed/ZOlOQgO1N8Y',MOVIE_M_NO_SEQ.currval,1,0,4);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'뒤틀린 집','강동헌, 서영희, 김보민, 김민재','“이 집 뒤틀린 거.. 아세요?” 피치 못할 사정으로 외딴집에 이사 오게 된 가족. 엄마 명혜는 이사 온 첫 날부터 이 집이 뒤틀렸다고 전하는 이웃집 여자의 경고와 창고에서 들리는 불길한 소리로 인해 밤잠을 설친다. 아빠 현민은 그런 명혜를 신경쇠약으로만 여기고, 둘째 딸 희우는 가족들이 보지 못하는 무언가를 마주하지만 그 사실을 숨긴다. 그러던 어느 날, 알 수 없는 기운에 이끌려 잠겨 있던 창고문을 열고 만 명혜는 무언가에 사로잡힌 듯 다른 사람처럼 행동하기 시작하는데… 뒤틀린 틈에서 시작된 비극이 가족을 집어삼키려 한다!','뒤틀린 집.jpg',0,'2022.07.13','https://www.youtube.com/embed/R806wTaIFLk',MOVIE_M_NO_SEQ.currval,1,0,4);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'곡성','나홍진, 곽도원,황정민,쿠니무라 준 외','낯선 외지인(쿠니무라 준)이 나타난 후 벌어지는 의문의 연쇄 사건들로 마을이 발칵 뒤집힌다. 경찰은 집단 야생 버섯 중독으로 잠정적 결론을 내리지만 모든 사건의 원인이 그 외지인 때문이라는 소문과 의심이 걷잡을 수 없이 퍼져 나간다. 경찰 종구(곽도원)는 현장을 목격했다는 여인 무명(천우희)을 만나면서 외지인에 대한 소문을 확신하기 시작한다. 딸 효진(김환희)이 피해자들과 비슷한 증상으로 아파오기 시작하자 다급해진 종구. 외지인을 찾아 난동을 부리고, 무속인 일광(황정민)을 불러들이는데...','곡성.jpg',0,'2016.05.12','https://www.youtube.com/embed/7UVAfhv_FFs',MOVIE_M_NO_SEQ.currval,1,0,4);

--로맨스
insert into movie values(MOVIE_M_NO_SEQ.nextval,'뷰티 인사이드','백종열,한효주,김대명,도지한 외','남자, 여자, 아이, 노인.. 심지어 외국인까지! 자고 일어나면 매일 다른 모습으로 변하는 남자, 우진. 그에게 처음으로 비밀을 말하고 싶은 단 한 사람이 생겼다. 드디어 D-DAY! 우진은 그녀에게 자신의 마음을 고백하기로 하는데…', '뷰티 인사이드.jpg',0,'2015.08.20','https://www.youtube.com/embed/ESPFTY8Y-xM',MOVIE_M_NO_SEQ.currval,1,0,3);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'헤어질 결심','박찬욱,박해일,탕웨이,이정현 외','산 정상에서 추락한 한 남자의 변사 사건. 담당 형사 해준(박해일)은 사망자의 아내 서래(탕웨이)와 마주하게 된다. "산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐." 남편의 죽음 앞에서 특별한 동요를 보이지 않는 서래. 경찰은 보통의 유가족과는 다른 서래를 용의선상에 올린다. 해준은 사건 당일의 알리바이 탐문과 신문, 잠복수사를 통해 서래를 알아가면서 그녀에 대한 관심이 점점 커져가는 것을 느낀다. 한편, 좀처럼 속을 짐작하기 어려운 서래는 상대가 자신을 의심한다는 것을 알면서도 조금의 망설임도 없이 해준을 대하는데…. 진심을 숨기는 용의자 용의자에게 의심과 관심을 동시에 느끼는 형사 그들의 <헤어질 결심>','헤어질 결심.jpg',0,'2022.06.29','https://www.youtube.com/embed/A33AdB4u8GQ',MOVIE_M_NO_SEQ.currval,1,0,3);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'감동주의보','김우석,홍수아,최웅 외','감동받으면 죽는다고?! 희귀질환인 감동병을 앓는 컬링 천재 보영(홍수아). 평생을 함께하고 싶은 시골청년 철기(최웅)를 만나 인생 최고의 순간들을 맞이한다. 어느날, 코피가 멈추게 하는 방법(?)을 찾게 되면서 포기했던 컬링을 다시 도전하게 되는데… 보영은 감동병을 이기고 꿈과 사랑 두 마리 토끼를 다 잡을 수 있을까?','감동주의보.jpg',0,'2022.06.22','https://www.youtube.com/embed/fEyjnT5vq6c',MOVIE_M_NO_SEQ.currval,1,0,3);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'건축학개론','이용주,엄태웅,한가인,이제훈 외','산 정상에서 추락한 한 남자의 변사 사건. 담당 형사 해준(박해일)은 사망자의 아내 서래(탕웨이)와 마주하게 된다. "산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐." 남편의 죽음 앞에서 특별한 동요를 보이지 않는 서래. 경찰은 보통의 유가족과는 다른 서래를 용의선상에 올린다. 해준은 사건 당일의 알리바이 탐문과 신문, 잠복수사를 통해 서래를 알아가면서 그녀에 대한 관심이 점점 커져가는 것을 느낀다. 한편, 좀처럼 속을 짐작하기 어려운 서래는 상대가 자신을 의심한다는 것을 알면서도 조금의 망설임도 없이 해준을 대하는데…. 진심을 숨기는 용의자 용의자에게 의심과 관심을 동시에 느끼는 형사 그들의 <헤어질 결심>','건축학개론.jpg',0,'2012.03.22','https://www.youtube.com/embed/mUpJ18MRe8s',MOVIE_M_NO_SEQ.currval,1,0,3);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'연애 빠진 로맨스',' 정가영,전종서,손석구 외 ','일도 연애도 마음대로 되지 않는 스물아홉 자영(전종서). 전 남친과의 격한 이별 후 호기롭게 연애 은퇴를 선언했지만 참을 수 없는 외로움에 못 이겨 최후의 보루인 데이팅 어플로 상대를 검색한다. 일도 연애도 호구 잡히기 일쑤인 서른셋 우리(손석구). 뒤통수 제대로 맞은 연애의 아픔도 잠시 편집장으로부터 19금 칼럼을 떠맡게 되고 데이팅 어플에 반강제로 가입하게 된다. 그렇게 설 명절 아침! 이름, 이유, 마음 다 감추고 만난 자영과 우리. 1도 기대하지 않았지만, 1일 차부터 둘은 서로에게 급속도로 빠져들게 되고 연애인 듯 아닌 듯 미묘한 관계 속에 누구 하나 속마음을 쉽게 터놓지 못하는데... 이게 연애가 아니면 도대체 뭔데? 발 빼려다 푹 빠졌다!','연애 빠진 로맨스.jpg',0,'2021.11.24','https://www.youtube.com/embed/dWEQjU3GCE0',MOVIE_M_NO_SEQ.currval,1,0,3);

--코미디
insert into movie values(MOVIE_M_NO_SEQ.nextval,'육사오','박규태,고경표,이이경,음문석 외 ','“45개 번호 중에 6개 맞히면 1등인 육사오라는 종이쪼가리, 내가 주웠지 말입니다” 우연히 1등 당첨 로또를 주운 말년 병장 천우. 심장이 터질듯한 설렘도 잠시, 순간의 실수로 바람을 타고 군사분계선을 넘어간 로또. 바사삭 부서진 멘탈을 부여잡고…기필코 다시 찾아야 한다! 우연히 남쪽에서 넘어온 1등 당첨 로또를 주운 북한 병사 용호. 이거이 남조선 인민의 고혈을 쥐어 짜내는 육사오라는 종이쪼가리란 말인가? 근데 무려 당첨금이 57억이라고?! 당첨금을 눈앞에서 놓칠 위기에 처한 천우와 북에선 한낱 종이쪼가리일 뿐일 로또를 당첨금으로 바꿔야 하는 용호. 여기에 예상치 못한 멤버들(?)까지 합류하고 57억을 사수하기 위한 3:3팀이 결성되는데… 주운 자 VS 또 주운 자 아슬아슬 선 넘는 지분 협상이 시작된다!','육사오.jpg',0,'2022.08.24','https://www.youtube.com/embed/v5aAR-LHmKk',MOVIE_M_NO_SEQ.currval,1,0,2);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'정직한 후보2','장유정, 라미란, 김무열, 윤경호 외','거짓말 못하는 진실의 주둥이 컴백! 이번엔 2명?! 서울시장 선거에서 떨어지며 쫄딱 망한 백수가 된 주상숙은 우연히 바다에 빠진 한 청년을 구한 일이 뉴스를 타며 고향에서 화려한 복귀의 기회를 잡는다. 하지만 정직하면 할수록 바닥으로 곤두박질치는 지지율 앞에 다시 뻥쟁이로 돌아간 그 순간, 주상숙에게 운명처럼 찾아온 진실의 주둥이! 이번엔 주상숙의 비서실장 박희철까지 주둥이가 쌍으로 털리게 되는데... 재미도 2배! 웃음도 2배! 주둥이 대폭발 코미디가 돌아왔다!','정직한 후보2.jpg',0,'2022.09.28','https://www.youtube.com/embed/AdCtg1A8sSc',MOVIE_M_NO_SEQ.currval,1,0,2);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'정직한 후보','장유정, 라미란, 김무열, 윤경호, 나문희 외','어제까진 뻥쟁이, 오늘부턴 정직한 후보?! 거짓말이 제일 쉬운 3선 국회의원 주상숙에게 청천벽력이 떨어진다. 하루아침에 거짓말은 1도 할 수 없는 진실의 주둥이를 갖게 된 것! 최고의 무기인 거짓말을 잃자 그녀의 인생은 송두리째 흔들리게 되는데… 웃음 빵! 속이 뻥! 뚫리는 통쾌한 웃음 폭격이 시작된다!','정직한 후보.jpg',0,'2020.02.12','https://www.youtube.com/embed/f_xrpstCYE0',MOVIE_M_NO_SEQ.currval,1,0,2);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'럭키','이계벽,유해진,이준,조윤희 외','성공률 100% 완벽한 킬러! 목욕탕 Key 때문에 무명배우로 삶이 뒤바뀌다?! 냉혹한 킬러 형욱(유해진)은 사건 처리 후 우연히 들른 목욕탕에서 비누를 밟고 넘어져 과거의 기억을 잃게 된다. 인기도, 삶의 의욕도 없어 죽기로 결심한 무명배우 재성(이준)은 신변 정리를 위해 들른 목욕탕에서그런 형욱을 보게 되고, 자신과 그의 목욕탕 키를 바꿔 도망친다. 이후 형욱은 자신이 재성이라고 생각한 채, 배우로 성공하기 위해 노력하는데… 인생에 단 한번 찾아온 초대형 기회! 초특급 반전! 이것이 LUCK.KEY다!','럭키.jpg',0,'2016.10.13','https://www.youtube.com/embed/F-uIGgDSPEM',MOVIE_M_NO_SEQ.currval,1,0,2);
insert into movie values(MOVIE_M_NO_SEQ.nextval,'오! 마이 고스트','홍태선,정진운,안서현,이주연 외','귀신 보는 것이 유일한 스펙인 신입 FD 태민(정진운)은 어렵게 취업한 스튜디오에서 야간 순찰을 돌던 중 갈 곳 없는 붙박이 귀신 콩이(안서현)를 만나게 된다. 눈만 마주쳤다 하면 티격태격하던 일상 속 어느 날, 이들의 유일한 일자리이자 잠자리인 스튜디오에 원인을 알 수 없는 미스터리한 사건들이 발생하는데… 귀신 보는 신입 FD X 갈 곳 없는 붙박이 귀신 일자리와 잠자리 사수를 위한 좌충우돌 팀플레이가 시작된다!','오! 마이 고스트.jpg',0,'2022.09.15','https://www.youtube.com/embed/UptVyrALQhY',MOVIE_M_NO_SEQ.currval,1,0,2);



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
insert into jjim VALUES(1,0,1,'guard1@gmail.com',1);
insert into jjim VALUES(1,0,1,'guard1@gmail.com',6);
insert into jjim VALUES(1,0,1,'guard1@gmail.com',7);
insert into jjim VALUES(1,0,1,'guard2@gmail.com',2);
insert into jjim VALUES(1,0,1,'guard2@gmail.com',10);
insert into jjim VALUES(1,0,1,'guard2@gmail.com',4);
insert into jjim VALUES(1,0,1,'guard3@gmail.com',2);
insert into jjim VALUES(1,0,1,'guard3@gmail.com',6);
insert into jjim VALUES(1,0,1,'guard4@gmail.com',7);
insert into jjim VALUES(1,0,1,'guard4@gmail.com',2);
insert into jjim VALUES(1,0,1,'guard5@gmail.com',9);
insert into jjim VALUES(1,0,1,'guard5@gmail.com',3);
insert into jjim VALUES(1,0,1,'guard6@gmail.com',1);
insert into jjim VALUES(1,0,1,'guard6@gmail.com',6);

---insert(prefer)------
insert into prefer VALUES(1,0,1,'guard1@gmail.com',1);
insert into prefer VALUES(1,0,1,'guard1@gmail.com',3);
insert into prefer VALUES(1,0,1,'guard2@gmail.com',2);
insert into prefer VALUES(1,0,1,'guard2@gmail.com',4);
insert into prefer VALUES(1,0,1,'guard3@gmail.com',1);
insert into prefer VALUES(1,0,1,'guard3@gmail.com',2);
insert into prefer VALUES(1,0,1,'guard4@gmail.com',3);
insert into prefer VALUES(1,0,1,'guard4@gmail.com',4);
insert into prefer VALUES(1,0,1,'guard5@gmail.com',1);
insert into prefer VALUES(1,0,1,'guard6@gmail.com',4);

---insert(review)------
--1번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'이영화 재밌었어요','재밌음','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,1,'guard1@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'재밌어요!!','재밌네요~!','3',sysdate,REVIEW_R_NO_SEQ.currval,1,0,1,'guard2@gmail.com');
--2번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'이영화 뭐야!!','신기해요','3',sysdate,REVIEW_R_NO_SEQ.currval,1,0,2,'guard2@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'이영화 뭐야뭐야!','꿀잼','3',sysdate,REVIEW_R_NO_SEQ.currval,1,0,2,'guard3@gmail.com');
--3번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'이영화 재미없어요','비추합니다','1',sysdate,REVIEW_R_NO_SEQ.currval,1,0,3,'guard3@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'중간?이하?','중하 수준','2',sysdate,REVIEW_R_NO_SEQ.currval,1,0,3,'guard4@gmail.com');
--4번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'다시 보고싶은 추천','강추합니다','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,4,'guard4@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'언제든 다시봐도 괜찮은 영화','강추합니다','4',sysdate,REVIEW_R_NO_SEQ.currval,1,0,4,'guard5@gmail.com');
--5번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'중간정도?','보통이에요','3',sysdate,REVIEW_R_NO_SEQ.currval,1,0,5,'guard5@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'소소하게 재밋게본 영화','괜찮네요','4',sysdate,REVIEW_R_NO_SEQ.currval,1,0,5,'guard6@gmail.com');
--6번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'보면서 울었어요','슬퍼요','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,6,'guard6@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'매우 재밌었어요','재밋게 봤습니다~!','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,6,'guard1@gmail.com');
--7번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'뭐해라는 두글짜에 니가 보고 싶어','너의 속마음을 알까 우우우~','4',sysdate,REVIEW_R_NO_SEQ.currval,1,0,7,'guard1@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'뭐해라는 두글짜에 니가 보고 싶어22222','너의 속마음을 알까 우우우~22222','3',sysdate,REVIEW_R_NO_SEQ.currval,1,0,7,'guard2@gmail.com');
--8번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'나는 아니야','쉽지 않을거 같아이야','4',sysdate,REVIEW_R_NO_SEQ.currval,1,0,8,'guard3@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'나는 아니야22222','쉽지 않을거 같아이야222222','4',sysdate,REVIEW_R_NO_SEQ.currval,1,0,8,'guard4@gmail.com');
--9번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'바람을 타고 날아오르는 새들은','아름다운 태양 속으로','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,9,'guard5@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'222재밌다!!!','꿀잼이에요!','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,9,'guard6@gmail.com');
--10번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'음표가 되어 나네~','향기나는','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,10,'guard1@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'노잼 시간을 끄는 영화','향기나는','1',sysdate,REVIEW_R_NO_SEQ.currval,1,0,10,'guard6@gmail.com');
--11번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'잼잼','또 보러가야지!','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,11,'guard4@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'쏘쏘','쏘쏘한 영화','3',sysdate,REVIEW_R_NO_SEQ.currval,1,0,11,'guard5@gmail.com');
--12번 영화 리뷰
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'알만한 사람끼리 이정도','아이유_잼잼','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,12,'guard2@gmail.com');
insert into review VALUES(REVIEW_R_NO_SEQ.nextval,'알만한 사람끼리 이정도','아이유_잼잼','5',sysdate,REVIEW_R_NO_SEQ.currval,1,0,12,'guard3@gmail.com');




