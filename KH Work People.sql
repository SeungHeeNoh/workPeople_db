---- DROP TABLE
DROP TABLE attachment CASCADE CONSTRAINTS;
DROP TABLE sector CASCADE CONSTRAINTS;
DROP TABLE member_type CASCADE CONSTRAINTS;
DROP TABLE authority CASCADE CONSTRAINTS;
DROP TABLE info_manager CASCADE CONSTRAINTS;
DROP TABLE company_type CASCADE CONSTRAINTS;
DROP TABLE payment CASCADE CONSTRAINTS;
DROP TABLE education_level CASCADE CONSTRAINTS;
DROP TABLE pay_type CASCADE CONSTRAINTS;
DROP TABLE role CASCADE CONSTRAINTS;
DROP TABLE job_type CASCADE CONSTRAINTS;
DROP TABLE experience_level CASCADE CONSTRAINTS;
DROP TABLE gender CASCADE CONSTRAINTS;
DROP TABLE day CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE sns_info CASCADE CONSTRAINTS;
DROP TABLE MEMBER_ROLE CASCADE CONSTRAINTS;
DROP TABLE MANAGER_ROLE CASCADE CONSTRAINTS;
DROP TABLE Email CASCADE CONSTRAINTS;
DROP TABLE company_info CASCADE CONSTRAINTS;
DROP TABLE scrap_company CASCADE CONSTRAINTS;
DROP TABLE Interested_Company CASCADE CONSTRAINTS;
DROP TABLE chat_log CASCADE CONSTRAINTS;
DROP TABLE job_vacancy CASCADE CONSTRAINTS;
DROP TABLE job_vacancy_experience_level CASCADE CONSTRAINTS;
DROP TABLE job_vacancy_job_type CASCADE CONSTRAINTS;
DROP TABLE job_vacancy_role CASCADE CONSTRAINTS;
DROP TABLE Browse CASCADE CONSTRAINTS;
DROP TABLE Scrap CASCADE CONSTRAINTS;
DROP TABLE job_vacancy_img CASCADE CONSTRAINTS;
DROP TABLE recruitment_industry CASCADE CONSTRAINTS;
DROP TABLE promotion_order CASCADE CONSTRAINTS;
DROP TABLE promotion_code CASCADE CONSTRAINTS;
DROP TABLE Resume CASCADE CONSTRAINTS;
DROP TABLE Basic_Info CASCADE CONSTRAINTS;
DROP TABLE Education CASCADE CONSTRAINTS;
DROP TABLE Career CASCADE CONSTRAINTS;
DROP TABLE Activity CASCADE CONSTRAINTS;
DROP TABLE License CASCADE CONSTRAINTS;
DROP TABLE Awards CASCADE CONSTRAINTS;
DROP TABLE Self_Introduction CASCADE CONSTRAINTS;
DROP TABLE Resume_Browse CASCADE CONSTRAINTS;
DROP TABLE Language CASCADE CONSTRAINTS;
DROP TABLE Apply_Company CASCADE CONSTRAINTS;
DROP TABLE Apply_Interview CASCADE CONSTRAINTS;
DROP TABLE report_vacancy CASCADE CONSTRAINTS;


-- DROP SEQUENCE

-- 담당자 : 조용호
DROP SEQUENCE SEQ_RESUME_NO;
-- 이력서 번호
DROP SEQUENCE SEQ_CAREER_NO;
-- 경력 번호
DROP SEQUENCE SEQ_ACTIVITY_NO;
-- 인턴,대외활동 번호
DROP SEQUENCE SEQ_LICENSE_NO;
-- 자격증 번호
DROP SEQUENCE SEQ_LANGUAGE_NO;
-- 어학 번호
DROP SEQUENCE SEQ_AWARDS_NO;
-- 수상 내역 번호
DROP SEQUENCE SEQ_SELF_INTR_NO;
-- 자기소개서 번호

-- 담당자 : 노승희
DROP SEQUENCE SEQ_MEMBER_TYPE_NO;
-- 계정 유형 번호
DROP SEQUENCE SEQ_SECTOR_NO;
-- 업종 번호
DROP SEQUENCE SEQ_COMPANY_TYPE_NO;
-- 기업 형태 번호
DROP SEQUENCE SEQ_MEMBER_NO;
-- 회원 번호

-- 담당자 : 서정화
DROP SEQUENCE SEQ_PROMOTION_CODE_NO;
-- 판매 제품 번호
DROP SEQUENCE SEQ_PAYMENT_NO;
-- 상품코드 번호
DROP SEQUENCE SEQ_PROMOTION_ORDER_NO;
-- 결제 번호
DROP SEQUENCE SEQ_COMPANY_INFO_NO;
-- 기업 정보 번호
DROP SEQUENCE SEQ_ATTACHMENT_NO;
-- 첨부 파일 번호

--담당자 : 김유진

DROP SEQUENCE SEQ_AUTHORITY_NO;
--권한 번호
DROP SEQUENCE SEQ_INFO_MANAGER_NO;
-- 관리자 번호
DROP SEQUENCE SEQ_REPORT_VACANCY_NO;
-- 신고 공고 번호

---------------

-- CREATE SEQUENCE

-- 담당자 : 조용호
CREATE SEQUENCE SEQ_RESUME_NO;
-- 이력서 번호
CREATE SEQUENCE SEQ_CAREER_NO;
-- 경력 번호
CREATE SEQUENCE SEQ_ACTIVITY_NO;
-- 인턴,대외활동 번호
CREATE SEQUENCE SEQ_LICENSE_NO;
-- 자격증 번호
CREATE SEQUENCE SEQ_LANGUAGE_NO;
-- 어학 번호
CREATE SEQUENCE SEQ_AWARDS_NO;
-- 수상 내역 번호
CREATE SEQUENCE SEQ_SELF_INTR_NO;
-- 자기소개서 번호

-- 담당자 : 노승희
CREATE SEQUENCE SEQ_MEMBER_TYPE_NO;
-- 계정 유형 번호
CREATE SEQUENCE SEQ_SECTOR_NO;
-- 업종 번호
CREATE SEQUENCE SEQ_COMPANY_TYPE_NO;
-- 기업 형태 번호
CREATE SEQUENCE SEQ_MEMBER_NO;
-- 회원 번호

-- 담당자 : 서정화
CREATE SEQUENCE SEQ_PROMOTION_CODE_NO;
-- 판매 제품 번호
CREATE SEQUENCE SEQ_PAYMENT_NO;
-- 상품코드 번호
CREATE SEQUENCE SEQ_PROMOTION_ORDER_NO;
-- 결제 번호
CREATE SEQUENCE SEQ_COMPANY_INFO_NO;
-- 기업 정보 번호
CREATE SEQUENCE SEQ_ATTACHMENT_NO;
-- 첨부 파일 번호

-- 담당자 : 김유진
CREATE SEQUENCE SEQ_AUTHORITY_NO;
--권한 번호
CREATE SEQUENCE SEQ_INFO_MANAGER_NO;
-- 관리자 번호
CREATE SEQUENCE SEQ_REPORT_VACANCY_NO;
-- 신고 공고 번호

----------------

CREATE TABLE member (
	m_no	number		NOT NULL,
	mt_no	number		NOT NULL,
	m_id	varchar2(20 char)		NULL,
	m_pwd	varchar2(100 char)		NULL,
	m_name	varchar2(15 char)		NULL,
	m_phone	varchar2(15 char)		NULL,
	m_email	varchar2(60 char)		NULL,
	m_postcode	varchar2(40 char)		NOT NULL,
	m_roadAddress	varchar2(100 char)		NOT NULL,
	m_detailAddress	varchar2(100 char)		NOT NULL,
	m_enroll_date	date	DEFAULT SYSDATE	NULL,
	m_modify_date	date	DEFAULT SYSDATE	NULL,
	m_login_fail_count	number	DEFAULT 0	NULL,
	m_is_lock	varchar2(1 char)	DEFAULT 'N'	NULL,
	m_latest_try_login_date	date		NULL,
	m_lock_count	number	DEFAULT 0	NULL,
	m_status	varchar2(1 char)	DEFAULT 'Y'	NOT NULL,
	m_temp_pwd_yn	varchar2(1 char)	DEFAULT 'N'	NULL
);

COMMENT ON COLUMN member.m_no IS '회원번호';

COMMENT ON COLUMN member.mt_no IS '계정 유형 번호';

COMMENT ON COLUMN member.m_id IS '회원ID';

COMMENT ON COLUMN member.m_pwd IS '회원 비밀번호';

COMMENT ON COLUMN member.m_name IS '회원 이름';

COMMENT ON COLUMN member.m_phone IS '연락처';

COMMENT ON COLUMN member.m_email IS '이메일';

COMMENT ON COLUMN member.m_postcode IS '우편번호';

COMMENT ON COLUMN member.m_roadAddress IS '도로명주소';

COMMENT ON COLUMN member.m_detailAddress IS '상세주소';

COMMENT ON COLUMN member.m_enroll_date IS '가입일자';

COMMENT ON COLUMN member.m_modify_date IS '수정일자';

COMMENT ON COLUMN member.m_login_fail_count IS '로그인 실패 횟수';

COMMENT ON COLUMN member.m_is_lock IS '계정 잠금 여부';

COMMENT ON COLUMN member.m_latest_try_login_date IS '마지막 접속 시도 시각';

