create table student(
    regno varchar2(10),Sname varchar2(20),major varchar2(20),Bdate date,
    PRIMARY KEY (regno)
    );
create table course(
    course_no int,cname varchar2(15),dept varchar2(15),
    primary key(course_no)
    );
create table text(
    isbn int,book_title varchar2(15),publisher varchar2(20),author varchar2(20),
    primary key (isbn)
    );
DESC STUDENT;
create table book_adoption(
    course_no int,sem int,isbn int,
    foreign key(course_no)REFERENCES course(course_no),
    foreign key(isbn)REFERENCES text(isbn)
    );
   
create table enrool(
    regno varchar2(10),course_no int ,sem int ,marks int,
    foreign key(regno) references student(regno),
    foreign key(course_no) REFERENCES course(course_no)
    );
   
insert into student values ('&regno','&sname','&major','&bdate');
insert into course values ('&COURSE_no','&CNAME','&DEPT');
INSERT INTO TEXT VALUES('&ISBN','&BOOK_TITLE','&PUBLISHER','&AUTHOR');
INSERT INTO BOOK_ADOPTION('&COURSE','&SEM','&ISBN');
INSERT INTO ENROLL('&REGNO','&COURSE','&SEM','&MARKS');
SELECT*FROM STUDENT;
SELECT*FROM COURSE;
SELECT*FROM TEXT;
SELECT*FROM BOOK_ADAPTION;
SELECT* FROM ENROLL;
