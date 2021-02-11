/* 학생정보 */
CREATE TABLE students (
	student_id VARCHAR2(20) NOT NULL, /* 학번 */
	pw VARCHAR2(30), /* 비밀번호 */
	name VARCHAR2(30) NOT NULL, /* 성명 */
	phone VARCHAR2(20) NOT NULL, /* 전화번호 */
	gender CHAR(1) NOT NULL, /* 성별 */
	email VARCHAR2(50) NOT NULL, /* 이메일 */
	address VARCHAR2(50) NOT NULL, /* 주소 */
	state VARCHAR2(20) NOT NULL, /* 학적상태 */
	department_no NUMBER NOT NULL /* 학과_일련번호 */
);

COMMENT ON TABLE students IS '학생정보';

COMMENT ON COLUMN students.student_id IS '학번';

COMMENT ON COLUMN students.pw IS '비밀번호';

COMMENT ON COLUMN students.name IS '성명';

COMMENT ON COLUMN students.phone IS '전화번호';

COMMENT ON COLUMN students.gender IS '성별';

COMMENT ON COLUMN students.email IS '이메일';

COMMENT ON COLUMN students.address IS '주소';

COMMENT ON COLUMN students.state IS '학적상태';

COMMENT ON COLUMN students.department_no IS '학과_일련번호';

CREATE UNIQUE INDEX PK_students
	ON students (
		student_id ASC
	);

ALTER TABLE students
	ADD
		CONSTRAINT PK_students
		PRIMARY KEY (
			student_id
		);

/* 수강가능과목 */
CREATE TABLE subjects (
	subject_no NUMBER NOT NULL, /* 학수번호 */
	subj_group VARCHAR2(20) NOT NULL, /* 이수구분 */
	subj_name VARCHAR2(50) NOT NULL, /* 교과목명 */
	subj_semester CHAR(1), /* 교과목학기 */
	subj_score NUMBER NOT NULL, /* 학점 */
	subj_professor VARCHAR2(30), /* 담당교수 */
	lect_date VARCHAR2(6), /* 강의요일 */
	lect_start NUMBER, /* 강의시작교시 */
	lect_end NUMBER, /* 강의종료교시 */
	lect_room VARCHAR2(20), /* 강의실 */
	outline VARCHAR2(2000), /* 강의개요 */
	proceed VARCHAR2(500), /* 강의진행방식 */
	note VARCHAR2(500), /* 수강시 유의사항 */
	evaluation VARCHAR2(500) NOT NULL, /* 평가방법 */
	progress_plan VARCHAR2(500), /* 강의진행계획 */
	department_no NUMBER NOT NULL /* 학과일련번호 */
);

COMMENT ON TABLE subjects IS '수강가능과목';

COMMENT ON COLUMN subjects.subject_no IS '학수번호';

COMMENT ON COLUMN subjects.subj_group IS '이수구분';

COMMENT ON COLUMN subjects.subj_name IS '교과목명';

COMMENT ON COLUMN subjects.subj_semester IS '교과목학기';

COMMENT ON COLUMN subjects.subj_score IS '학점';

COMMENT ON COLUMN subjects.subj_professor IS '담당교수';

COMMENT ON COLUMN subjects.lect_date IS '강의요일';

COMMENT ON COLUMN subjects.lect_start IS '강의시작교시';

COMMENT ON COLUMN subjects.lect_end IS '강의종료교시';

COMMENT ON COLUMN subjects.lect_room IS '강의실';

COMMENT ON COLUMN subjects.outline IS '강의개요';

COMMENT ON COLUMN subjects.proceed IS '강의진행방식';

COMMENT ON COLUMN subjects.note IS '수강시 유의사항';

COMMENT ON COLUMN subjects.evaluation IS '평가방법';

COMMENT ON COLUMN subjects.progress_plan IS '강의진행계획';

COMMENT ON COLUMN subjects.department_no IS '학과일련번호';

CREATE UNIQUE INDEX PK_subjects
	ON subjects (
		subject_no ASC
	);

