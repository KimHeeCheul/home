------------------------------USERINFO SELECT-----------------------------------
-- 전체회원찾기(select) -- 
select * from USER_INFO;

-- 이메일로 회원 찾기(select u_email) --
select * from user_info where u_email = 'admin@gmail.com';

-- 이메일+이름 비번찾기(select u_pass) --
select u_pass from user_info where u_email='guard5@gmail.com' and u_name='안소진'; 

-- 이름이랑 폰번호로 이메일찾기(select u_email) --
select u_email from user_info where u_name='김희철' and u_phone='01088888888';

-- 회원수정(UPDATE) --
UPDATE USER_INFO SET u_pass='555', u_name='안소진', u_phone='01099999999' where u_email='guard5@gmail.com';

-- 회원탈퇴(delect) --
delete from user_info where u_email='guard7@gmail.com';


------------------------------SUBSCRIPT SELECT-----------------------------------
--구독권 전체 리스트--
select * from subscription;

-- 구독권?구독자? 선택
select * from subscription where u_email='guard2@gmail.com';

--회원들 전체 회원 구독권 상태 체크-- 
select s.s_no,
       s.u_email 유저이메일,
       t.t_no 구독상태,
       s.s_start 구독시작일,
       s.s_end 최종구독일
from subscription s 
join ticket t 
on s.t_no=t.t_no;

-- 회원카드번호수정(update) --
update subscription set s_cardname='국민카드', s_cardnumber='9874987498749874119' where u_email='guard2@gmail.com';

-- 회원구독권해제(update) --
update subscription set t_no = 0 where u_email ='guard4@gmail.com';

------------------------------PREFER SELECT-----------------------------------
-- 회원별 prefer 조회(선호카테고리 조회)
SELECT u_email, cg_no FROM PREFER WHERE u_email = 'guard1@gmail.com';

-- 회원별 관심카테고리(넘버)로 관련 영화 출력 sql문 (PREFER,무비,리뷰 테이블 그룹화 및 조인) --
-- (출력: 카테고리번호,영화등록번호,영화장르,영화이름,영화이미지,영화개봉일,영화클릭수,리뷰평균평점(리뷰평점 NULL 포함)) -- 
-- guard1@gmail.com 의 카테고리 1 번 관련 영화 전체 출력(리뷰평점 NULL 미포함)
select p.cg_no,
       m.m_no,
       m.m_name,
       m.m_image,
       m.m_url,
       m.m_date,
       m.m_count,
       avg(r.r_grade)"총평점" 
from movie m LEFT join review r
on m.m_no=r.m_no
LEFT join prefer p
on m.cg_no=p.cg_no
where p.u_email='guard1@gmail.com' and p.cg_no=1
group by p.cg_no,
         m.m_no,           
         m.m_name,
         m.m_image,
         m.m_url,
         m.m_date,
         m.m_count
ORDER By avg(r.r_grade) desc;

-- 선호카테고리 삭제
delete from prefer where u_email='guard1@gmail.com' and cg_no=3;

-- 선호카테고리 선택
insert into prefer values (0,0,0,'guard1@gmail.com',1);


-- 리스트 페이지 시작,끝부분
SELECT *
FROM ( SELECT rownum idx, s.*  
       FROM (SELECT * 
             FROM prefer
             ORDER BY p_groupno ASC) s)
WHERE idx >= 1 AND idx <= 5;

------------------------------TICKET SELECT-----------------------------------

-- 티켓 상품 보기(select)--
select * from ticket;

-- 티켓 가격 수정(관리자전용) -- 
update ticket set t_price=19800 where t_no=1;

----티켓(구독권) 삭제 (관리자전용)--
delete from ticket where t_no=1;

------------------------------MOVIE SELECT-----------------------------------

--전체 리스트
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image, 
       m.m_count,
       m.m_date,
       m.cg_no,
       avg(r.r_grade) as r_grade 
from Movie m 
left outer join Review r 
on m.m_no=r.m_no 
group by m.m_no,
         m.m_name,
         m.m_actor,
         m.m_info,
         m.m_image, 
         m.m_count,
         m.m_date,
         m.cg_no 
ORDER BY m.m_no ASC;

--영화 번호로 출력
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image, 
       m.m_count,
       m.m_date,
       m.cg_no ,
       avg(r.r_grade) as r_grade 
from movie m 
right outer join Review r 
on m.m_no=r.m_no 
where m.m_no = 1 
group by m.m_no,
         m.m_name,
         m.m_actor,
         m.m_info,
         m.m_image, 
         m.m_count,
         m.m_date,
         m.cg_no 