COMMENT ON COLUMN member.m_lock_count IS '로그인 시도 제한 횟수';

COMMENT ON COLUMN member.m_status IS '가입 상태';

COMMENT ON COLUMN member.m_temp_pwd_yn IS '임시비밀번호 여부';



CREATE TABLE Basic_Info (
	r_no	number		NOT NULL,
	bi_title	varchar2(30 char)		NOT NULL,
	bi_name	varchar2(10 char)		NOT NULL,
	bi_gender	varchar2(1 char)		NOT NULL,
	bi_birth_date	date		NOT NULL,
	bi_age	number		NOT NULL,
	bi_email	varchar2(90 char)		NOT NULL,
	bi_phone	varchar2(15 char)		NOT NULL,
	bi_address	varchar2(30 char)		NOT NULL,
	bi_address_detail	varchar2(15 char)		NOT NULL,
	sector_no	number		NOT NULL,
	a_no	NUMBER		NOT NULL
);

COMMENT ON COLUMN Basic_Info.r_no IS '이력서번호';

COMMENT ON COLUMN Basic_Info.bi_title IS '이력서제목';

COMMENT ON COLUMN Basic_Info.bi_name IS '이름';

COMMENT ON COLUMN Basic_Info.bi_gender IS '성별';

COMMENT ON COLUMN Basic_Info.bi_birth_date IS '생년월일';

COMMENT ON COLUMN Basic_Info.bi_age IS '나이';

COMMENT ON COLUMN Basic_Info.bi_email IS '이메일';

COMMENT ON COLUMN Basic_Info.bi_phone IS '전화번호';

COMMENT ON COLUMN Basic_Info.bi_address IS '주소';

COMMENT ON COLUMN Basic_Info.bi_address_detail IS '상세주소';

COMMENT ON COLUMN Basic_Info.sector_no IS '업종 번호';

COMMENT ON COLUMN Basic_Info.a_no IS '첨부파일번호';

CREATE TABLE Resume (
	r_no	number		NOT NULL,
	r_enroll_date	date	DEFAULT SYSDATE	NULL,
	r_status_YN	varchar2(1 char)	DEFAULT 'N'	NULL,
	m_no	number		NOT NULL
);

COMMENT ON COLUMN Resume.r_no IS '이력서번호';

COMMENT ON COLUMN Resume.r_enroll_date IS '등록일';

COMMENT ON COLUMN Resume.r_status_YN IS '대표이력서 여부(Y,N)';

COMMENT ON COLUMN Resume.m_no IS '회원번호';



CREATE TABLE Career (
	c_no	number		NOT NULL,
	r_no	number		NOT NULL,
	c_yn	varchar2(1 char)		NOT NULL,
	c_name	varchar2(30 char)		NULL,
	c_employment_date	date		NULL,
	c_unemployment_date	date		NULL,
	c_position	varchar2(20 char)		NULL,
	c_department	varchar2(20 char)		NULL,
	c_task	varchar2(300 char)		NULL,
	c_resignation	varchar2(100 char)		NULL
);

COMMENT ON COLUMN Career.c_no IS '경력 번호';

COMMENT ON COLUMN Career.r_no IS '이력서번호';

COMMENT ON COLUMN Career.c_yn IS '경력 여부';

COMMENT ON COLUMN Career.c_name IS '회사 이름';

COMMENT ON COLUMN Career.c_employment_date IS '취직 년월';

COMMENT ON COLUMN Career.c_unemployment_date IS '실직 년월';

COMMENT ON COLUMN Career.c_position IS '직급/직책';

COMMENT ON COLUMN Career.c_department IS '근무 부서';

COMMENT ON COLUMN Career.c_task IS '담당 업무';

COMMENT ON COLUMN Career.c_resignation IS '퇴사 사유';



CREATE TABLE Activity (
	a_no	number		NOT NULL,
	r_no	number		NOT NULL,
	a_activity	varchar2(20 char)		NOT NULL,
	a_department	varchar2(20 char)		NOT NULL,
	a_start_date	date		NOT NULL,
	a_end_date	date		NOT NULL,
	a_content	varchar2(300 char)		NOT NULL
);

COMMENT ON COLUMN Activity.a_no IS '활동번호';

COMMENT ON COLUMN Activity.r_no IS '이력서번호';

COMMENT ON COLUMN Activity.a_activity IS '활동 구분';

COMMENT ON COLUMN Activity.a_department IS '기관,장소';

COMMENT ON COLUMN Activity.a_start_date IS '활동 시작일(년월일)';

COMMENT ON COLUMN Activity.a_end_date IS '활동 종료일(년월일)';

COMMENT ON COLUMN Activity.a_content IS '활동 내용';



CREATE TABLE License (
	l_no	number		NOT NULL,
	r_no	number		NOT NULL,
	l_name	varchar2(20 char)		NOT NULL,
	l_department	varchar2(20 char)		NOT NULL,
	l_pass_YN	varchar2(1 char)		NOT NULL,
	l_acquisition_date	date		NOT NULL
);

COMMENT ON COLUMN License.l_no IS '자격증 번호';

COMMENT ON COLUMN License.r_no IS '이력서번호';

COMMENT ON COLUMN License.l_name IS '자격증명';

COMMENT ON COLUMN License.l_department IS '발행처,기관';

COMMENT ON COLUMN License.l_pass_YN IS '합격여부';

COMMENT ON COLUMN License.l_acquisition_date IS '취득일';



CREATE TABLE Language (
	l_no	number		NOT NULL,
	r_no	number		NOT NULL,
	l_name	varchar2(20 char)		NOT NULL,
	l_type	varchar2(20 char)		NOT NULL,
	l_score	number		NOT NULL,
	l_rating	varchar2(20 char)		NOT NULL,
	l_acquisition	date		NOT NULL
);

COMMENT ON COLUMN Language.l_no IS '어학 번호';

COMMENT ON COLUMN Language.r_no IS '이력서번호';

COMMENT ON COLUMN Language.l_name IS '언어 종류';

COMMENT ON COLUMN Language.l_type IS '시험 종류';

COMMENT ON COLUMN Language.l_score IS '점수';

COMMENT ON COLUMN Language.l_rating IS '급수';

COMMENT ON COLUMN Language.l_acquisition IS '취득일';



CREATE TABLE Awards (
	a_no	number		NOT NULL,
	r_no	number		NOT NULL,
	a_name	varchar2(20 char)		NOT NULL,
	a_department	varchar2(20 char)		NOT NULL,
	a_acquisition	date		NOT NULL
);

COMMENT ON COLUMN Awards.a_no IS '수상내역 번호';

COMMENT ON COLUMN Awards.r_no IS '이력서번호';

COMMENT ON COLUMN Awards.a_name IS '수상명';

COMMENT ON COLUMN Awards.a_department IS '수여기관';

COMMENT ON COLUMN Awards.a_acquisition IS '취득일';



CREATE TABLE Self_Introduction (
	si_no	number		NOT NULL,
	r_no	number		NOT NULL,
	si_title	varchar2(30 char)		NOT NULL,
	si_content	varchar2(1000 char)		NOT NULL
);

COMMENT ON COLUMN Self_Introduction.si_no IS '자소서 번호';

COMMENT ON COLUMN Self_Introduction.r_no IS '이력서번호';

COMMENT ON COLUMN Self_Introduction.si_title IS '자소서 항목 제목';

COMMENT ON COLUMN Self_Introduction.si_content IS '자소서 항목 내용';



CREATE TABLE Resume_Browse (
	ci_no	number		NOT NULL,
	r_no	number		NOT NULL,
	rb_browse	varchar2(12 char)		NOT NULL,
	rb_date	date		NULL
);

COMMENT ON COLUMN Resume_Browse.ci_no IS '기업 정보 번호';

COMMENT ON COLUMN Resume_Browse.r_no IS '이력서번호';

COMMENT ON COLUMN Resume_Browse.rb_browse IS '열람 구분';

COMMENT ON COLUMN Resume_Browse.rb_date IS '열람일';



CREATE TABLE attachment (
	a_no	NUMBER		NOT NULL,
	a_origin_name	VARCHAR2(255 BYTE)		NOT NULL,
	a_change_name	VARCHAR2(255 BYTE)		NOT NULL,
	a_file_path	VARCHAR2(1000 BYTE)		NOT NULL,
	a_status	VARCHAR2(1 BYTE)	DEFAULT 'N'	NULL,
	a_create	date	DEFAULT SYSDATE	NOT NULL,
	a_update	date	DEFAULT SYSDATE	NOT NULL
);

COMMENT ON COLUMN attachment.a_no IS '첨부파일번호';

COMMENT ON COLUMN attachment.a_origin_name IS '기존파일이름';

COMMENT ON COLUMN attachment.a_change_name IS '변경파일이름';

COMMENT ON COLUMN attachment.a_file_path IS '파일경로';

COMMENT ON COLUMN attachment.a_status IS '삭제여부';

COMMENT ON COLUMN attachment.a_create IS '생성일';

COMMENT ON COLUMN attachment.a_update IS '수정일';



CREATE TABLE scrap_company (
	m_no	number		NOT NULL,
	r_no	number		NOT NULL
);

COMMENT ON COLUMN scrap_company.m_no IS '회원번호(기업)';

COMMENT ON COLUMN scrap_company.r_no IS '이력서번호';



