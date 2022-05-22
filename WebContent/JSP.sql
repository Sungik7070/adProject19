
CREATE TABLE 회원(
  아이디 NVARCHAR2(12) PRIMARY KEY,
  비밀번호 NVARCHAR2(20) NOT NULL,
  이름 NVARCHAR2(15),
  이메일 NVARCHAR2(20)
);

CREATE TABLE 상품 (
  상품번호 int PRIMARY KEY,
  상품이름 NVARCHAR2(20) NOT NULL,
  상품가격 INT,
  상품종류 NVARCHAR2(50),
  이미지링크 NVARCHAR2(100)
);

INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (1, '알파바운드 슬라이드:블랙', 30000, '슬리퍼', 'sliper_image/1_sliper.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (2, '알파바운드 슬라이드:옐로우', 40000, '슬리퍼', 'sliper_image/2_sliper.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (3, '이제이 플리플랍:블랙', 12000, '슬리퍼', 'sliper_image/3_sliper.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (4, '보야 슬라이드:블랙', 60000, '슬리퍼', 'sliper_image/4_sliper.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (5, '버켄스탁', 45000, '슬리퍼', 'sliper_image/5_sliper.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (6, '아딜렛 라이트:네이비', 50000, '슬리퍼', 'sliper_image/6_sliper.PNG');

INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (7, '에나멜 스틸레토 하이힐', 50000, '하이힐', 'highhill_image/1_highhill.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (8, '투명가보시 유리구두', 50000, '하이힐', 'highhill_image/1_highhill.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (9, '링백 하이힐:실버', 50000, '하이힐', 'highhill_image/1_highhill.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (10, '구찌 하이힐', 50000, '하이힐', 'highhill_image/1_highhill.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (11, '스와로브스키 하이힐', 50000, '하이힐', 'highhill_image/1_highhill.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (12, '세라 펌프스', 50000, '하이힐', 'highhill_image/1_highhill.PNG');

INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (13, '오즈위고 - 트리플블랙', 45000, '운동화', 'physhosel_image/1_physhose.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (14, '올드스쿨 - 블랙', 70000, '운동화', 'physhosel_image/2_physhose.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (15, '젤-카야노 5 OG - 화이트:화이트', 40000, '운동화', 'physhosel_image/3_physhose.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (16, '챌린저 OG - 화이트 그레이 블랙', 55000, '운동화', 'physhosel_image/4_physhose.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (17, '바리 뮬 - 블랙:화이트', 15000, '운동화', 'physhosel_image/5_physhose.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (18, '로얄 EC 라이드 - 그레이:블랙', 50000, '운동화', 'physhosel_image/6_physhose.PNG');

INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (19, '라텍스 플레인토 옥스포드 더비 구두', 60000, '남성 구두', 'gudu_image/1_gudu.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (20, 'EUROHOMME 로퍼', 150000, '남성 구두', 'gudu_image/2_gudu.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (21, '소가죽수제화 남자 몽크스트랩 정장구두', 40000, '남성 구두', 'gudu_image/3_gudu.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (22, 'OULCOMPANY캐주얼 구두', 60000, '남성 구두', 'gudu_image/4_gudu.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (23, '뉴스마트로퍼', 65000, '남성 구두', 'gudu_image/5_gudu.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (24, '발렌시아가 BB 로고 더비', 90000, '남성 구두', 'gudu_image/6_gudu.PNG');

INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (25, '남녀공용 알피나 고어텍스', 55000, '등산화', 'mount_image/1_mount.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (26, '스테고 BOA', 40000, '등산화', 'mount_image/2_mount.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (27, '여성 GORE-TEX 로우컷 트레킹화', 15000, '등산화', 'mount_image/3_mount.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (28, '듀얼 테크 BOA', 70000, '등산화', 'mount_image/4_mount.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (29, '남녀공용 미드컷 트레킹화', 85000, '등산화', 'mount_image/5_mount.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (30, '플로우 니트', 45000, '등산화', 'mount_image/6_mount.PNG');

INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (31, '그리폰 샌들 블랙 샌들', 40000, '샌들', 'sandlel_image/1_sandle.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (32, '맨즈 허리케인 XLT2', 15000, '샌들', 'sandlel_image/2_sandle.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (33, '매그머 샌들 W -옐로우', 70000, '샌들', 'sandlel_image/3_sandle.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (34, '(남성) 뉴포트 H2 - 그레이', 50000, '샌들', 'sandlel_image/4_sandle.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (35, '우먼즈 허리케인 XLT2', 55000, '샌들', 'andlel_image/5_sandle.PNG');
INSERT INTO 상품 (상품번호, 상품이름, 상품가격, 상품종류, 이미지링크) VALUES (36, '테렉스 숨라', 40000, '샌들', 'sandlel_image/6_sandle.PNG');

CREATE SEQUENCE 장바구니_번호 START WITH 1 INCREMENT BY 1 MAXVALUE 200 CYCLE NOCACHE;
CREATE TABLE 장바구니 (
  일련번호 int PRIMARY KEY,
  아이디 NVARCHAR2(20) NOT NULL,
  상품번호 int,
  FOREIGN KEY(아이디) REFERENCES 회원(아이디),
  FOREIGN KEY(상품번호) REFERENCES 상품(상품번호)
);

SELECT last_number FROM USER_SEQUENCES WHERE SEQUENCE_NAME = '사진게시판_번호';
ALTER SEQUENCE 사진게시판_번호 INCREMENT BY -196;
SELECT 사진게시판_번호.NEXTVAL FROM DUAL;
SELECT 사진게시판_번호.CURRVAL FROM DUAL;
ALTER SEQUENCE 사진게시판_번호 INCREMENT BY 1;

CREATE SEQUENCE 자유게시판_번호 START WITH 1 INCREMENT BY 1 MAXVALUE 200 CYCLE NOCACHE;
CREATE TABLE 자유게시판 (
  게시판번호 int PRIMARY KEY,
  아이디 NVARCHAR2(20) NOT NULL,
  제목 NVARCHAR2(20),
  글내용 NVARCHAR2(200),
  FOREIGN KEY(아이디) REFERENCES 회원(아이디)
);

CREATE SEQUENCE 사진게시판_번호 START WITH 1 INCREMENT BY 1 MAXVALUE 200 CYCLE NOCACHE;
CREATE TABLE 사진게시판 (
  게시판번호 int PRIMARY KEY,
  아이디 NVARCHAR2(20) NOT NULL,
  제목 NVARCHAR2(20),
  글내용 NVARCHAR2(200),  
  이미지링크 NVARCHAR2(100),
  FOREIGN KEY(아이디) REFERENCES 회원(아이디)
);