ALTER TABLE subjects
	ADD
		CONSTRAINT PK_subjects
		PRIMARY KEY (
			subject_no
		);

/* 수강신청 */
CREATE TABLE registers (
	register_no NUMBER NOT NULL, /* 수강신청일련번호 */
	reg_year NUMBER(4) NOT NULL, /* 수강신청_년도 */
	reg_semester CHAR(1) NOT NULL, /* 수강신청_학기 */
	grade NUMBER(2,1), /* 성적 */
	eval_how NUMBER, /* 강의방법 */
	eval_planning NUMBER, /* 계획성일치 */
	eval_goal NUMBER, /* 목표부합도 */
	eval_consider NUMBER, /* 이해수준고려도 */
	eval_test NUMBER, /* 시험평가도 */
	student_id VARCHAR2(20) NOT NULL, /* 학번 */
	subject_no NUMBER NOT NULL /* 학수번호 */
);

COMMENT ON TABLE registers IS '수강신청';

COMMENT ON COLUMN registers.register_no IS '수강신청일련번호';

COMMENT ON COLUMN registers.reg_year IS '수강신청_년도';

COMMENT ON COLUMN registers.reg_semester IS '수강신청_학기';

COMMENT ON COLUMN registers.grade IS '성적';

COMMENT ON COLUMN registers.eval_how IS '강의방법';

COMMENT ON COLUMN registers.eval_planning IS '계획성일치';

COMMENT ON COLUMN registers.eval_goal IS '목표부합도';

COMMENT ON COLUMN registers.eval_consider IS '이해수준고려도';

COMMENT ON COLUMN registers.eval_test IS '시험평가도';

COMMENT ON COLUMN registers.student_id IS '학번';

COMMENT ON COLUMN registers.subject_no IS '학수번호';

CREATE UNIQUE INDEX PK_registers
	ON registers (
		register_no ASC
	);

ALTER TABLE registers
	ADD
		CONSTRAINT PK_registers
		PRIMARY KEY (
			register_no
		);

/* 학과정보 */
CREATE TABLE departmentes (
	department_no NUMBER NOT NULL, /* 학과일련번호 */
	dept_name VARCHAR2(50) NOT NULL /* 학과명 */
);

COMMENT ON TABLE departmentes IS '학과정보';

COMMENT ON COLUMN departmentes.department_no IS '학과일련번호';

COMMENT ON COLUMN departmentes.dept_name IS '학과명';

CREATE UNIQUE INDEX PK_departmentes
	ON departmentes (
		department_no ASC
	);

ALTER TABLE departmentes
	ADD
		CONSTRAINT PK_departmentes
		PRIMARY KEY (
			department_no
		);

ALTER TABLE students
	ADD
		CONSTRAINT FK_departmentes_TO_students
		FOREIGN KEY (
			department_no
		)
		REFERENCES departmentes (
			department_no
		);

ALTER TABLE subjects
	ADD
		CONSTRAINT FK_departmentes_TO_subjects
		FOREIGN KEY (
			department_no
		)
		REFERENCES departmentes (
			department_no
		);

ALTER TABLE registers
	ADD
		CONSTRAINT FK_students_TO_registers
		FOREIGN KEY (
			student_id
		)
		REFERENCES students (
			student_id
		);

ALTER TABLE registers
	ADD
		CONSTRAINT FK_subjects_TO_registers
		FOREIGN KEY (
			subject_no
		)
		REFERENCES subjects (
			subject_no
		);
-----------------------------------------------------------------------------------------------

CREATE SEQUENCE subjects_seq
INCREMENT BY 1
START WITH 10000
MINVALUE 10000
MAXVALUE 19999;

CREATE SEQUENCE departmentes_seq
INCREMENT BY 1
START WITH 30000
MINVALUE 30000
MAXVALUE 39999;

CREATE SEQUENCE registers_seq
INCREMENT BY 1
START WITH 40000
MINVALUE 40000
MAXVALUE 49999;