CREATE TABLE payment (
	pay_no	number		NOT NULL,
	p_no	number		NOT NULL,
	pay_date	date		NOT NULL,
	pay_price	number		NOT NULL,
	pay_method	VARCHAR2(50 char)		NOT NULL,
	pay_detail	VARCHAR2(50 char)		NULL
);

COMMENT ON COLUMN payment.pay_no IS '결제번호';

COMMENT ON COLUMN payment.p_no IS '주문번호';

COMMENT ON COLUMN payment.pay_date IS '결제일';

COMMENT ON COLUMN payment.pay_price IS '결제금액';

COMMENT ON COLUMN payment.pay_method IS '결제방법';

COMMENT ON COLUMN payment.pay_detail IS '결제세부내용';



CREATE TABLE promotion_order (
	p_no	number		NOT NULL,
	p_code	number		NOT NULL,
	p_start_date	DATE		NOT NULL,
	p_end_date	DATE		NOT NULL,
	jv_no	number		NOT NULL,
	m_no	number		NOT NULL
);

COMMENT ON COLUMN promotion_order.p_no IS '주문번호';

COMMENT ON COLUMN promotion_order.p_code IS '상품코드';

COMMENT ON COLUMN promotion_order.p_start_date IS '시작일';

COMMENT ON COLUMN promotion_order.p_end_date IS '마감일';

COMMENT ON COLUMN promotion_order.jv_no IS '공고 번호';

COMMENT ON COLUMN promotion_order.m_no IS '회원번호';



CREATE TABLE promotion_code (
	p_code	number		NOT NULL,
	p_name	VARCHAR2(50 char)		NOT NULL,
	p_price	NUMBER		NOT NULL
);

COMMENT ON COLUMN promotion_code.p_code IS '상품코드';

COMMENT ON COLUMN promotion_code.p_name IS '상품명';

COMMENT ON COLUMN promotion_code.p_price IS '상품금액';



CREATE TABLE sns_info (
	m_no	number		NOT NULL,
	si_id	varchar2(255 char)		NOT NULL,
	si_type	varchar2(10 char)		NULL,
	si_name	varchar2(255 char)		NULL,
	si_profile	varchar2(255 char)		NULL,
	si_connect_date	date	DEFAULT SYSDATE	NULL
);

COMMENT ON COLUMN sns_info.m_no IS '회원번호';

COMMENT ON COLUMN sns_info.si_id IS 'sns id';

COMMENT ON COLUMN sns_info.si_type IS 'sns type';

COMMENT ON COLUMN sns_info.si_name IS 'sns name';

COMMENT ON COLUMN sns_info.si_profile IS 'sns profile';

COMMENT ON COLUMN sns_info.si_connect_date IS 'sns 연결 일자';



CREATE TABLE company_info (
	ci_no	number		NOT NULL,
	ci_company_register_number	varchar2(12 char)		NOT NULL,
    ci_ceoname	varchar2(4 char) NULL,
	ci_founding_date	date	NULL,
	ci_employee_number	number	DEFAULT 0	NULL,
	ci_business_detail	varchar2(50 char)		NULL,
	ci_company_history	varchar2(2000)		NULL,
	ci_company_vision	varchar2(2000)		NULL,
	ci_homepage	varchar2(100 char)		NULL,
	a_no	NUMBER		NULL,
	ci_status_yn	varchar2(1 char)	DEFAULT 'N'	NOT NULL,
	ct_no	number		NOT NULL,
	m_no	number		NOT NULL,
	s_no	number		NOT NULL
);

COMMENT ON COLUMN company_info.ci_ceoname IS '대표자명';

COMMENT ON COLUMN company_info.ci_no IS '기업 정보 번호';

COMMENT ON COLUMN company_info.ci_company_register_number IS '사업자 등록번호';

COMMENT ON COLUMN company_info.ci_founding_date IS '설립일';

COMMENT ON COLUMN company_info.ci_employee_number IS '사원수';

COMMENT ON COLUMN company_info.ci_business_detail IS '주요사업내용';

COMMENT ON COLUMN company_info.ci_company_history IS '연혁 및 실적';

COMMENT ON COLUMN company_info.ci_company_vision IS '기업 개요 및 비전';

COMMENT ON COLUMN company_info.ci_hompage IS '홈페이지';

COMMENT ON COLUMN company_info.a_no IS '첨부파일번호';

COMMENT ON COLUMN company_info.ci_status_yn IS '비활성화여부';

COMMENT ON COLUMN company_info.ct_no IS '기업 형태 번호';

COMMENT ON COLUMN company_info.m_no IS '회원번호';

COMMENT ON COLUMN company_info.s_no IS '업종 번호';



CREATE TABLE company_type (
	ct_no	number		NOT NULL,
	ct_name	varchar2(10 char)		NOT NULL
);

COMMENT ON COLUMN company_type.ct_no IS '기업 형태 번호';

COMMENT ON COLUMN company_type.ct_name IS '기업 형태명';



CREATE TABLE sector (
	s_no	number		NOT NULL,
	s_name	varchar2(10 char)		NOT NULL
);

COMMENT ON COLUMN sector.s_no IS '업종 번호';

COMMENT ON COLUMN sector.s_name IS '업종명';



CREATE TABLE member_type (
	mt_no	number		NOT NULL,
	mt_name	varchar2(5 char)		NOT NULL
);

COMMENT ON COLUMN member_type.mt_no IS '계정 유형 번호';

COMMENT ON COLUMN member_type.mt_name IS '계정 유형명';



CREATE TABLE info_manager (
	im_no	number		NOT NULL,
	im_id	varchar2(20)		NOT NULL,
	im_pwd	varchar2(300)		NOT NULL,
	im_name	varchar(100)		NOT NULL
);

COMMENT ON COLUMN info_manager.im_no IS '관리자 번호';

COMMENT ON COLUMN info_manager.im_id IS '관리자 아이디';

COMMENT ON COLUMN info_manager.im_pwd IS '관리자 비밀번호';

COMMENT ON COLUMN info_manager.im_name IS '관리자 이름';



CREATE TABLE Education (
	r_no	number		NOT NULL,
	e_type	varchar2(10 char)		NOT NULL,
	e_high_name	varchar2(20  char)		NULL,
	e_high_major	varchar2(10 char)		NULL,
	e_high_admission	date		NULL,
	e_high_graduation	date		NULL,
	e_colleage_type	varchar2(15 char)		NULL,
	e_colleage_name	varchar2(20  char)		NULL,
	e_colleage_admission	date		NULL,
	e_colleage_admission_type	varchar2(10 char)		NULL,
	e_colleage_graduate	date		NULL,
	e_colleage_graduate_type	varchar2(10 char)		NULL,
	e_colleage_major	varchar2(20 char)		NULL,
	e_colleage_credit	varchar2(5 char)		NULL,
	e_colleage_standard_credit	varchar2(5 char)		NULL,
	e_master_name	varchar2(20  char)		NULL,
	e_master_admission	date		NULL,
	e_master_admission_type	varchar2(10 char)		NULL,
	e_master_graduate	date		NULL,
	e_master_graduate_type	varchar2(10 char)		NULL,
	e_master_major	varchar2(20 char)		NULL,
	e_master_credit	varchar2(5 char)		NULL,
	e_master_standard_credit	varchar2(5 char)		NULL,
	e_doctor_name	varchar2(20  char)		NULL,
	e_doctor_admission	date		NULL,
	e_doctor_admission_type	varchar2(10 char)		NULL,
	e_doctor_graduate	date		NULL,
	e_doctor_graduate_type	varchar2(10 char)		NULL,
	e_doctor_major	varchar2(20 char)		NULL,
	e_doctor_credit	varchar2(5 char)		NULL,
	e_doctor_standard_credit	varchar2(5 char)		NULL
);

COMMENT ON COLUMN Education.r_no IS '이력서번호';

COMMENT ON COLUMN Education.e_type IS '학력구분';

COMMENT ON COLUMN Education.e_high_name IS '학교이름';

COMMENT ON COLUMN Education.e_high_major IS '전공 계열';

COMMENT ON COLUMN Education.e_high_admission IS '입학 년월';

COMMENT ON COLUMN Education.e_high_graduation IS '졸업 년월';

COMMENT ON COLUMN Education.e_colleage_type IS '학력구분';

COMMENT ON COLUMN Education.e_colleage_name IS '대학 이름';

COMMENT ON COLUMN Education.e_colleage_admission IS '대학 입학년월';

COMMENT ON COLUMN Education.e_colleage_admission_type IS '대학 입학 구분';

COMMENT ON COLUMN Education.e_colleage_graduate IS '대학 졸업년월';

COMMENT ON COLUMN Education.e_colleage_graduate_type IS '대학 졸업구분';

COMMENT ON COLUMN Education.e_colleage_major IS '대학 전공';

COMMENT ON COLUMN Education.e_colleage_credit IS '대학 학점';

COMMENT ON COLUMN Education.e_colleage_standard_credit IS '대학 기준학점';

COMMENT ON COLUMN Education.e_master_name IS '대학원(석사) 이름';

COMMENT ON COLUMN Education.e_master_admission IS '대학원(석사)  입학년월';

COMMENT ON COLUMN Education.e_master_admission_type IS '대학원(석사)  입학 구분';

