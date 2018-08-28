use world;

create table Student
(
hakbun CHAR(4) PRIMARY KEY,
name VARCHAR(20)  NOT NULL,
kor TINYINT  NOT NULL,
eng TINYINT  NOT NULL,
mat TINYINT  NOT NULL,
edp TINYINT  NOT NULL,
sum SMALLINT,
avg DOUBLE(5,2),
grade CHAR(1)
);
drop table Student;

INSERT INTO Student(hakbun,name,kor,eng,mat,edp)
values ('1106','MINO',88,77,66,100);

select *from Student;

DELIMITER ;;
create procedure insertStudent (
 t_hakbun   CHAR(4),
 t_name      VARCHAR(20),
 t_kor      TINYINT,
 t_eng      tinyint,
 t_mat      tinyint,
 t_edp      tinyint
)
begin
   INSERT INTO Student(hakbun,name,kor,eng,mat,edp)
   VALUES(t_hakbun,t_name,t_kor,t_eng,t_mat,t_edp);
end;;
DELIMITER ;countrylanguage


call insertStudent('1108','더크게',56,57,88,95);


create table Member
(
	id varchar(12) primary key,
	name varchar(20) not null,
	age tinyint
);

select *from Member;
SELECT * FROM countrylanguage