INSERT INTO departmentes
VALUES (departmentes_seq.NEXTVAL, '컴퓨터공학과');
INSERT INTO departmentes
VALUES (departmentes_seq.NEXTVAL, '소프트웨어공학과');
INSERT INTO departmentes
VALUES (departmentes_seq.NEXTVAL, '전자공학과');
INSERT INTO departmentes
VALUES (departmentes_seq.NEXTVAL, '정보통신과');

INSERT INTO students
VALUES ('201500123','12345!','강창기','010-5127-0318','M','cgkang','서울시 구로구','재학',30000);
INSERT INTO students
VALUES ('201500124','987456!','박지연','010-3862-4344','F','jiyani','서울시 광진구','재학',30000);
INSERT INTO students
VALUES ('201500125','654951#','장종현','010-3426-8859','M','whdgus8809','서울시 동작구','재학',30001);
INSERT INTO students
VALUES ('201500126','852741**','이수연','010-4031-2103','F','dldus0609','서울시 은평구','재학',30001);


INSERT INTO subjects
VALUES(subjects_seq.NEXTVAL, '전공필수', '데이터베이스', '1', 3, '강창구', '금', 1, 2, '5관201호', '데이터베이스 관리 시스템이란 대량의 데이터를 효율적으로 관리 운영하기 위한 소프트웨어이다. 지식 정보화 사회에서 급속히 증가되는 각종 데이터를 관리 운영하여 활용하는 것은 모든 조직의 필수적인 일이다. 이에 본 강좌에서는 졸업 후 직장에서 접하게 될 데이터베이스 기술에 관련된 이론적 기반이 될 내용을 학습하여 실무에 응용할 수 있도록 하는 게 주 목적이다.', 
'LMS + 일부 대면수업', '강의를 따라가기 위해 반드시 교재를 필참해야 한다.<br>', 
'중간고사 30% <br> 기말고사 30% <br> 출석 10% <br> 과제 30%', '추후 논의',  30000)

INSERT INTO subjects
VALUES(subjects_seq.NEXTVAL, '', '데이터베이스', '1', 3, '강창구', '금', 1, 2, '5관201호', '데이터베이스 관리 시스템이란 대량의 데이터를 효율적으로 관리 운영하기 위한 소프트웨어이다. 지식 정보화 사회에서 급속히 증가되는 각종 데이터를 관리 운영하여 활용하는 것은 모든 조직의 필수적인 일이다. 이에 본 강좌에서는 졸업 후 직장에서 접하게 될 데이터베이스 기술에 관련된 이론적 기반이 될 내용을 학습하여 실무에 응용할 수 있도록 하는 게 주 목적이다.', 
'LMS + 일부 대면수업', '강의를 따라가기 위해 반드시 교재를 필참해야 한다.<br>', 
'중간고사 30% <br> 기말고사 30% <br> 출석 10% <br> 과제 30%', '추후 논의',  30000)

INSERT INTO subjects
VALUES (subjects_seq.NEXTVAL,'전공필수','정보통신입문','2',3,'이승결','화',4,6,'하-512','21세기를 맞으며 전 세계는 정보화 문명의 새로운 물결로 넘치고 있다. 이제 정보통신기술이 없이는 사회 자체의 존속이 불가능해지고 있다. 언제, 어디서나, 누구든지, 멀티미디어정보를 가장 지능적이고 인간친화적인 형태로 주고 받을 수 있는 정보통신 서비스와 기술은 더욱 더 중요해지고 있다. 본 과목은 정보화 혁명의 근본적 변화를 가져온 정보통신공학의 기본 원리와 역사를 살펴보며, 미래 정보통신 문명의 변화와 발전을 전망해 본다. 정보와 신호의 생산으로 부터 수요에 이르기까지, 가공, 처리, 저장, 수송, 분배되는 과학적/공학적 기초 이론, 원리, 방법론을 공부한다. 신호, 시스템, 아날로그/디지털 개념, 정보처리, 전화의 원리, 논리, 컴퓨터, 인터넷, 네트워크, 스마트 카드, 코딩, 게임이론, 정보이론, 광통신, 이동통신 등을 공부한다.', 
'강의 및 질의 응답','1) 과제 제출 시간을 지켜야 합니다.<br> 2) 본 과목은 전공필수이며 신입생에게 정보통신공학을 소개하는 교과목이므로, 1학년 1학기에 반드시 수강해야 합니다. 1학년 1학기에 이 과목을 수강하지 않으면, 교과목 이수체계를 따르지 못하게 되어 앞으로 공부를 해 나가는데 큰 불편함이 발생할 수 있습니다.', 
'중간고사 40% <br> 기말고사 40% <br> 출석 10% <br> 과제 5%<br> 퀴즈 5%','1.강의소개<br>2.Sensors and Actuators<br> 3.Converting Between Analog and Digital Signals<br>4.Combinational Logic Circuits<br>5.Sequential Logic Circuits and FPGA','30003')