COMMENT ON COLUMN Education.e_master_graduate IS '대학원(석사) 졸업년월';

COMMENT ON COLUMN Education.e_master_graduate_type IS '대학원(석사)  졸업구분';

COMMENT ON COLUMN Education.e_master_major IS '대학원(석사) 전공';

COMMENT ON COLUMN Education.e_master_credit IS '대학원(석사) 학점';

COMMENT ON COLUMN Education.e_master_standard_credit IS '대학원(석사) 기준학점';

COMMENT ON COLUMN Education.e_doctor_name IS '대학원(박사) 이름';

COMMENT ON COLUMN Education.e_doctor_admission IS '대학원(박사) 입학년월';

COMMENT ON COLUMN Education.e_doctor_admission_type IS '대학원(박사) 입학 구분';

COMMENT ON COLUMN Education.e_doctor_graduate IS '대학원(박사) 졸업년월';

COMMENT ON COLUMN Education.e_doctor_graduate_type IS '대학원(박사) 졸업구분';

COMMENT ON COLUMN Education.e_doctor_major IS '대학원(박사) 전공';

COMMENT ON COLUMN Education.e_doctor_credit IS '대학원(박사) 학점';

COMMENT ON COLUMN Education.e_doctor_standard_credit IS '대학원(박사) 기준학점';



CREATE TABLE Interested_Company (
	m_no	number		NOT NULL,
	ci_no	number		NOT NULL
);

COMMENT ON COLUMN Interested_Company.m_no IS '회원번호';

COMMENT ON COLUMN Interested_Company.ci_no IS '기업 정보 번호';



CREATE TABLE Email (
	e_no	number		NOT NULL,
	e_rec	varchar2(40char)		NOT NULL,
	e_title	varchar2(50char)		NOT NULL,
	e_text	varchar2(1000char)		NULL,
	e_send_date	number		NOT NULL,
	u_no	number		NOT NULL,
	a_no	NUMBER		NULL
);

COMMENT ON COLUMN Email.e_no IS '메일번호';

COMMENT ON COLUMN Email.e_rec IS '수신자 이메일';

COMMENT ON COLUMN Email.e_title IS '제목';

COMMENT ON COLUMN Email.e_text IS '내용';

COMMENT ON COLUMN Email.e_send_date IS '전송일';

COMMENT ON COLUMN Email.u_no IS '회원번호(발신자)';

COMMENT ON COLUMN Email.a_no IS '첨부파일번호';



CREATE TABLE job_vacancy (
	jv_no	number		NOT NULL,
	jv_title	varchar2(60 char)		NOT NULL,
	jv_register	date	DEFAULT SYSDATE	NOT NULL,
	jv_update	date	DEFAULT SYSDATE	NOT NULL,
	jv_display	date	DEFAULT SYSDATE	NOT NULL,
	jv_count	number	DEFAULT 0	NOT NULL,
	jv_to	number	DEFAULT 0	NOT NULL,
	jv_period_start	date		NOT NULL,
	jv_period_end	date		NOT NULL,
	jv_workday_start_time	date		NOT NULL,
	jv_workday_end_time	date		NOT NULL,
	jv_address	varchar2(100 char)		NOT NULL,
	g_no	number		NOT NULL,
	el_no	number		NOT NULL,
	jv_major	varchar2(120 char)		NOT NULL,
	ci_no	number		NOT NULL,
	d_no	number		NOT NULL,
	jv_status_yn	varchar2(1 char)	DEFAULT 'N'	NOT NULL,
	jv_detail_text	varchar2(2000 char)		NOT NULL,
	jv_certificate	varchar2(100 char)		NOT NULL,
	jv_age	varchar2(30 char)		NOT NULL,
	jv_pay	number	DEFAULT 0	NOT NULL,
	pt_no	number		NOT NULL
);

COMMENT ON COLUMN job_vacancy.jv_no IS '공고 번호';

COMMENT ON COLUMN job_vacancy.jv_title IS '공고 제목';

COMMENT ON COLUMN job_vacancy.jv_register IS '공고 등록일';

COMMENT ON COLUMN job_vacancy.jv_update IS '공고 수정일';

COMMENT ON COLUMN job_vacancy.jv_display IS '공고 노출일';

COMMENT ON COLUMN job_vacancy.jv_count IS '공고 조회수';

COMMENT ON COLUMN job_vacancy.jv_to IS '모집 인원';

COMMENT ON COLUMN job_vacancy.jv_period_start IS '공고 시작';

COMMENT ON COLUMN job_vacancy.jv_period_end IS '공고 마감';

COMMENT ON COLUMN job_vacancy.jv_workday_start_time IS '근무 시간 시작';

COMMENT ON COLUMN job_vacancy.jv_workday_end_time IS '근무 시간 종료';

COMMENT ON COLUMN job_vacancy.jv_address IS '근무 지역';

COMMENT ON COLUMN job_vacancy.g_no IS '성별 번호';

COMMENT ON COLUMN job_vacancy.el_no IS '학력 정보';

COMMENT ON COLUMN job_vacancy.jv_major IS '전공';

COMMENT ON COLUMN job_vacancy.ci_no IS '기업 정보 번호';

COMMENT ON COLUMN job_vacancy.d_no IS '근무요일번호';

COMMENT ON COLUMN job_vacancy.jv_status_yn IS '노출여부';

COMMENT ON COLUMN job_vacancy.jv_detail_text IS '공고 상세글';

COMMENT ON COLUMN job_vacancy.jv_certificate IS '자격증';

COMMENT ON COLUMN job_vacancy.jv_age IS '나이';

COMMENT ON COLUMN job_vacancy.jv_pay IS 'jv_pay';

COMMENT ON COLUMN job_vacancy.pt_no IS '급여종류번호';



CREATE TABLE Browse (
	m_no	number		NOT NULL,
	jv_no	number		NOT NULL
);

COMMENT ON COLUMN Browse.m_no IS '회원번호';

COMMENT ON COLUMN Browse.jv_no IS '공고 번호';



CREATE TABLE recruitment_industry (
	s_no	number		NOT NULL,
	jv_no	number		NOT NULL
);

COMMENT ON COLUMN recruitment_industry.s_no IS '업종 번호';

COMMENT ON COLUMN recruitment_industry.jv_no IS '공고 번호';



CREATE TABLE experience_level (
	el_no	number		NOT NULL,
	el_name	varchar2(10char)		NOT NULL
);

COMMENT ON COLUMN experience_level.el_no IS '경력 번호';

COMMENT ON COLUMN experience_level.el_name IS '경력명';



CREATE TABLE job_vacancy_experience_level (
	el_no	number		NOT NULL,
	jv_no	number		NOT NULL
);

COMMENT ON COLUMN job_vacancy_experience_level.el_no IS '경력 번호';

COMMENT ON COLUMN job_vacancy_experience_level.jv_no IS '공고 번호';



CREATE TABLE job_type (
	jt_no	number		NOT NULL,
	jt_name	varchar2(10char)		NOT NULL
);

COMMENT ON COLUMN job_type.jt_no IS '근무 형태 번호';

COMMENT ON COLUMN job_type.jt_name IS '근무 형태명';



CREATE TABLE job_vacancy_job_type (
	jt_no	number		NOT NULL,
	jv_no	number		NOT NULL
);

COMMENT ON COLUMN job_vacancy_job_type.jt_no IS '근무 형태 번호';

COMMENT ON COLUMN job_vacancy_job_type.jv_no IS '공고 번호';



CREATE TABLE role (
	r_no	number		NOT NULL,
	r_name	varchar(10char)		NOT NULL
);

COMMENT ON COLUMN role.r_no IS '직급직책 번호';

COMMENT ON COLUMN role.r_name IS '직급직책명';



CREATE TABLE job_vacancy_role (
	r_no	number		NOT NULL,
	jv_no	number		NOT NULL
);

COMMENT ON COLUMN job_vacancy_role.r_no IS '직급직책 번호';

COMMENT ON COLUMN job_vacancy_role.jv_no IS '공고 번호';



CREATE TABLE gender (
	g_no	number		NOT NULL,
	g_name	varchar2(10char)		NOT NULL
);

COMMENT ON COLUMN gender.g_no IS '성별 번호';

COMMENT ON COLUMN gender.g_name IS '성별명';



CREATE TABLE education_level (
	el_no	number		NOT NULL,
	el_name	varchar2(20 char)		NOT NULL
);

COMMENT ON COLUMN education_level.el_no IS '학력 정보';

COMMENT ON COLUMN education_level.el_name IS '학력 정보명';



CREATE TABLE Scrap (
	m_no	number		NOT NULL,
	jv_no	number		NOT NULL
);

COMMENT ON COLUMN Scrap.m_no IS '회원번호';

COMMENT ON COLUMN Scrap.jv_no IS '공고 번호';



CREATE TABLE Apply_Company (
	jv_no	number		NOT NULL,
	r_no	number		NOT NULL,
	ac_type	varchar2(10 char)		NOT NULL,
	ac_date	date	DEFAULT sysdate	NOT NULL
);

COMMENT ON COLUMN Apply_Company.jv_no IS '공고 번호';

COMMENT ON COLUMN Apply_Company.r_no IS '이력서번호';

COMMENT ON COLUMN Apply_Company.ac_type IS '지원상태';

COMMENT ON COLUMN Apply_Company.ac_date IS '지원일';



