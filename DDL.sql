# 주석 < MySQL에서만 쓰인다
-- 주석 < 주로 설명에 많이 쓰인다

-- 데이터 정의어 DDL
-- 데이터베이스, 테이블, 인덱스를 정의하고 관리하는 데 사용되는 언어

-- CREATE: 구조(스키마)를 생성하는 명령어
-- CREATE 생성할구조 구조이름 [구조별 옵션];

-- 데이터베이스 생성
CREATE DATABASE practice_sql;

-- 데이터베이스 사용: 데이터베이스 작업을 수행하기 전에 반드시 사용할 데이터베이스를 선택해야 함
USE practice_sql;

-- 테이블 생성
CREATE TABLE example_table (
	example_column1 INT,
    example_column2 BOOLEAN		-- 논리 형태를 가지지 않고 숫자, 문자만 가질 수 있다	
);

-- 컬럼의 데이터 타입
CREATE TABLE data_type (
	-- INT: 정수형 타입
    int_c INT,
    -- DOUBLE: 실수 타입
    double_c DOUBLE,
    -- FLOAT: 실수 타입
    float_c FLOAT,
    -- BOOLEAN: 논리 타입(실제로는 정수 0과 1을 다루는 tiny_int)
    boolean_c BOOLEAN,
    -- VARCHAR(문자열길이): 가변길이 문자열, 모든 제약 조건 사용 가능
    varchar_c VARCHAR(5),
    -- TEXT: 고정된 크기를 가지는 문자열 (64KB)
    text_c TEXT,		-- default 제약 조건을 사용할 수 없음, 장문의 텍스트에 대해 효율적으로 저장 공간을 사용할 수 있다
    -- DATE: 날짜
    date_c DATE,
    -- DATETIME: 날짜 및 시간
    datetime_c DATETIME
);

-- 사용자 생성 (아주 중요)
-- CREATE USER '사용자명'@'접속IP' IDENTIFIED BY '비밀번호';
CREATE USER 'developer'@'%' IDENTIFIED BY 'root';
CREATE USER 'guest2'@'%' IDENTIFIED BY 'root';

-- DROP: 데이터 구조(스키마)를 삭제할 때 사용하는 명령어
-- DROP 구조이름(스키마명)

-- 사용자 삭제
DROP USER 'guest'@'192.168.1.101';

-- 데이터 타입 테이블 삭제
DROP TABLE data_type;

-- 데이터베이스 삭제
DROP DATABASE practice_sql;

-- ALTER: 데이터 구조(스키마)를 변경하는 명령어

-- 테이블 컬럼 추가
ALTER TABLE example_table ADD example_column3 VARCHAR(10);

-- 테이블 컬럼 삭제
ALTER TABLE example_table DROP COLUMN example_column3;

-- 테이블 컬럼 타입 수정
ALTER TABLE example_table MODIFY example_column2 TEXT;

-- 테이블 컬럼 전체 수정
ALTER TABLE example_table CHANGE example_column1 column1 VARCHAR(5);

-- 데이터베이스 문자셋 수정
ALTER DATABASE practice_sql1 DEFAULT CHARACTER SET utf8;