INSERT INTO subjects
VALUES (subjects_seq.NEXTVAL,'전공선택','유닉스 프로그래밍','2',3,'이주홍','화',1,3,'하-322','UNIX 시스템의 File, Directory, Process, Signal Handling, Inter Process Communication, Terminal
I/O, Socket 등등의 System Call 들을 배운다.','강의와 예제 프로그램 설명, 연습문제 숙제, 실습. 텀 프로젝트 실행','- 선수과목으로 C(C++) 언어 프로그래밍을 수강한 학생만 수강할 수 있다.<br>
- 과제를 copy 하거나 모방을 할 시에는 부정행위로 간주 하여 0점를 부여함.','중간고사0%<br>기말고사60%<br> 출석 10% <br>과제 30%','1. 전반적인 과목 진행 계획 및 평가방법 소개<br> 2.유닉스프로그래밍에 대한 기본개념 및 용어설명<br> 3. 유닉스 SystemCall을 이용한 파일처리 소개 및 활용<br> 4. 유닉스 파일시스템에 대한 구조 설명<br> 5.프로세스를 활용한 프로그래밍 방법','30000')

INSERT INTO subjects
VALUES (subjects_seq.NEXTVAL,'전공선택','유닉스 프로그래밍','2',3,'이주홍','화',1,3,'하-322','UNIX 시스템의 File, Directory, Process, Signal Handling, Inter Process Communication, Terminal
I/O, Socket 등등의 System Call 들을 배운다.','강의와 예제 프로그램 설명, 연습문제 숙제, 실습. 텀 프로젝트 실행','- 선수과목으로 C(C++) 언어 프로그래밍을 수강한 학생만 수강할 수 있다.<br>
- 과제를 copy 하거나 모방을 할 시에는 부정행위로 간주 하여 0점를 부여함.','중간고사0%<br>기말고사60%<br> 출석 10% <br>과제 30%','1. 전반적인 과목 진행 계획 및 평가방법 소개<br> 2.유닉스프로그래밍에 대한 기본개념 및 용어설명<br> 3. 유닉스 SystemCall을 이용한 파일처리 소개 및 활용<br> 4. 유닉스 파일시스템에 대한 구조 설명<br> 5.프로세스를 활용한 프로그래밍 방법','30000')


INSERT INTO registers 
VALUES(registers_seq.NEXTVAL, 2020, '2', 4.0, 92, 4, 4, 5, 5, 3, '201500123', 10002)

INSERT INTO registers 
VALUES(registers_seq.NEXTVAL, 2020, '1', 3.5, 87, 5, 4, 3, 4, 4, '201500123', 10003)

INSERT INTO registers 
VALUES(registers_seq.NEXTVAL, 2020, '2', 4.5, 99, 5, 4, 4, 4, 5, '201500123', 10004)


INSERT INTO registers 
VALUES(registers_seq.NEXTVAL, 2020, '1', 4.5, 96, 4, 3, 2, 4, 5, '201500124', 10006)

INSERT INTO registers 
VALUES(registers_seq.NEXTVAL, 2020, '1', 3.0, 84, 5, 1, 1, 1, 5, '201500124', 10003)

INSERT INTO registers 
VALUES(registers_seq.NEXTVAL, 2020, '2', 4.0, 91, 5, 2, 4, 2, 3, '201500124', 10004)