CREATE TABLE Apply_Interview (
	jv_no	number		NOT NULL,
	r_no	number		NOT NULL,
	ai_certification	varchar2(10 char)		NOT NULL,
	ai_date	date		NOT NULL,
	ai_time	date		NOT NULL
);

COMMENT ON COLUMN Apply_Interview.jv_no IS '공고 번호';

COMMENT ON COLUMN Apply_Interview.r_no IS '이력서번호';

COMMENT ON COLUMN Apply_Interview.ai_certification IS '인증번호';

COMMENT ON COLUMN Apply_Interview.ai_date IS '면접 날짜';

COMMENT ON COLUMN Apply_Interview.ai_time IS '면접 시간';



CREATE TABLE pay_type (
	pt_no	number		NOT NULL,
	pt_name	varchar2(10char)		NOT NULL
);

COMMENT ON COLUMN pay_type.pt_no IS '급여종류번호';

COMMENT ON COLUMN pay_type.pt_name IS '급여종류명';



CREATE TABLE day (
	d_no	number		NOT NULL,
	d_name	varchar2(15char)		NOT NULL
);

COMMENT ON COLUMN day.d_no IS '근무요일번호';

COMMENT ON COLUMN day.d_name IS '근무요일명';



CREATE TABLE report_vacancy (
	rv_no	number		NOT NULL,
	m_no	number		NOT NULL,
	jv_no	number		NOT NULL
);

COMMENT ON COLUMN report_vacancy.rv_no IS '신고 공고(관리자 번호)';

COMMENT ON COLUMN report_vacancy.m_no IS '회원번호';

COMMENT ON COLUMN report_vacancy.jv_no IS '공고 번호';



CREATE TABLE job_vacancy_img (
	jv_no	number		NOT NULL,
	a_no	NUMBER		NOT NULL
);

COMMENT ON COLUMN job_vacancy_img.jv_no IS '공고 번호';

COMMENT ON COLUMN job_vacancy_img.a_no IS '첨부파일번호';



CREATE TABLE chat_log (
	m_no	number		NOT NULL,
	a_no	NUMBER		NOT NULL
);

COMMENT ON COLUMN chat_log.m_no IS '회원번호';

COMMENT ON COLUMN chat_log.a_no IS '첨부파일번호';



CREATE TABLE authority (
	a_code	number		NOT NULL,
	a_name	varchar2(20)		NOT NULL,
	a_desc	varchar2(200 char)		NOT NULL
);

COMMENT ON COLUMN authority.a_code IS '권한코드';

COMMENT ON COLUMN authority.a_name IS '권한명';

COMMENT ON COLUMN authority.a_desc IS 'a_desc';



CREATE TABLE MEMBER_ROLE (
	m_no	number		NOT NULL,
	a_code	number		NOT NULL
);

COMMENT ON COLUMN MEMBER_ROLE.m_no IS '회원번호';

COMMENT ON COLUMN MEMBER_ROLE.a_code IS '권한코드';



CREATE TABLE MANAGER_ROLE (
	im_no	number		NOT NULL,
	a_code	number		NOT NULL
);

COMMENT ON COLUMN MANAGER_ROLE.im_no IS '관리자 번호';

COMMENT ON COLUMN MANAGER_ROLE.a_code IS '권한코드';

ALTER TABLE member ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	m_no
);

ALTER TABLE Basic_Info ADD CONSTRAINT PK_BASIC_INFO PRIMARY KEY (
	r_no
);

ALTER TABLE Resume ADD CONSTRAINT PK_RESUME PRIMARY KEY (
	r_no
);

ALTER TABLE Career ADD CONSTRAINT PK_CAREER PRIMARY KEY (
	c_no,
	r_no
);

ALTER TABLE Activity ADD CONSTRAINT PK_ACTIVITY PRIMARY KEY (
	a_no,
	r_no
);

ALTER TABLE License ADD CONSTRAINT PK_LICENSE PRIMARY KEY (
	l_no,
	r_no
);

ALTER TABLE Language ADD CONSTRAINT PK_LANGUAGE PRIMARY KEY (
	l_no,
	r_no
);

ALTER TABLE Awards ADD CONSTRAINT PK_AWARDS PRIMARY KEY (
	a_no,
	r_no
);

ALTER TABLE Self_Introduction ADD CONSTRAINT PK_SELF_INTRODUCTION PRIMARY KEY (
	si_no,
	r_no
);

ALTER TABLE Resume_Browse ADD CONSTRAINT PK_RESUME_BROWSE PRIMARY KEY (
	ci_no,
	r_no
);

ALTER TABLE attachment ADD CONSTRAINT PK_ATTACHMENT PRIMARY KEY (
	a_no
);

ALTER TABLE scrap_company ADD CONSTRAINT PK_SCRAP_COMPANY PRIMARY KEY (
	m_no,
	r_no
);

ALTER TABLE payment ADD CONSTRAINT PK_PAYMENT PRIMARY KEY (
	pay_no
);

ALTER TABLE promotion_order ADD CONSTRAINT PK_PROMOTION_ORDER PRIMARY KEY (
	p_no
);

ALTER TABLE promotion_code ADD CONSTRAINT PK_PROMOTION_CODE PRIMARY KEY (
	p_code
);

ALTER TABLE sns_info ADD CONSTRAINT PK_SNS_INFO PRIMARY KEY (
	m_no
);

ALTER TABLE company_info ADD CONSTRAINT PK_COMPANY_INFO PRIMARY KEY (
	ci_no
);

ALTER TABLE company_type ADD CONSTRAINT PK_COMPANY_TYPE PRIMARY KEY (
	ct_no
);

ALTER TABLE sector ADD CONSTRAINT PK_SECTOR PRIMARY KEY (
	s_no
);

ALTER TABLE member_type ADD CONSTRAINT PK_MEMBER_TYPE PRIMARY KEY (
	mt_no
);

ALTER TABLE info_manager ADD CONSTRAINT PK_INFO_MANAGER PRIMARY KEY (
	im_no
);

ALTER TABLE Education ADD CONSTRAINT PK_EDUCATION PRIMARY KEY (
	r_no
);

ALTER TABLE Interested_Company ADD CONSTRAINT PK_INTERESTED_COMPANY PRIMARY KEY (
	m_no,
	ci_no
);

ALTER TABLE Email ADD CONSTRAINT PK_EMAIL PRIMARY KEY (
	e_no
);

ALTER TABLE job_vacancy ADD CONSTRAINT PK_JOB_VACANCY PRIMARY KEY (
	jv_no
);

ALTER TABLE Browse ADD CONSTRAINT PK_BROWSE PRIMARY KEY (
	m_no,
	jv_no
);

ALTER TABLE recruitment_industry ADD CONSTRAINT PK_RECRUITMENT_INDUSTRY PRIMARY KEY (
	s_no,
	jv_no
);

ALTER TABLE experience_level ADD CONSTRAINT PK_EXPERIENCE_LEVEL PRIMARY KEY (
	el_no
);

ALTER TABLE job_vacancy_experience_level ADD CONSTRAINT PK_JV_EXPERIENCE_LEVEL PRIMARY KEY (
	el_no,
	jv_no
);

ALTER TABLE job_type ADD CONSTRAINT PK_JOB_TYPE PRIMARY KEY (
	jt_no
);

ALTER TABLE job_vacancy_job_type ADD CONSTRAINT PK_JV_JOB_TYPE PRIMARY KEY (
	jt_no,
	jv_no
);

ALTER TABLE role ADD CONSTRAINT PK_ROLE PRIMARY KEY (
	r_no
);

ALTER TABLE job_vacancy_role ADD CONSTRAINT PK_JOB_VACANCY_ROLE PRIMARY KEY (
	r_no,
	jv_no
);

ALTER TABLE gender ADD CONSTRAINT PK_GENDER PRIMARY KEY (
	g_no
);

ALTER TABLE education_level ADD CONSTRAINT PK_EDUCATION_LEVEL PRIMARY KEY (
	el_no
);

ALTER TABLE Scrap ADD CONSTRAINT PK_SCRAP PRIMARY KEY (
	m_no,
	jv_no
);

ALTER TABLE Apply_Company ADD CONSTRAINT PK_APPLY_COMPANY PRIMARY KEY (
	jv_no,
	r_no
);

ALTER TABLE Apply_Interview ADD CONSTRAINT PK_APPLY_INTERVIEW PRIMARY KEY (
	jv_no,
	r_no
);

ALTER TABLE pay_type ADD CONSTRAINT PK_PAY_TYPE PRIMARY KEY (
	pt_no
);

ALTER TABLE day ADD CONSTRAINT PK_DAY PRIMARY KEY (
	d_no
);

ALTER TABLE report_vacancy ADD CONSTRAINT PK_REPORT_VACANCY PRIMARY KEY (
	rv_no
);

ALTER TABLE job_vacancy_img ADD CONSTRAINT PK_JOB_VACANCY_IMG PRIMARY KEY (
	jv_no,
	a_no
);

ALTER TABLE chat_log ADD CONSTRAINT PK_CHAT_LOG PRIMARY KEY (
	m_no,
	a_no
);

ALTER TABLE authority ADD CONSTRAINT PK_AUTHORITY PRIMARY KEY (
	a_code
);