ORDER BY m.m_no ASC;

--카테고리 번호로 출력
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image,
       m.m_count,
       m.m_date,
       m.cg_no,
       avg(r.r_grade) as r_grade 
from Movie m 
right outer join Review r 
on m.m_no=r.m_no 
where m.cg_no = 1 
group by m.m_no,
         m.m_name,
         m.m_actor,
         m.m_info,
         m.m_image,
         m.m_count,
         m.m_date,
         m.cg_no 
ORDER BY m.m_no ASC;

--영화 이름으로 출력
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image,
       m.m_count,
       m.m_date,
       m.cg_no,
       avg(r.r_grade) as r_grade 
from Movie m 
left outer join Review r 
on r.m_no=m.m_no
where m_name like '%후보%'
group by m.m_no,
         m.m_name,
         m.m_actor,
         m.m_info,
         m.m_image,
         m.m_count,
         m.m_date,
         m.cg_no
ORDER BY m.m_no ASC;

--영화 출연진으로 출력
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image,
       m.m_count,
       m.m_date,
       m.cg_no,
       avg(r.r_grade) as r_grade 
from movie m 
left outer join review r 
on r.m_no=m.m_no
where m_actor like '%라%'
group by m.m_no,
         m.m_name,
         m.m_actor,
         m.m_info,
         m.m_image,
         m.m_count,
         m.m_date,
         m.cg_no
ORDER BY m.m_no ASC;

--영화 개봉일 내림차순으로 검색 출력
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image,
       m.m_count,
       m.m_date,
       m.cg_no,
       avg(r.r_grade) as r_grade 
from movie m 
left outer join review r 
on r.m_no=m.m_no
group by m.m_no,
         m.m_name,
         m.m_actor,
         m.m_info,
         m.m_image,
         m.m_count,
         m.m_date,
         m.cg_no
order by m_date DESC;

--영화 개봉일 오름차순으로 검색 출력
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image,
       m.m_count,
       m.m_date,
       m.cg_no,
       avg(r.r_grade) as r_grade 
from movie m 
left outer join review r 
on r.m_no=m.m_no
group by m.m_no,
         m.m_name,
         m.m_actor,
         m.m_info,
         m.m_image,
         m.m_count,
         m.m_date,
         m.cg_no 
order by m_date ASC;

--영화 정보 수정
update movie 
set m_name = 'test',
	m_actor= 'a',
	m_info = 'b',
    m_date = sysdate,
    m_url  = 'd',
    cg_no  = '1'
where m_no = 6;

--영화 전체 클릭수 조회수
select m_name,
       m_count 
from movie;

-- 영화 클릭 조회수
SELECT m_count FROM movie where m_no=1;

-- 영화 클릭수 증가
update movie set m_count = m_count+1 where m_no=1;

--영화 삭제 (관리자)
delete from movie where m_no = 6;

--조회수 높은 순으로 출력
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image,
       m.m_count,
       m.m_date,
       m.cg_no ,
       avg(r.r_grade) as r_grade 
from Movie m 
left outer join Review r 
on m.m_no=r.m_no 
group by m.m_no,
         m.m_name,
         m.m_actor,
         m.m_info,
         m.m_image,
         m.m_count,
         m.m_date,
         m.cg_no 
ORDER BY m_count DESC;

--평점 높은 순으로 출력
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image,
       m.m_count,
       m.m_date,
       m.cg_no, 
       avg(r.r_grade) as r_grade 
from Movie m 
left outer join Review r 
on m.m_no=r.m_no
where r_grade is not null
group by m.m_no,
         m.m_name,
         m.m_actor,
         m.m_info,
         m.m_image,
         m.m_count,
         m.m_date,
         m.cg_no
ORDER BY r_grade DESC;

--최신 리뷰 1개 불러오기
select m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image,
       m.m_count,
       m.m_date,
       m.cg_no,
       r.r_no,
       r.r_title,
       r.r_content,
       r.r_date,
       r.u_email
from Movie m 
left outer join Review r 
on m.m_no=r.m_no
where m.m_no = 10 and rownum = 1
group by m.m_no,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_image,
       m.m_count,
       m.m_date,
       m.cg_no,
       r.r_no,
       r.r_title,
       r.r_content,
       r.r_date,
       r.u_email
ORDER BY r.r_date DESC;

-- 리스트 페이지 시작,끝부분
SELECT *
FROM ( SELECT rownum idx, s.*  
       FROM (SELECT * 
             FROM movie
             ORDER BY m_no ASC) s)
WHERE idx >= 1 AND idx <= 20;


