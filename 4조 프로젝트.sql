create database project; -- 4조 프로젝트 database생성
world
use project;  -- 위에 만든 project db 사용 쿼리
------------------------------------------------------------------------------------------------------------
show databases; -- 전체 db조희
show tables;	-- 전체 테이블 조희

------------------------------------------------------------------------------------------------------------
 create table restaurant( -- 음식점 테이블 생성
r_no integer PRIMARY KEY UNIQUE auto_increment, -- 일련번호, pk지정
r_division varchar(10) NOT NULL, -- 음식점 구분(ex.한식,일식,중식) 
r_name varchar(20) NOT NULL, 		-- 음식점 이름
r_address varchar(50) NOT NULL,	-- 음식점 주소
r_menu varchar(50) NOT NULL		-- 음식점 대표메뉴(여러개는 , 로 구분)
);

------------------------------------------------------------------------------------------------------------
alter table restaurant auto_increment = 1;   -- MEMBER테이블의 PK인m_no 자동인덱싱 초기값 1 로 초기화
set @@AUTO_INCREMENT_INCREMENT = 1; 	  -- MEMBER테이블의 PK인m_no 자동인덱싱 증가값 1 로 초기화

------------------------------------------------------------------------------------------------------------
drop table restaurant;  -- 음식점 테이블 삭제
select *from restaurant;	-- 테이블 전체 조희seq_idseq_id

------------------------------------------------------------------------------------------------------------
insert into restaurant(r_no,r_division,r_name,r_address,r_menu) 
values(null,'한식','홍대짬뽕','홍익로40길','짬뽕,짜장면');  -- restaurant테이블
------------------------------------------------------------------------------------------------------------

LOAD DATA INFILE "C:/temp/restaurant.csv"  
INTO TABLE project.restaurant  
FIELDS TERMINATED BY ',' ( r_division, r_name, r_address,r_menu ); ;


------------------------------------------------------------------------------------------------------------

create table member(     -- 회원 테이블 
m_no int PRIMARY KEY UNIQUE auto_increment, -- 회원 일련번호
m_di int,  -- 회원 코드
m_id varchar(15), -- 회원 id
m_pw varchar(15)  -- 회원 pw
);


alter table member auto_increment = 1;   -- MEMBER테이블의 PK인m_no 자동인덱싱 초기값 1 로 초기화
set @@AUTO_INCREMENT_INCREMENT = 1; 	  -- MEMBER테이블의 PK인m_no 자동인덱싱 증가값 1 로 초기화
------------------------------------------------------------------------------------------------------------
drop table member;								-- member테이블 조회

insert into member values(NULL,1,'MANAGER','125646a');  -- member테이블 insert into쿼리
insert into member values(NULL,2,'이진웅','111111a');      -- 회원코드(1) : 관리자(데이터 수정 삽입 삭제)
insert into member values(NULL,2,'양한백','222222a');      -- 회원코드(2) : 일반유저(열람만가능)
insert into member values(NULL,2,'신혜정','333333a');
insert into member values(NULL,2,'최원석','444444a');
insert into member values(NULL,2,'김은서','555555a');
insert into member values(NULL,2,'전소현','666666a');

select *from member;

------------------------------------------------------------------------------------------------------------
select *from restaurant;
select *from restaurant where r_division = '한식';     -- 한식 검색
select *from restaurant where r_division = '중식';     -- 중식 검색
select *from restaurant where r_division = '일식';     -- 일식 검색

select *from restaurant where r_menu like "%초밥%";  -- 메뉴 부분 검색

------------------------------------------------------------------------------------------------------------