ALTER TABLE MEMBER_ROLE ADD CONSTRAINT PK_MEMBER_ROLE PRIMARY KEY (
	m_no,
	a_code
);

ALTER TABLE MANAGER_ROLE ADD CONSTRAINT PK_MANAGER_ROLE PRIMARY KEY (
	im_no,
	a_code
);

ALTER TABLE member ADD CONSTRAINT FK_member_type_TO_member_1 FOREIGN KEY (
	mt_no
)
REFERENCES member_type (
	mt_no
);

ALTER TABLE Basic_Info ADD CONSTRAINT FK_Resume_TO_Basic_Info_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE Basic_Info ADD CONSTRAINT FK_sector_TO_Basic_Info_1 FOREIGN KEY (
	sector_no
)
REFERENCES sector (
	s_no
);

ALTER TABLE Basic_Info ADD CONSTRAINT FK_attachment_TO_Basic_Info_1 FOREIGN KEY (
	a_no
)
REFERENCES attachment (
	a_no
);

ALTER TABLE Resume ADD CONSTRAINT FK_member_TO_Resume_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE Career ADD CONSTRAINT FK_Resume_TO_Career_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE Activity ADD CONSTRAINT FK_Resume_TO_Activity_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE License ADD CONSTRAINT FK_Resume_TO_License_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE Language ADD CONSTRAINT FK_Resume_TO_Language_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE Awards ADD CONSTRAINT FK_Resume_TO_Awards_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE Self_Introduction ADD CONSTRAINT Resume_SI FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE Resume_Browse ADD CONSTRAINT Company_info_Resume_Browse FOREIGN KEY (
	ci_no
)
REFERENCES company_info (
	ci_no
);

ALTER TABLE Resume_Browse ADD CONSTRAINT FK_Resume_TO_Resume_Browse_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE scrap_company ADD CONSTRAINT FK_member_TO_scrap_company_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE scrap_company ADD CONSTRAINT FK_Resume_TO_scrap_company_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE payment ADD CONSTRAINT FK_promo_order_TO_payment FOREIGN KEY (
	p_no
)
REFERENCES promotion_order (
	p_no
);

ALTER TABLE promotion_order ADD CONSTRAINT FK_promo_code_TO_promo_order FOREIGN KEY (
	p_code
)
REFERENCES promotion_code (
	p_code
);

ALTER TABLE promotion_order ADD CONSTRAINT FK_jobvacancy_TO_promo_order FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE promotion_order ADD CONSTRAINT FK_member_TO_promotion_order_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE sns_info ADD CONSTRAINT FK_member_TO_sns_info_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE company_info ADD CONSTRAINT FK_attachment_TO_company_info FOREIGN KEY (
	a_no
)
REFERENCES attachment (
	a_no
);

ALTER TABLE company_info ADD CONSTRAINT FK_companyType_TO_companyInfo FOREIGN KEY (
	ct_no
)
REFERENCES company_type (
	ct_no
);

ALTER TABLE company_info ADD CONSTRAINT FK_member_TO_company_info_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE company_info ADD CONSTRAINT FK_sector_TO_company_info_1 FOREIGN KEY (
	s_no
)
REFERENCES sector (
	s_no
);

ALTER TABLE Education ADD CONSTRAINT FK_Resume_TO_Education_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE Interested_Company ADD CONSTRAINT FK_member_TO_InterestedCompany FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE Interested_Company ADD CONSTRAINT FK_cInfo_To_InterestedCompany FOREIGN KEY (
	ci_no
)
REFERENCES company_info (
	ci_no
);

ALTER TABLE Email ADD CONSTRAINT FK_member_TO_Email_1 FOREIGN KEY (
	u_no
)
REFERENCES member (
	m_no
);

ALTER TABLE Email ADD CONSTRAINT FK_attachment_TO_Email_1 FOREIGN KEY (
	a_no
)
REFERENCES attachment (
	a_no
);

ALTER TABLE job_vacancy ADD CONSTRAINT FK_gender_TO_job_vacancy_1 FOREIGN KEY (
	g_no
)
REFERENCES gender (
	g_no
);

ALTER TABLE job_vacancy ADD CONSTRAINT FK_education_level_TO_jv FOREIGN KEY (
	el_no
)
REFERENCES education_level (
	el_no
);

ALTER TABLE job_vacancy ADD CONSTRAINT FK_company_info_TO_jv FOREIGN KEY (
	ci_no
)
REFERENCES company_info (
	ci_no
);

ALTER TABLE job_vacancy ADD CONSTRAINT FK_day_TO_job_vacancy_1 FOREIGN KEY (
	d_no
)
REFERENCES day (
	d_no
);

ALTER TABLE job_vacancy ADD CONSTRAINT FK_pay_type_TO_job_vacancy_1 FOREIGN KEY (
	pt_no
)
REFERENCES pay_type (
	pt_no
);

ALTER TABLE Browse ADD CONSTRAINT FK_member_TO_Browse_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE Browse ADD CONSTRAINT FK_job_vacancy_TO_Browse_1 FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE recruitment_industry ADD CONSTRAINT FK_sector_TO_recruitment FOREIGN KEY (
	s_no
)
REFERENCES sector (
	s_no
);

ALTER TABLE recruitment_industry ADD CONSTRAINT FK_job_vacancy_TO_recruitment FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE job_vacancy_experience_level ADD CONSTRAINT FK_experience_level_TO_jv_el FOREIGN KEY (
	el_no
)
REFERENCES experience_level (
	el_no
);

ALTER TABLE job_vacancy_experience_level ADD CONSTRAINT FK_job_vacancy_TO_jv_el FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE job_vacancy_job_type ADD CONSTRAINT FK_job_type_TO_jv_job_type FOREIGN KEY (
	jt_no
)
REFERENCES job_type (
	jt_no
);

ALTER TABLE job_vacancy_job_type ADD CONSTRAINT FK_job_vacancy_TO_jv_job_type FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE job_vacancy_role ADD CONSTRAINT FK_role_TO_job_vacancy_role_1 FOREIGN KEY (
	r_no
)
REFERENCES role (
	r_no
);

ALTER TABLE job_vacancy_role ADD CONSTRAINT FK_job_vacancy_TO_jv_role FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE Scrap ADD CONSTRAINT FK_member_TO_Scrap_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE Scrap ADD CONSTRAINT FK_job_vacancy_TO_Scrap_1 FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE Apply_Company ADD CONSTRAINT FK_job_vacancy_TO_ApplyCompany FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE Apply_Company ADD CONSTRAINT FK_Resume_TO_Apply_Company_1 FOREIGN KEY (
	r_no
)
REFERENCES Resume (
	r_no
);

ALTER TABLE Apply_Interview ADD CONSTRAINT ac_ai_1 FOREIGN KEY (
	jv_no,
    r_no
)
REFERENCES Apply_Company (
	jv_no,
    r_no
);


ALTER TABLE report_vacancy ADD CONSTRAINT FK_member_TO_report_vacancy_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE report_vacancy ADD CONSTRAINT FK_jv_TO_report_vacancy FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE job_vacancy_img ADD CONSTRAINT FK_jv_TO_job_vacancy_img FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE job_vacancy_img ADD CONSTRAINT FK_attachment_TO_jv_img FOREIGN KEY (
	a_no
)
REFERENCES attachment (
	a_no
);

ALTER TABLE chat_log ADD CONSTRAINT FK_member_TO_chat_log_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE chat_log ADD CONSTRAINT FK_attachment_TO_chat_log_1 FOREIGN KEY (
	a_no
)
REFERENCES attachment (
	a_no
);

ALTER TABLE MEMBER_ROLE ADD CONSTRAINT FK_member_TO_MEMBER_ROLE_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE MEMBER_ROLE ADD CONSTRAINT FK_authority_TO_MEMBER_ROLE_1 FOREIGN KEY (
	a_code
)
REFERENCES authority (
	a_code
);

ALTER TABLE MANAGER_ROLE ADD CONSTRAINT FK_TO_MANAGER_ROLE_1 FOREIGN KEY (
	im_no
)
REFERENCES info_manager (
	im_no
);

ALTER TABLE MANAGER_ROLE ADD CONSTRAINT FK_authority_TO_MANAGER_ROLE_1 FOREIGN KEY (
	a_code
)
REFERENCES authority (
	a_code
);

-- DEFAULT TABLE SETTING(INSERT)
-- 담당자 : 노승희
-- MEMBER_TYPE
INSERT
  INTO MEMBER_TYPE
VALUES
(
    SEQ_MEMBER_TYPE_NO.NEXTVAL
  , '개인회원'
);
INSERT
  INTO MEMBER_TYPE
VALUES
(
    SEQ_MEMBER_TYPE_NO.NEXTVAL
  , '기업회원'
);
-- SECTOR
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , '서비스업'
);
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , '의료·제약·복지'
);
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , '제조·화학'
);
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , '판매·유통'
);
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , 'IT·웹·통신'
);
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , '건설업'
);
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , '교육업'
);
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , '미디어·디자인'
);
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , '은행·금융업'
);
INSERT
  INTO SECTOR
VALUES
(
    SEQ_SECTOR_NO.NEXTVAL
  , '기관·협회'
);
-- COMPANY_TYPE
INSERT
  INTO COMPANY_TYPE
VALUES
(
    SEQ_COMPANY_TYPE_NO.NEXTVAL
  , '대기업'
);
INSERT
  INTO COMPANY_TYPE