------------------------------JJIm -----------------------------------
-- 찜 전체조회
select * from jjim;

-- 회원 찜 삭제(delete) --
delete from jjim where u_email='guard5@gmail.com' and m_no=3;

-- 회원별 찜저장목록 출력화면 sql문 (찜,무비,리뷰 테이블 그룹화 및 조인) --
-- (출력: 영화등록번호,영화장르,영화이름,영화이미지,영화개봉일,영화클릭수,리뷰평균평점(null 포함)) -- 
select m.m_no,
       m.cg_no,       
       m.m_name,
       m.m_image,
       m.m_date,
       m.m_count,
       avg(r.r_grade) 
from movie m 
left join review r
on m.m_no=r.m_no
left join jjim j
on m.m_no=j.m_no
where j.u_email='guard5@gmail.com'
group by m.m_no,
         m.cg_no,      
         m.m_name,
         m.m_image,
         m.m_date,
         m.m_count;


-- 리스트 페이지 시작,끝부분
SELECT *
FROM ( SELECT rownum idx, s.*  
       FROM (SELECT * 
             FROM jjim
             ORDER BY j_groupno ASC) s)
WHERE idx >= 1 AND idx <= 5;

------------------------------CATEGORY SELECT-----------------------------------
--카테고리 전체 리스트
select * from Category;

--카테고리 번호로 출력
select * from Category where cg_no=1;

--카테고리 이름으로 출력
select * from Category where cg_name = '액션';

--카테고리명 변경 
update Category set cg_name = '미스터리' where cg_no = 6;

----카테고리 삭제 
delete from movie where m_no = 4;

----카테고리 별 영화 출력
select c.cg_name,
       m.m_image,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_date,
       avg(r.r_grade) "총평점"
from movie m
join category c
on m.cg_no=c.cg_no
join review r 
on m.m_no =r.m_no
where m.cg_no=1
group by c.cg_name,
       m.m_image,
       m.m_name,
       m.m_actor,
       m.m_info,
       m.m_date;
       
--카테고리별  영화 한개 상세 상세페이지 검색 (리뷰 추가 -리뷰없을시 null표시)
select * from(select c.cg_no,c.cg_name, m.m_name,m.m_actor,m.m_info,m.m_image,m.m_date,m.m_url,r.r_title,r.r_content,r.r_date,avg(r.r_grade)
from category c  
join movie m on m.cg_no = c.cg_no 
left JOIN review r on r.m_no = m.m_no
where c.cg_no = 4 AND m.m_no=19
GROUP BY c.cg_no,c.cg_name, m.m_name,m.m_actor,m.m_info,m.m_image,m.m_date,m.m_url,r.r_title,r.r_content,r.r_date
ORDER BY r.r_date DESC) where ROWNUM<=1;

------------------------------REVIEW SELECT-----------------------------------

--review 전체리스트
select * from review;

--review 선택
select * from review where r_no=3;

--review 수정
update review set r_title='',r_content='',r_grade=3,m_no=5 where r_no=10;

--review 삭제
delete from review where r_no=10;

--회원 아이디로 리뷰 보이기
select r.r_no,
       u.u_email,
       r.r_title,
       r.r_content,
       r.r_grade,
       r.r_date
from user_info u 
join review r
on u.u_email=r.u_email;

--최신 리뷰
select r.r_no,
       u.u_email,
       r.r_title,
       r.r_content,
       r.r_grade,
       r.r_date
from user_info u
join review r
on u.u_email = r.u_email
order by r.r_date desc;

-- 리스트 페이지 시작,끝부분
SELECT *
FROM ( SELECT rownum idx, s.*  
       FROM (SELECT * 
             FROM review
             ORDER BY r_no ASC) s)
WHERE idx >= 1 AND idx <= 5;
-- 각 영화 리뷰 총 갯수
select count(*) from review r join movie m on m.m_no=r.m_no where r.m_no=6;

------------------------------Notice SELECT------------------------------
--update
UPDATE notice set n_content = '신작 영화 추가 공지' where n_no = 1 and n_title = '신규콘텐츠 추가 예정';

--delete
delete from notice where n_no = 2;

--select
--전체 출력
select * from notice;

--게시물 번호로 출력
select * from notice where n_no = 4;

--게시물 제목으로 출력
select * from notice where n_title like '%구독%';

-- 리스트 페이지 시작,끝부분
SELECT * 
FROM ( SELECT rownum idx, s.*  
       FROM (SELECT * 
             FROM Notice 
             ORDER BY n_no ASC) s)
WHERE idx >= 1 AND idx <= 5;

--select 게시물 총건수 확인
select count(*) from Notice;