VALUES
(
    SEQ_COMPANY_TYPE_NO.NEXTVAL
  , '공사/공기업'
);
INSERT
  INTO COMPANY_TYPE
VALUES
(
    SEQ_COMPANY_TYPE_NO.NEXTVAL
  , '중견기업'
);
INSERT
  INTO COMPANY_TYPE
VALUES
(
    SEQ_COMPANY_TYPE_NO.NEXTVAL
  , '중소기업'
);
INSERT
  INTO COMPANY_TYPE
VALUES
(
    SEQ_COMPANY_TYPE_NO.NEXTVAL
  , '스타트업'
);
INSERT
  INTO COMPANY_TYPE
VALUES
(
    SEQ_COMPANY_TYPE_NO.NEXTVAL
  , '외국계기업'
);
-- AUTHORITY
INSERT
   INTO AUTHORITY
VALUES
(
    SEQ_AUTHORITY_NO.NEXTVAL
  , 'ROLE_PERSONAL'
  , '개인회원'
);
INSERT
   INTO AUTHORITY
VALUES
(
    SEQ_AUTHORITY_NO.NEXTVAL
  , 'ROLE_COMPANY'
  , '기업회원'
);

-- 담당자 : 서정화
-- PROMOTION_CODE
INSERT
  INTO PROMOTION_CODE
VALUES
(
    SEQ_PROMOTION_CODE_NO.NEXTVAL
  , '플레티넘'
  , 2000
);
INSERT
  INTO PROMOTION_CODE
VALUES
(
    SEQ_PROMOTION_CODE_NO.NEXTVAL
  , '베이직'
  , 1000
);
INSERT
  INTO PROMOTION_CODE
VALUES
(
    SEQ_PROMOTION_CODE_NO.NEXTVAL
  , '랭크업'
  , 500
);

-- AUTHORITY
INSERT INTO AUTHORITY VALUES (SEQ_AUTHORITY_NO.NEXTVAL,'ROLE_MASTER','총관리자');
INSERT INTO AUTHORITY VALUES (SEQ_AUTHORITY_NO.NEXTVAL,'ROLE_ADMIN','관리자');

-- 담당자 : 김유진
-- INFO_MANAGER
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'master','master','김버들');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,3);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin1','admin1','김용식');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin2','admin2','방나래');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin3','admin3','방나래');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin4','admin4','방나래');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin5','admin5','방나래');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin6','admin6','방나래');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin7','admin7','방나래');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);



-- 담당자 : 노승희
-- 개인회원 11명 INSERT
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user01','$2a$10$BdHgnUc1rCzL8WgHtTIgNeq5mRNOcJ4cerSN4PRnw9b22VadJoTTS','선동일','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user02','$2a$10$rWbBJ5KGxdM/ehsQhh0n6.xvhEBeeuxjXOTvTpC0CVWOwCfX8hhQe','송종기','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user03','$2a$10$XhADJ.1B4XaNMd57ZQXuDudvb/A9GpX1m0gn2bpbzq3e3i9y5dlCu','노옹철','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user04','$2a$10$veJNpB1tkbxOVbakKtJiHOJJ2Zpzx6eVtYsYe8x4/fUbgQeLoWlNC','송은희','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user05','$2a$10$2CDNbKbr7yes4uQ3uV0p0uMeUlKB8c34AExGMQmXhOZISywpFTIou','유재식','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user06','$2a$10$KwnMV/xBsQ73MPNtsOTAZOzfjj4YdO6jmv96U3HFe0fm5GG6rtdhS','정중하','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user07','$2a$10$sFPeqLucyv4jNn.DuT1EXukJiJ6HQsLyD5tX94ZUOT/KUU70mQmH2','박나라','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user08','$2a$10$hROavo0/CYP3QLLgsh.PveDCcEAMB6m8mSXDEqhlXs38IIIFZCAhi','하이유','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user09','$2a$10$NU9SBFNIA7kXZ11dsdiLYOo9SflvCDpq75.UH7BFfGriWdsMykZTG','김해술','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user10','$2a$10$S3KIbIZhNvtG3.KVirysyO9zHxlRb3Q2HVg.ehJ./zkAGrjKTGkD6','심봉선','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,1,'user11','$2a$10$V6AMhF0nT.Ewtr8KEvJAOOt71Eif6ReiDJ4ToGogmYAK78DbyZD9q','윤은해','010-1000-1000','sun_di@kh.or.kr','06234','서울특별시 강남구 테헤란로14길 6','남도빌딩 2층, 3층, 4층',to_date('21/11/22','RR/MM/DD'),to_date('21/11/22','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,1);
-- 기업회원 10명 INSERT
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser02','$2a$10$LSEwY1MKilC2VzZVAgJrS.iQ1DjdRHp5AadNSU4.4wPHsiG86crZe','임상헌치과의원','010-1000-1000','sun_di@kh.or.kr','28597','충청북도 청주시 흥덕구 가로수로 1340-1','중앙빌딩 5층',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'315-96-00526',null,null,0,null,null,null,null,null,'N',4,SEQ_MEMBER_NO.CURRVAL,2);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser03','$2a$10$fJLSwHrZsHXfRFNrnLm29.wymAGFu1aOq96EXGV8X9UFPMBaUrduG','(주)엠지이노베이션','010-1000-1000','sun_di@kh.or.kr','34132','대전 유성구 과학로124','G동 303호',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'107-81-90272',null,null,0,null,null,null,null,null,'N',4,SEQ_MEMBER_NO.CURRVAL,4);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN)values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser04','$2a$10$hZ3liTQwWLjsEK0A4JAhFensGn8xyKyqeujATl7zCpPKgNfddroba','대원이노베이션(주)','010-1000-1000','sun_di@kh.or.kr','15402','경기 안산시 단원구 신길로1길82','901호',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'849-81-00739',null,null,0,null,null,null,null,null,'N',4,SEQ_MEMBER_NO.CURRVAL,3);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser05','$2a$10$MUCqFsE3tbcSk3iMEW6kAesbjVlAFc53ITl4J.FiQ0O1MCnuURSkC','(주)웨비나스','010-1000-1000','sun_di@kh.or.kr','07995','서울 양천구 목동동로233-1','802호',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'117-81-78635',null,null,0,null,null,null,null,null,'N',4,SEQ_MEMBER_NO.CURRVAL,5);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser01','$2a$10$3kcEHrp3kRVo1lJ502aLJe7wAyXmtTQ7xwbMQfg7sER.9ToCs2Blq','(주)호텔더원','010-1000-1000','sun_di@kh.or.kr','63163','제주특별자치도 제주시 사장3길 33 (연동)','호텔더원',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'616-86-05143',null,null,0,null,null,null,null,null,'N',4,SEQ_MEMBER_NO.CURRVAL,1);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser06','$2a$10$glumjZJOxVj.9XtT0ALdwOgMT4xoLVZEG1gSSjVNEBX3tON6bLdf.','보림토건(주)','010-1000-1000','sun_di@kh.or.kr','04969','서울 광진구 아차산로78길110,','2층',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'207-81-47401',null,null,0,null,null,null,null,null,'N',3,SEQ_MEMBER_NO.CURRVAL,6);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser07','$2a$10$5lbm9v..0x9eFEio2r.c8u4xy1B4AE.Up9/FluUV.MTul3j5TmUle','(주)드림잡스쿨','010-1000-1000','sun_di@kh.or.kr','62450','광주 광산구 남동길11-19','드림잡스쿨',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'409-86-02607',null,null,0,null,null,null,null,null,'N',4,SEQ_MEMBER_NO.CURRVAL,7);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser08','$2a$10$.bhjnLVGIeHNM/MxBh23LO/jAGKC98aUDzZkt7kLK9cmmDDiDg4XO','쿠키미디어(주)','010-1000-1000','sun_di@kh.or.kr','03925','서울 마포구 월드컵북로400','7층',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'107-87-08416',null,null,0,null,null,null,null,null,'N',4,SEQ_MEMBER_NO.CURRVAL,8);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser09','$2a$10$V1XKyGcM/8.LrYWDzvGAAuxpOjaIIUOBXkAMjrhQyCzcG01oFvxN2','(주)신한은행','010-1000-1000','sun_di@kh.or.kr','04513','서울 중구 세종대로9길20','대경빌딩 신한은행 본점',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'202-82-00922',null,null,0,null,null,null,null,null,'N',1,SEQ_MEMBER_NO.CURRVAL,9);
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser10','$2a$10$eZe/cy70HOQU.WPBvVSzmOE/Cgxfx/YbW/JpTpadcXu.e1GGsDDc.','대한상공회의소','010-1000-1000','sun_di@kh.or.kr','04513','서울 중구 세종대로39','대한서울상공회의소',to_date('21/11/23','RR/MM/DD'),to_date('21/11/23','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values(SEQ_COMPANY_INFO_NO.NEXTVAL,'104-82-03590',null,null,0,null,null,null,null,null,'N',1,SEQ_MEMBER_NO.CURRVAL,10);

-- 담당자 : 조용호
-- CRUD 발생 테이블 가데이터 생성
-- 테이블 참조 이슈 : 회원,기업,공고 테이블 가데이터 생성 구문은 이하의 구문들 위쪽에 생성해주세요.

-- 4번회원(개인회원) 관심기업 11개 추가
-- 4번회원(개인회원) 공고 11개 스크랩
-- 4번회원(개인회원) 최근 본 채용공고 11개 추가
BEGIN
    FOR I IN 1..11
    LOOP
        INSERT INTO INTERESTED_COMPANY VALUES(4,I);
        INSERT INTO SCRAP VALUES(4,I);
        INSERT INTO BROWSE VALUES(4,I);
    END LOOP;
END;
/
-- 이력서 
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',1);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',2);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',2);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',3);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',3);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',3);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',4);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',4);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',4);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',4);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',5);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',5);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',5);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',5);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N',5);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',6);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',7);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',8);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',9);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y',10);

-- 입사지원 (1번 공고에 6명 지원)
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,1,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,2,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,4,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,7,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,12,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,16,'apply',SYSDATE);

--입사지원 ( 4번 회원이 여러 공고에 지원, 지원상태 상이)
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (2,7,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (3,7,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (4,7,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (5,7,'pass',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (6,7,'pass',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (7,7,'interview',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (8,7,'interview',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (9,7,'interview',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (10,7,'passAll',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (11,7,'failure',SYSDATE);

-- 이력서 열람(입사지원 이력서 열람)
INSERT INTO RESUME_BROWSE VALUES (5,7,'application',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (6,7,'application',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (7,7,'application',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (8,7,'application',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (9,7,'application',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (10,7,'application',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (11,7,'application',SYSDATE);

-- 이력서 열람(추천 이력서 열람)
INSERT INTO RESUME_BROWSE VALUES (1,1,'recommened',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (1,2,'recommened',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (1,4,'recommened',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (1,7,'recommened',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (1,12,'recommened',SYSDATE);
INSERT INTO RESUME_BROWSE VALUES (1,16,'recommened',SYSDATE);

-- 면접
INSERT INTO APPLY_INTERVIEW VALUES(7,7,'PASS01',SYSDATE,SYSDATE);
INSERT INTO APPLY_INTERVIEW VALUES(8,7,'PASS01',SYSDATE,SYSDATE);
INSERT INTO APPLY_INTERVIEW VALUES(9,7,'PASS01',SYSDATE,SYSDATE);

-- 채팅로그 파일경로, 고객센터(개인고객)
BEGIN
    FOR I IN 1..5
    LOOP
INSERT INTO ATTACHMENT VALUES 
(SEQ_ATTACHMENT_NO.NEXTVAL, 'chat log'||I|| TO_CHAR(SYSDATE,'YYYYMMDD')||'.CSV', 'chat log'||I|| TO_CHAR(SYSDATE,'YYYYMMDD')||'.CSV',
'/chatLog/','N',SYSDATE,SYSDATE);
INSERT INTO CHAT_LOG VALUES (I,SEQ_ATTACHMENT_NO.CURRVAL);
 END LOOP;
END;
/

-- 채팅로그 파일경로, 고객센터(기업고객)
BEGIN
    FOR I IN 11..15
    LOOP
INSERT INTO ATTACHMENT VALUES 
(SEQ_ATTACHMENT_NO.NEXTVAL, 'chat log'||I|| TO_CHAR(SYSDATE,'YYYYMMDD')||'.CSV', 'chat log'||I|| TO_CHAR(SYSDATE,'YYYYMMDD')||'.CSV',
'/chatLog/','N',SYSDATE,SYSDATE);
INSERT INTO CHAT_LOG VALUES (I,SEQ_ATTACHMENT_NO.CURRVAL);
 END LOOP;
END;
/


-- 이력서 - 기본정보, 파일첨부
INSERT INTO ATTACHMENT
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 'img before '|| TO_CHAR(SYSDATE,'YYYYMMDD')||'.img', 'pikachu.png',
'/images/personal/resume/','N',SYSDATE,SYSDATE);

-- 이력서 관련 가데이터
BEGIN
    FOR I IN 1..20
    LOOP
        INSERT INTO BASIC_INFO VALUES
        (I,'이력서 제목'||I,'이름'||I,'남',SYSDATE,28,'ABCDEF@DAUM.NET','01012345678',
        '경기도 성남시 분당구','야탑동 123번지 456호',5,SEQ_ATTACHMENT_NO.CURRVAL);
        
        INSERT INTO EDUCATION VALUES
        (I,'upperHigh','학교이름'||I,'전공'||I,SYSDATE,SYSDATE,'bachelor',
        '대학교이름'||I,SYSDATE,'enter',SYSDATE,'graduate','반도체학과','4.03','4.5',
        '대학원(석사) 이름'||I,SYSDATE,'enter',SYSDATE,'graduate','반도체학과','4.03','4.5',
        '대학원(박사) 이름'||I,SYSDATE,'enter',SYSDATE,'graduate','반도체학과','4.03','4.5');
        
        INSERT INTO CAREER VALUES
        (SEQ_CAREER_NO.NEXTVAL,I,'Y','회사이름'||I,SYSDATE,SYSDATE,'사원','부서이름'||I,
        '담당 업무'||I,'개인 사유');
        
        INSERT INTO ACTIVITY VALUES
        (SEQ_ACTIVITY_NO.NEXTVAL,I,'대외활동'||I,'기관,장소'||I,SYSDATE,SYSDATE,
        I ||'. 물방아 위하여서 할지라도 주며, 끓는 칼이다. 아니더면, 피어나는 노년에게서 우리 두손을 끓는 가슴이 갑 듣는다. 위하여서 꽃이 것은 너의 고동을 아름다우냐? 소금이라 들어 두손을 봄날의 가는 군영과 아름다우냐?

살았으며, 대고, 산야에 커다란 할지라도 대한 청춘의 열락의 있다. 커다란 꾸며 설산에서 가는 밥을 청춘의 천자만홍이 말이다. 하는 되는 더운지라 갑 충분히 칼이다.

바이며, 소금이라 무엇을 밥을 심장은 불어 부패뿐이다. 바로 청춘에서만 인간에 꽃이 안고, 예가 소담스러운 심장은 뿐이다.');

        INSERT INTO LICENSE VALUES
        (SEQ_LICENSE_NO.NEXTVAL,I,'자격증명'||I,'발행처,기관'||I,'Y',SYSDATE);
        
        INSERT INTO LANGUAGE VALUES
        (SEQ_LANGUAGE_NO.NEXTVAL,I,'언어 종류'||I,'시험 종류'||I,86,'급수'||I,SYSDATE);
        
        INSERT INTO AWARDS VALUES
        (SEQ_AWARDS_NO.NEXTVAL,I,'수상명'||I,'수여기관'||I,SYSDATE);
        
        INSERT INTO SELF_INTRODUCTION VALUES
        (SEQ_SELF_INTR_NO.NEXTVAL,I,'자기소개서 항목 제목'||I,
        I||'. 불러 못할 없는 것이다.보라, 광야에서 이상의 반짝이는 바로 인간에 위하여서. 가는 기관과 이상의 가치를 인도하겠다는 속에서 내려온 심장의 원대하고, 있는가? 얼음 쓸쓸한 방황하였으며, 칼이다. 때까지 구하기 있으며, 예가 곳이 꽃 같이, 봄바람이다. 옷을 생의 피어나기 우리 꽃이 가치를 천자만홍이 칼이다. 인간에 투명하되 이상의 더운지라 영락과 타오르고 무엇을 과실이 있음으로써 부패뿐이다. 그들의 인간에 천고에 자신과 그리하였는가? 거친 시들어 찬미를 영원히 발휘하기 이상 아름다우냐? 피가 그들의 두기 생명을 우리 이상의 못할 것이다.

우는 얼음이 이 구할 타오르고 힘있다. 용기가 살았으며, 인간의 우리는 얼마나 아름다우냐? 굳세게 공자는 아름답고 넣는 때까지 영원히 가진 이것이다. 따뜻한 살 어디 철환하였는가? 가진 피어나기 그들은 이것을 약동하다. 피에 미묘한 능히 풀밭에 보내는 봄바람이다. 얼마나 미인을 것이다.보라, 철환하였는가? 물방아 우리의 그들에게 그들의 구하기 따뜻한 용감하고 거선의 같은 봄바람이다. 갑 가는 황금시대의 용감하고 우리의 가치를 사는가 봄바람을 운다. 노래하며 발휘하기 끓는 하는 있는가? 힘차게 수 끝까지 품에 이성은 동력은 것이다.보라, 이상 이것이다.

속잎나고, 같이, 이상을 인간은 동력은 가치를 창공에 얼마나 아니다. 크고 것은 끝까지 인도하겠다는 이것이다. 커다란 반짝이는 이상이 사랑의 설산에서 따뜻한 생명을 있으랴? 청춘 쓸쓸한 못하다 철환하였는가? 내는 동력은 소리다.이것은 우리 약동하다. 우리는 위하여서 불러 피가 약동하다. 과실이 피가 따뜻한 끝까지 그들은 찬미를 것이 말이다. 영락과 있음으로써 그들을 두기 하였으며, 이것이다. 얼음 간에 그것을 내는 위하여서 듣는다. 얼마나 생의 황금시대를 가슴이 속잎나고, 광야에서 길을 때까지 가치를 그리하였는가? 미인을 예가 든 같으며, 무엇을 온갖 사막이다.');
        
    END LOOP;
END;
/

COMMIT;