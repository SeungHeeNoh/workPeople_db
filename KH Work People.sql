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


-- 담당자 : 오한수
DROP SEQUENCE SEQ_EDU_LEVEL_NO;
-- 학력 정보 번호
DROP SEQUENCE SEQ_PAY_TYPE_NO;
-- 급여 종류 번호
DROP SEQUENCE SEQ_DAY_NO;
-- 근무 요일 번호
DROP SEQUENCE SEQ_GENDER_NO;
-- 성별 번호
DROP SEQUENCE SEQ_ROLE_NO;
-- 직급,직책 번호
DROP SEQUENCE SEQ_JOB_TYPE_NO;
-- 근무 형태 번호
DROP SEQUENCE SEQ_EXP_LEVEL_NO;
-- 경력 번호
DROP SEQUENCE SEQ_JV_NO;
-- 공고 번호

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


-- 담당자 : 오한수
CREATE SEQUENCE SEQ_EDU_LEVEL_NO;
-- 학력 정보 번호
CREATE SEQUENCE SEQ_PAY_TYPE_NO;
-- 급여 종류 번호
CREATE SEQUENCE SEQ_DAY_NO;
-- 근무 요일 번호
CREATE SEQUENCE SEQ_GENDER_NO;
-- 성별 번호
CREATE SEQUENCE SEQ_ROLE_NO;
-- 직급,직책 번호
CREATE SEQUENCE SEQ_JOB_TYPE_NO;
-- 근무 형태 번호
CREATE SEQUENCE SEQ_EXP_LEVEL_NO;
-- 경력 번호
CREATE SEQUENCE SEQ_JV_NO;
-- 공고 번호

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
	s_no 	number		NOT NULL,
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

COMMENT ON COLUMN Basic_Info.s_no IS '업종 번호';

COMMENT ON COLUMN Basic_Info.a_no IS '첨부파일번호';

CREATE TABLE Resume (
	r_no	number		NOT NULL,
	r_enroll_date	date	DEFAULT SYSDATE	NULL,
	r_status_YN	varchar2(1 char)	DEFAULT 'N'	NULL,
	r_delete_YN	varchar2(1 char) 	DEFAULT 'N'	NOT NULL,
	m_no	number		NOT NULL
);

COMMENT ON COLUMN Resume.r_no IS '이력서번호';

COMMENT ON COLUMN Resume.r_enroll_date IS '등록일';

COMMENT ON COLUMN Resume.r_status_YN IS '대표이력서 여부(Y,N)';

COMMENT ON COLUMN Resume.r_delete_YN IS '이력서 삭제 여부(Y,N)';

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
	l_pass_YN	varchar2(10 char)		NOT NULL,
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
	l_department	varchar2(20 char)		NOT NULL,
	l_score	varchar2(10 char)	NOT NULL,
	l_acquisition	date		NOT NULL
);

COMMENT ON COLUMN Language.l_no IS '어학 번호';

COMMENT ON COLUMN Language.r_no IS '이력서번호';

COMMENT ON COLUMN Language.l_name IS '언어/시험명';

COMMENT ON COLUMN Language.l_department IS '발행처';

COMMENT ON COLUMN Language.l_score IS '급수/점수';

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
    ci_ceoname	varchar2(10 char) NULL,
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

COMMENT ON COLUMN company_info.ci_homepage IS '홈페이지';

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
	jv_workday_start_time	varchar2(10 char)		NOT NULL,
	jv_workday_end_time	varchar2(10 char)		NOT NULL,
	jv_address	varchar2(100 char)		NOT NULL,
	g_no	number		NOT NULL,
	el_no	number		NOT NULL,
	jv_major	varchar2(120 char)		NOT NULL,
	ci_no	number		NOT NULL,
	d_no	number		NOT NULL,
	jv_status_yn	varchar2(1 char)	DEFAULT 'Y'	NOT NULL,
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
	ac_date	date	DEFAULT sysdate	NOT NULL,
	ac_deleteYN	varchar2(1 char)	DEFAULT 'N'	NOT NULL
);

COMMENT ON COLUMN Apply_Company.jv_no IS '공고 번호';

COMMENT ON COLUMN Apply_Company.r_no IS '이력서번호';

COMMENT ON COLUMN Apply_Company.ac_type IS '지원상태';

COMMENT ON COLUMN Apply_Company.ac_date IS '지원일';

COMMENT ON COLUMN Apply_Company.ac_deleteYN IS '삭제 여부(Y,N)';

CREATE TABLE Apply_Interview (
	jv_no	number		NOT NULL,
	r_no	number		NOT NULL,
	ai_certification	varchar2(10 char)		NOT NULL,
	ai_date	date		NOT NULL,
	ai_time	date		NOT NULL,
	ai_status_YN	varchar2(1 char)	DEFAULT 'N'	NOT NULL
);

COMMENT ON COLUMN Apply_Interview.jv_no IS '공고 번호';

COMMENT ON COLUMN Apply_Interview.r_no IS '이력서번호';

COMMENT ON COLUMN Apply_Interview.ai_certification IS '인증번호';

COMMENT ON COLUMN Apply_Interview.ai_date IS '면접 날짜';

COMMENT ON COLUMN Apply_Interview.ai_time IS '면접 시간';

COMMENT ON COLUMN Apply_Interview.ai_status_YN IS '면접 종료 여부';



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
	s_no
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
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'master','$2a$10$LOOnRbbrVZynJPmrEQpHjuxF8oNhE1IWzTwenLWG4fDypxQaSF7Cy','김버들');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,3);
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin1','$2a$10$cFKL9ftApViGrzEyRy8p3O6yliTBsWaDGZDQoF4YpgNqLpg4FW9mm','김용식');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin2','$2a$10$8JzVcJgC/lC/AHi06CG/WuxoeCGzefJBAmpgNsDRfw/vLyxBBUuXO','방나래');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin3','$2a$10$d7AIIku2KOhSkIsHAuNGYuJG1mRodDR5WYAdwb9XpELoD0BqA.GTO','김어진');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin4','$2a$10$.ASLHaG3W7ztiUwDD5Q7yu8bCgguzJ171IkRYoopOyncGTCw0LLp.','김소리');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin5','$2a$10$lbhXR5Tu/ZpHKMLTtNxhoO.lUbtw5jeqtvB9njXvLpFSK9unYHJvS','김용식');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin6','$2a$10$iN18G903its0mDEfM8gD0eAKgTT0oYZfqmQaMZTIvKd585VYZQoXy','윤은애');
Insert into MANAGER_ROLE (IM_NO,A_CODE) values (SEQ_INFO_MANAGER_NO.CURRVAL,4);
INSERT INTO INFO_MANAGER VALUES (SEQ_INFO_MANAGER_NO.NEXTVAL,'admin7','$2a$10$Aq.NRbO.RSMmXlK2MJ/Zx.YO58OC02sjPqAMitX.NqFUzu8lQM/O.','가나다');
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
-- 기업회원 11명 INSERT
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
Insert into MEMBER (M_NO,MT_NO,M_ID,M_PWD,M_NAME,M_PHONE,M_EMAIL,M_POSTCODE,M_ROADADDRESS,M_DETAILADDRESS,M_ENROLL_DATE,M_MODIFY_DATE,M_LOGIN_FAIL_COUNT,M_IS_LOCK,M_LATEST_TRY_LOGIN_DATE,M_LOCK_COUNT,M_STATUS,M_TEMP_PWD_YN) values (SEQ_MEMBER_NO.NEXTVAL,2,'cuser11','$2a$10$RZHVhFyiL.D2fepnODmCvewpZcMeMcgBvMOs/QcCmEfrY/TAwRO4O','(주)키글','01010001000','sun_di@kh.or.kr','06664','서울 서초구 방배로18길5','3층',to_date('21/11/25','RR/MM/DD'),to_date('21/11/25','RR/MM/DD'),0,'N',null,0,'Y','N');
Insert into MEMBER_ROLE (M_NO,A_CODE) values (SEQ_MEMBER_NO.CURRVAL,2);
Insert into COMPANY_INFO (CI_NO,CI_COMPANY_REGISTER_NUMBER,CI_CEONAME,CI_FOUNDING_DATE,CI_EMPLOYEE_NUMBER,CI_BUSINESS_DETAIL,CI_COMPANY_HISTORY,CI_COMPANY_VISION,CI_HOMEPAGE,A_NO,CI_STATUS_YN,CT_NO,M_NO,S_NO)
values (SEQ_COMPANY_INFO_NO.NEXTVAL,'148-86-00081',null,null,0,null,null,null,null,null,'N',4,SEQ_MEMBER_NO.CURRVAL,5);



-- 담당자 : 오한수
-- EDUCATION_LEVEL / 학력 정보
INSERT INTO EDUCATION_LEVEL VALUES(SEQ_EDU_LEVEL_NO.NEXTVAL,'고등학교 졸업');
INSERT INTO EDUCATION_LEVEL VALUES(SEQ_EDU_LEVEL_NO.NEXTVAL,'대학 졸업(2,3년)');
INSERT INTO EDUCATION_LEVEL VALUES(SEQ_EDU_LEVEL_NO.NEXTVAL,'대학교 졸업(4년)');
INSERT INTO EDUCATION_LEVEL VALUES(SEQ_EDU_LEVEL_NO.NEXTVAL,'대학원 석사 졸업');
INSERT INTO EDUCATION_LEVEL VALUES(SEQ_EDU_LEVEL_NO.NEXTVAL,'대학원 박사 졸업');
INSERT INTO EDUCATION_LEVEL VALUES(SEQ_EDU_LEVEL_NO.NEXTVAL,'학력 무관');

-- PAY_TYPE / 급여 종류
INSERT INTO PAY_TYPE VALUES(SEQ_PAY_TYPE_NO.NEXTVAL,'연봉');
INSERT INTO PAY_TYPE VALUES(SEQ_PAY_TYPE_NO.NEXTVAL,'월급');
INSERT INTO PAY_TYPE VALUES(SEQ_PAY_TYPE_NO.NEXTVAL,'주급');
INSERT INTO PAY_TYPE VALUES(SEQ_PAY_TYPE_NO.NEXTVAL,'일급');
INSERT INTO PAY_TYPE VALUES(SEQ_PAY_TYPE_NO.NEXTVAL,'시급');
INSERT INTO PAY_TYPE VALUES(SEQ_PAY_TYPE_NO.NEXTVAL,'건별');
INSERT INTO PAY_TYPE VALUES(SEQ_PAY_TYPE_NO.NEXTVAL,'회사 내규에 따름');
INSERT INTO PAY_TYPE VALUES(SEQ_PAY_TYPE_NO.NEXTVAL,'면접 후 결정');

-- DAY / 근무 요일
INSERT INTO DAY VALUES(SEQ_DAY_NO.NEXTVAL,'요일 무관');
INSERT INTO DAY VALUES(SEQ_DAY_NO.NEXTVAL,'매일');
INSERT INTO DAY VALUES(SEQ_DAY_NO.NEXTVAL,'주 6일(월~토)');
INSERT INTO DAY VALUES(SEQ_DAY_NO.NEXTVAL,'주 5일(월~금)');
INSERT INTO DAY VALUES(SEQ_DAY_NO.NEXTVAL,'주말');
INSERT INTO DAY VALUES(SEQ_DAY_NO.NEXTVAL,'요일 협의');

-- GENDER / 성별
INSERT INTO GENDER VALUES(SEQ_GENDER_NO.NEXTVAL,'성별 무관');
INSERT INTO GENDER VALUES(SEQ_GENDER_NO.NEXTVAL,'남자');
INSERT INTO GENDER VALUES(SEQ_GENDER_NO.NEXTVAL,'여자');

-- ROLE / 직급,직책
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'사원');
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'주임');
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'대리');
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'과장');
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'차장');
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'부장');
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'임원');
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'팀장');
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'매니저');
INSERT INTO ROLE VALUES(SEQ_ROLE_NO.NEXTVAL,'실장');

-- JOB_TYPE / 근무 형태
INSERT INTO JOB_TYPE VALUES(SEQ_JOB_TYPE_NO.NEXTVAL,'정규직');
INSERT INTO JOB_TYPE VALUES(SEQ_JOB_TYPE_NO.NEXTVAL,'계약직');
INSERT INTO JOB_TYPE VALUES(SEQ_JOB_TYPE_NO.NEXTVAL,'파견직');
INSERT INTO JOB_TYPE VALUES(SEQ_JOB_TYPE_NO.NEXTVAL,'도급');
INSERT INTO JOB_TYPE VALUES(SEQ_JOB_TYPE_NO.NEXTVAL,'프리랜서');

-- EXPERIENCE_LEVEL / 경력
INSERT INTO EXPERIENCE_LEVEL VALUES(SEQ_EXP_LEVEL_NO.NEXTVAL,'신입');
INSERT INTO EXPERIENCE_LEVEL VALUES(SEQ_EXP_LEVEL_NO.NEXTVAL,'경력');
INSERT INTO EXPERIENCE_LEVEL VALUES(SEQ_EXP_LEVEL_NO.NEXTVAL,'경력 무관');

-- JOB_VACANCY / 공고
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'임상헌치과의원에서 치과위생사 선생님을 기다립니다.',SYSDATE,SYSDATE,SYSDATE,11,5,TO_DATE('2021-11-25','YYYY-MM-DD'),TO_DATE('2021-12-24','YYYY-MM-DD'),'09:00','18:30','충청북도 청주시 흥덕구 가로수로 1340-1',1,2,'보철,임플란트/교정,미용치과/소아,청소년과',1,4,'Y','따듯함과 열정을 느낄 수 있는 임상헌치과의원에 많은 지원 바랍니다.','치과위생사','연령무관',2200000,2);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'기술연구소 정규직 채용(청년내일채움공제 가능)',SYSDATE,SYSDATE,SYSDATE,120,0,TO_DATE('2021-11-20','YYYY-MM-DD'),TO_DATE('2021-12-15','YYYY-MM-DD'),'09:00','17:00','대전 유성구 과학로124',1,3,'재료공학,화학공학',2,4,'Y','㈜엠지이노베이션은 태양전지 및 반도체용 실리콘 웨이퍼 제조시 발생되는 폐 실리콘 슬러시를 업싸이클링(UP-Cycling)하여 친환경적이며 가격 경쟁력 있는 전기자동차용 2차전지의 고용량 음극 첨가제를 생산하고자 노력하고 있습니다. 미래 지향적인 인재, 주도적으로 연구 및 사업을 진행할 수 있는 리더를 모집합니다.','화공기사, 산업안전기사','연령제한 : 20세 ~ 35세 ',0,7);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'대원이노베이션(주) 무역업무 담당자 채용',SYSDATE,SYSDATE,SYSDATE,461,0,TO_DATE('2021-11-25','YYYY-MM-DD'),TO_DATE('2021-12-24','YYYY-MM-DD'),'09:00','18:00','경기 안산시 단원구 신길로1길82',1,3,'무관',3,4,'Y','당사에서 다음과 같이 유능하고 역량있는 인재를 채용합니다. 많은 관심과 지원 바랍니다.','전산회계운용사, 공인회계사','연령무관',0,7);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'PM 온라인 마케팅전략·기획 정규직 채용',SYSDATE,SYSDATE,SYSDATE,41,0,TO_DATE('2021-11-03','YYYY-MM-DD'),TO_DATE('2021-12-03','YYYY-MM-DD'),'09:30','18:30','서울 양천구 목동동로233-1',1,3,'무관',4,4,'Y','당신이 끊임없이 새로운 것을 배우고, 동료들과 협업하며, 자기 분야에서 최고가 되려는 사람인가요? 그렇다면 주저하지 말고 이력서와 포트폴리오를 보내주세요.','프레젠테이션전문가','연령무관',33000000,1);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'제주 호텔더원 조리 신입/경력 채용',SYSDATE,SYSDATE,SYSDATE,80,2,TO_DATE('2021-11-30','YYYY-MM-DD'),TO_DATE('2021-12-25','YYYY-MM-DD'),'07:00','16:00','제주특별자치도 제주시 사장3길 33 (연동)',1,6,'무관',5,3,'Y','제주 호텔더원 조리 신입/경력 채용','양식조리기능사, 한식조리기능사, 일식조리기능사','연령무관',0,7);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'사무보조·문서작성 경력무관 채용합니다',SYSDATE,SYSDATE,SYSDATE,137,1,TO_DATE('2021-11-05','YYYY-MM-DD'),TO_DATE('2021-12-05','YYYY-MM-DD'),'08:00','17:00','서울 광진구 아차산로78길110',3,6,'무관',6,3,'Y','사무보조·문서작성 경력무관 채용합니다','운전면허증','연령무관',0,7);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'[정규직] 광주 초등학교 방과후 컴퓨터 강사 채용',SYSDATE,SYSDATE,SYSDATE,13,1,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-12-03','YYYY-MM-DD'),'09:00','16:30','광주 광산구 남동길11-19',3,2,'컴퓨터/시스템공학',7,4,'Y','사무보조·문서작성 경력무관 채용합니다','워드프로세서, 컴퓨터활용','연령무관',0,8);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'[사진DB 입력 아르바이트(재택근무)',SYSDATE,SYSDATE,SYSDATE,141,1,TO_DATE('2021-11-23','YYYY-MM-DD'),TO_DATE('2021-12-03','YYYY-MM-DD'),'01:00','24:00','서울 마포구 월드컵북로400',1,6,'무관',8,2,'Y','[사진DB 입력 아르바이트(재택근무)','GTQ그래픽기술자격','연령무관',2000,6);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'디지털 커뮤니케이션 전문인력 채용',SYSDATE,SYSDATE,SYSDATE,113,0,TO_DATE('2021-11-24','YYYY-MM-DD'),TO_DATE('2021-12-10','YYYY-MM-DD'),'09:00','18:00','서울 중구 세종대로9길20',1,3,'무관',9,4,'Y','디지털 채널 전략 수립 및 콘텐츠 기획 능력 보유자 우대','멀티미디어콘텐츠제작전문가','연령무관',0,7);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'대한상공회의소 회계·세무 업무지원 모집',SYSDATE,SYSDATE,SYSDATE,122,1,TO_DATE('2021-11-18','YYYY-MM-DD'),TO_DATE('2021-11-30','YYYY-MM-DD'),'09:00','18:00','서울 중구 세종대로39',1,6,'무관',10,4,'Y','회계.세무 지원 업무, 회계/세무 업무 유경력자','공인회계사, 세무사','연령무관',5000000,2);
INSERT INTO JOB_VACANCY
VALUES(SEQ_JV_NO.NEXTVAL,'[키글]에서 함께할 직원을 채용합니다.',SYSDATE,SYSDATE,SYSDATE,3805,0,TO_DATE('2021-11-16','YYYY-MM-DD'),TO_DATE('2021-12-06','YYYY-MM-DD'),'10:30','17:30','서울 서초구 방배로18길5',1,6,'무관',11,4,'Y','키글에서 함께 일하실 동료를 찾습니다. 키글은 전 세계를 대상으로 앱과 영상 콘텐츠를 서비스하는 스타트업 기업입니다.','멀티미디어콘텐츠제작전문가','연령무관',0,8);


-- JOB_VACANCY_ROLE / 모집 직급,직책
INSERT INTO JOB_VACANCY_ROLE VALUES(1,1);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,2);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,3);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,4);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,5);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,6);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,7);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,8);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,9);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,10);
INSERT INTO JOB_VACANCY_ROLE VALUES(1,11);

-- JOB_VACANCY_JOB_TYPE / 모집 근무 형태
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(1,1);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(1,2);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(1,3);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(1,4);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(2,5);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(2,6);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(2,7);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(5,8);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(1,9);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(1,10);
INSERT INTO JOB_VACANCY_JOB_TYPE VALUES(2,11);

-- JOB_VACANCY_EXPERIENCE_LEVEL / 모집 경력
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(2,1);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(1,2);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(2,3);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(1,4);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(3,5);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(3,6);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(1,7);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(2,8);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(2,9);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(2,10);
INSERT INTO JOB_VACANCY_EXPERIENCE_LEVEL VALUES(1,11);

-- RECRUITMENT_INDUSTRY / 모집 업종
INSERT INTO RECRUITMENT_INDUSTRY VALUES(3,1);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(5,2);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(5,3);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(5,4);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(1,5);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(5,6);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(7,7);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(8,8);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(8,9);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(10,10);
INSERT INTO RECRUITMENT_INDUSTRY VALUES(1,11);



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
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',1);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',2);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',2);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',3);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',3);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',3);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',4);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',4);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',4);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',4);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',5);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',5);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',5);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',5);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'N','N',5);

INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',6);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',7);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',8);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',9);
INSERT INTO RESUME VALUES (SEQ_RESUME_NO.NEXTVAL,SYSDATE,'Y','N',10);

-- 입사지원 (1번 공고에 6명 지원)
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,1,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,2,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,4,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,7,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,12,'apply',SYSDATE);
INSERT INTO APPLY_COMPANY (JV_NO, R_NO, AC_TYPE, AC_DATE) VALUES (1,16,'apply',SYSDATE);

--입사지원 ( 4번 회원이 여러 공고에 지원, 지원상태 상이)

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
INSERT INTO APPLY_INTERVIEW VALUES(7,7,'PASS01!!',SYSDATE,SYSDATE,DEFAULT);
INSERT INTO APPLY_INTERVIEW VALUES(8,7,'PASS01!!',SYSDATE,SYSDATE,DEFAULT);
INSERT INTO APPLY_INTERVIEW VALUES(9,7,'PASS01!!',SYSDATE,SYSDATE,DEFAULT);

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
        (I,'대학교 졸업 이상','학교이름'||I,'전공'||I,SYSDATE,SYSDATE,'bachelor',
        '대학교이름'||I,SYSDATE,'enter',SYSDATE,'graduate','반도체학과','4.03','4.5',
        '대학원(석사) 이름'||I,SYSDATE,'enter',SYSDATE,'graduate','반도체학과','4.03','4.5',
        '대학원(박사) 이름'||I,SYSDATE,'enter',SYSDATE,'graduate','반도체학과','4.03','4.5');
        
        INSERT INTO CAREER VALUES
        (SEQ_CAREER_NO.NEXTVAL,I,'Y','회사이름'||I,SYSDATE,SYSDATE,'사원','부서이름'||I,
        '방황하여도, 우리 이상 교향악이다. 미묘한 갑 찾아 있다. 구하기 부패를 같지 풍부하게 아니한 산야에 내려온 생명을 칼이다. 유소년에게서 청춘이 그들의 있는 길을 석가는 원질이 이것이다. 못하다 하는 우리 사막이다. 끝에 있음으로써 그들에게 같지 위하여서. 열매를 산야에 고행을 쓸쓸한 얼음과 황금시대다. 같으며, 속잎나고, 무한한 칼이다. 실현에 피가 그들은 갑 구하지 있을 고동을 부패를 봄바람을 황금시대다. 그러므로 얼음이 놀이 위하여, 봄날의 현저하게 있는 뼈 있으랴? 되는 위하여 바로 트고, 굳세게 아름다우냐?'||I,'현저하게 이상 풀밭에 봄바람이다. 모래뿐일 안고, 얼마나 것은 피다. 힘차게 우리의 노래하며 무엇을 때까지 군영과 이것이다.현저하게 이상 풀밭에 봄바람이다. 모래뿐일 안고, 얼마');
        
        INSERT INTO ACTIVITY VALUES
        (SEQ_ACTIVITY_NO.NEXTVAL,I,'대외활동'||I,'기관,장소'||I,SYSDATE,SYSDATE,
        I ||'. 물방아 위하여서 할지라도 주며, 끓는 칼이다. 아니더면, 피어나는 노년에게서 우리 두손을 끓는 가슴이 갑 듣는다. 위하여서 꽃이 것은 너의 고동을 아름다우냐? 소금이라 들어 두손을 봄날의 가는 군영과 아름다우냐?

살았으며, 대고, 산야에 커다란 할지라도 대한 청춘의 열락의 있다. 커다란 꾸며 설산에서 가는 밥을 청춘의 천자만홍이 말이다. 하는 되는 더운지라 갑 충분히 칼이다.

바이며, 소금이라 무엇을 밥을 심장은 불어 부패뿐이다. 바로 청춘에서만 인간에 꽃이 안고, 예가 소담스러운 심장은 뿐이다.');

        INSERT INTO LICENSE VALUES
        (SEQ_LICENSE_NO.NEXTVAL,I,'자격증명'||I,'발행처,기관'||I,'최종합격',SYSDATE);
        
        INSERT INTO LANGUAGE VALUES
        (SEQ_LANGUAGE_NO.NEXTVAL,I,'언어/시험 종류'||I,'발행처'||I,'급수/점수'||I,SYSDATE);
        
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


-- 담당자 : 서정화
-- 기업회원 정보 수정(10개)
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '임상헌'	
		     , CI_FOUNDING_DATE = to_date('99/01/01','RR/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 10	
		     , CI_BUSINESS_DETAIL = '최상의 의료진, 최상의 의료서비스, 고품격 시설로 최상의 진료를 실천하는 병원입니다.'	
		     , CI_COMPANY_HISTORY = '2004년   05월   치과병원 특수법인화
2002년   06월   치과병원 외래로비 환경 개선
2000 년  05월   치과병원 임상교육연구동 준공'	
		     , CI_COMPANY_VISION = 'ㆍDentist : 의료의 높은 수준을 위한 환경과 성장을 제공
ㆍStaff : e-plant에 근무를 하는 것에 대한 자부심과 성장에 대한 기회를 제공
ㆍCustomer : 건강한 치아가 주는 행복을 선사하며, 더불어 사는 사회에 대한 책임을 약속'
	     WHERE CI_NO = 1;	
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '서진규'	
		     , CI_FOUNDING_DATE = to_date('17/11/29','RR/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 3	
		     , CI_BUSINESS_DETAIL = '금속나노분말 제조'	
             , S_NO = 3
	     WHERE CI_NO = 2;
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '하상건'	
		     , CI_FOUNDING_DATE = to_date('00/09/27','YY/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 44
		     , CI_BUSINESS_DETAIL = '화공약품,표면처리제도소매,오파,제조'	
             , CI_COMPANY_HISTORY = '2007 06 사업장 이전 : 안산시 초지동
2005 05 기업부설연구소 설립
2005 01 사업장 이전 : 안산시 반월공단 -> 경기도 안산시 고잔동
2002 08 사업장 이전 : 서울 영등포소재 -> 경기 안산 반월공단 607블럭 25호
2000 09 법인 전환 : 대원이노베이션(주)
1996 09 대원통상 개업'	
		     , CI_COMPANY_VISION = '당사는 미국/일본/대만/독일/룩셈부르크/영국 등에서 PCB 제조 및 표면 처리
약품을 수입하여 국내 삼성전기,엘지이노텍,대덕전자 , GDS,심텍,이수페타시스,엑사보드,영풍전자,인터프렉스,코리아써키트 등에 공급하고 있습니다.
큰기업은 아니지만 탄탄하게 성장하고 있는 기업입니다. 대원이노베이션과 같이 성장 하실 직원분들을 모집합니다. 많은 관심 부탁드립니다.'
             , CI_HOMEPAGE = 'http://www.idaewon.com'
             , S_NO = 4
	     WHERE CI_NO = 3;  
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '박재오'	
		     , CI_FOUNDING_DATE = to_date('11/12/26','RR/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 23
		     , CI_BUSINESS_DETAIL = '소프트웨어개발,공급'	
             , CI_COMPANY_HISTORY = '통합 프로모션의 새로운 표준, 주식회사 웨비나스
2009년 시작된 주식회사 웨비나스는 그 이름처럼 지난 10여 년 동안 한국 웨비나 기술의 발전을 이끌었습니다.
이제 우리는 최고의 웨비나 기술에 섬세한 오프라인 이벤트 노하우를 결합해 고객에게 하나의 통합 프로모션 서비스를 제공하고 있습니다.

[연혁]
2021년 누적 고객사 100곳, 브랜드 300개 돌파
브랜드 아이덴티티 리뉴얼
2020년 연간 프로젝트 1,000회, 누적 프로젝트 5,000회 돌파
30개 이상 학회의 온라인 학술대회 및 연수 강좌, 보수 교육 진행
플랫폼 WX 3 출시: 통합 프로모션 이벤트 지원 시작
스튜디오 W 오픈
웨비나스 솔루션 임대 서비스 시작
고객사 대상 서비스 만족도 조사(CS Survey) 도입
2019년 플랫폼 WX 2 출시
필드 관리 시스템(EMS, Field Management System) 도입
오프라인 에이전시 서비스 시작
2018년 웨비나 플랫폼 임대 서비스 출시
웨비나 웹사이트 개편
현장 관리 시스템(FMS, Field Management System) 도입
2017년 연간 프로젝트 500회 및 누적 프로젝트 2,000회 돌파
웨비나 서비스에 가상 스튜디오 형식(Virtual Studio Webinar) 도입
2016년 웨비나 최신 트렌드 관련 뉴스레터 서비스 시작
2015년 연간 프로젝트 300회 누적 프로젝트 1,000회 돌파
웨비나 서비스에 HD 해상도 도입
2014년 홍콩 웨비나 법인 마쿱헬스케어 인수합병
웨비나 프로젝트 관리를 위한 세일즈포스, 태블로 도입
2013년 웨비나 사이트 개발 및 유지 운영
2012년 플랫폼 WX 1 출시
주식회사 웨비나스로 사명 전환
2011년 대규모 다자간 라이브 서비스 다수 진행
2010년 웨비나 서비스에 다자간 라이브 시스템 도입
2009년 엔터페이스(Enterface) 설립'	
		     , CI_COMPANY_VISION = '우리는 변화와 연결, 협업을 통해 일합니다.
1. 긍정적인 변화
우리의 일이 세상을 긍정적으로 변화시킨다고 믿습니다. 우리는 새로운 기술과 문화를 깊이 이해하고, 그것이 공동체에 도움이 되도록 노력합니다.
2. 시공간을 넘어선 연결
네트워크 기술은 사람들이 자유롭게 소통하도록 도울 때 가치 있습니다. 우리는 당신이 어디에 있든 더 큰 세상에 연결되는 기술을 실현합니다.
3. 창의적인 협업
협업은 우리의 기본 자질이자, 우리가 제공하는 서비스입니다. 우리는 다양한 분야의 전문가가 모인 집단으로서 주어진 과제의 창의적인 해결책을 찾습니다.'
             , CI_HOMEPAGE = 'http://www.webinars.co.kr'
	     WHERE CI_NO = 4;  
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '서정림'	
		     , CI_FOUNDING_DATE = to_date('13/03/22','RR/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 45
		     , CI_BUSINESS_DETAIL = '호텔업'	
             , CI_COMPANY_HISTORY = '2015 12 관광호텔업 특2등급 인증
2015 09 식품접객업영업신고
2015 09 숙박업영업신고
2015 09 관광사업등록(관광호텔업)
2015 09 호텔더원 개관
2015 09 준공허가
2014 01 호텔더원 착공
2014 01 주식회사 호텔더원 (상호변경)
2013 12 건축허가
2013 03 주식회사 아이리스호텔 법인설립'	
		     , CI_COMPANY_VISION = 'SENSE
호텔 더 원은 삼다도를 모티브로 제주의 고유 문화 및 미학적 요소를 현대적인 감각으로 접목시켜, 사람과 자연, 자연과 사람이 소통하는 제주의 이야기를 만들려고 합니다,

SERVICE
돌처럼 굳건하게, 여인처럼 포근함을, 바람처럼 신속한 최상의 서비스를 제공해 드릴 것을 약속 드리겠습니다.

MEMORISE
더 나아가 아름답고 깨끗한 섬, 제주도에서의 낭만과 사랑, 환경과 문화가 공존하는 공간으로써, 고객님의 소중한 꿈과 희망, 추억을 키워갈 수 있기를 소망합니다.'
             , CI_HOMEPAGE = 'www.hoteltheone.com'
	     WHERE CI_NO = 5;
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '김석회/이재림'	
		     , CI_FOUNDING_DATE = to_date('92/03/13','RR/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 83
		     , CI_BUSINESS_DETAIL = '철근콘크리트공사,주택건설,토공사,주택임대,임대,토목엔지니어링서비스,건물엔지니어링서비스'	
             , CI_COMPANY_HISTORY = '2020 01 보림토건(주) 영남지사 설립
2019 10 보림토건(주) 여수지사 설립
2018 03 습식방수 공사업 면허취득
2017 11 kOSHA18001 인증 재취득(한국산업안전공단)
2015 12 본점을 서울시 광진구 광장동 127번지로 이전
2014 03 사업목적에 주택임대업 등을 추가
2010  07 사업목적에 정비사업전문관리업 추가
2010 06 KOSHA18001 인증획득
2008 07 아랍에미레이트 두바이 건설업 면허 취득
2007 05 지점 설치 : 두바이지점
2007 05 해외건설업 신고(철근콘크리트, 토공사, 비계.구조물해체공사업)
2005 12 자본증자 : 600,000,000원 / 총납입자본 : 2,400,000,000 원
2004 08 비계.구조물해체공사업 면허 취득(광진-04-07-04)
2003 12 자본증자 : 600,000,000원 / 총납입자본 : 1,200,000,000
2002 06 본점을 서울시 광진구 구의동 594-4 소재로 이전
2001 10 자본증자 : 120,000,000원 / 총납입자본 : 600,000,000
1999 05 ISO 9002 인증 취득((주)BSI 인증원)
1996 11 전문건설업 면허양수 - 철근콘크리트공사업, 토공사업
1996 10 자본증자 : 360,000,000원 / 총납입자본 : 480,000,000원
1996 08 상호를 보림토건(주)로 변경 및 각자대표이사 김석회, 이재림 취임
1996 08 본사 이전 : 서울시 광진구 구의동 216-8
1996 08 사업목적에 택지조성업, 주택건설업외 추가
1995 03 각자대표이사 하태인 사임
1992 04 주택건설 면허 취득
1992 03 자본금 : 120,000,000원
1992 03 성조주택건설(주) 설립(서울시 서초구 서초동 1339-2)'	
		     , CI_COMPANY_VISION = '주요 사업내용 : 전문건설, 부동산 매매 및 임대, 건축자재 판매
주요 취급품목 : 철근콘크리트공사, 비계구조물해체공사, 토공사'
	     WHERE CI_NO = 6;     
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '정형태'	
		     , CI_FOUNDING_DATE = to_date('08/06/13','RR/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 51
		     , CI_BUSINESS_DETAIL = '진로직업체험관/소프트웨어,온라인 모바일게임,게임소프트웨어 개발,공급/행사대행,진로캠프,학술'	
             , CI_COMPANY_HISTORY = '2018 05 광주광역시교육청 진로체험지원센터 위탁 운영
2017 04 강원랜드 하이원 드림-업 페스티벌 진로박람회 운영
2017 02 광주광역시 호남권 제1의 청소년 진로직업체험관 개관
2016 10 진로페스티벌 운영
2016 10 담양군청 청소년진로직업체험 부스 위탁 운영
2015 08 (주)드림잡스쿨로 상호변경 신고
2015 01 광주광역시동부교육지원청 진로체험지원센터 위탁 운영(~2016)
2013 11 학교로 찾아가는 진로직업체험 교육 운영
2009 10 민간인참여사업 방과후 컴퓨터교실 운영
2008 06 (주)글로벌에듀아이 법인 설립'	
		     , CI_COMPANY_VISION = '드림잡스쿨은 너무너무 하고싶은 재미있는 내 자신을 발전하는 일을 하고자 합니다.
가족처럼 일하고 서로 배려하는 마음 책임감있는 모든 사람이면 바로 콜 ~~ 환영합니다.

물론, 한가지 재미있는 일을 위해 하기싫은 열가지 일을 해야 할 수 있습니다.
우리는 재미있는 일만 찾는사람이 아니라, 자신을 성장시키고 회사를 발전 시키는 열가지일을 끝낼 수 있는 사람을 찾습니다.

드림잡스쿨은 회사로 부터 급여를 받는 만큼 일하기만 하면 되는, 일개 직원을 원하지 않습니다.
그보다 회사의 눈부신 성장을 직접 만들어 내고, 그에 상응하는 주식 지분을 받아 회사의 소유자가 되는 또다른 회사의 창립자를 찾습니다.

단순히 말로만 팀이 아닌, 회사의 일부를 소유할 수 있는 스톡옵션, 지분을 제공하며 팀과 하나가 되어 강한 동기부여가 될 수 있도록 장려합니다.

드림잡스쿨은 수십년동안 관련업을 한 백전노장도 없고, 화려한 스펙을 쌓고 있는 스타도 없습니다.
하지만 맨바닥에서 급성장하고 있고 빅뱅할 준비가 되어 있습니다.

열정적인 사람들과, 새로운 분야의 업무를 포기하지 않고 머리를 싸매고 공부하는 사람들이 있습니다.

우리는 이런 사람들이며, 또한 이런 사람들을 찾습니다.

우리는 그 어떤 기업, 벤처 보다도 여러분의 꿈을 함께 이루어줄 수 있고, 글로벌에듀아이와 동반 성장을 희망하는 사람이면 환영합니다.'
             , CI_HOMEPAGE = 'http://www.djobs.kr'
	     WHERE CI_NO = 7; 
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '김지방'	
		     , CI_FOUNDING_DATE = to_date('08/04/22','RR/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 82
		     , CI_BUSINESS_DETAIL = '온라인정보제공(인터넷뉴스),데이터베이스구축,판매,유선방송/홈쇼핑,전자상거래/방송프로그램'	
             , CI_COMPANY_HISTORY = '2019 03 2019 미래경제포럼 개최
2018 11 쿠키뉴스 창간 14주년 기념 포럼 개최
2018 10 전남취재본부 설립
2018 07 2018 국민일보쿠키뉴스 미래의학포럼 개최
2018 05 2018 미래안전행복 대상, 미래안전건강포럼 개최
2018 03 2018 미래경제포럼 개최
2018 03 정병덕 대표 취임
2018 01 내일로 여행 인수(여행전문매체)
2017 11 제2회 국민일보쿠키뉴스 미래의학포럼 개최
2017 07 제1회 인터넷언론상 언론사 부문 수상
2017 06 제1회 쿠키뉴스 대학가요제 개최'	
		     , CI_COMPANY_VISION = '#쿠키뉴스 – ‘갓 구워낸 바삭바삭한 뉴스’
- ‘갓 구운 쿠키처럼 빠르고 생생하고 정확한 현장 뉴스’
- ‘바삭바삭한 쿠키처럼 언론의 기본을 잃지 않는 건강한 뉴스’
- ‘다양한 맛과 모양의 쿠키처럼 새롭고 신선한 형식의 스토리텔링 뉴스’
- 쿠키뉴스는 뉴스 맛집이 되겠습니다.

#쿠키건강TV - ‘더 건강한 내일’, No.1 건강채널!
- ‘건강’은 행복의 핵심이며, 필요충분조건입니다.
- 쿠키건강TV는 국민의 건강한 삶을 추구합니다.
- 쿠키건강TV는 정확하고, 유익하고, 다양한 건강 생활 정보를 24시간 시청자에게 제공합니다.
- 온 국민의 행복한 건강습관, 쿠키건강TV!'
             , CI_HOMEPAGE = 'http://www.kukinews.com'
	     WHERE CI_NO = 8;
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '진옥동'	
		     , CI_FOUNDING_DATE = to_date('43/10/02','RR/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 13332
		     , CI_BUSINESS_DETAIL = '은행(은행업무,외국환업무,신탁업무)'	
             , CI_COMPANY_HISTORY = '2020 04 일본현지법인 SBJ DNX 손자회사 편입
2019 03 은행장 진옥동 취임'	
		     , CI_COMPANY_VISION = '주요 사업내용 : 금융 서비스
주요 취급품목 : 예금, 대출, 외환, 투자'
             , CI_HOMEPAGE = 'http://www.shinhan.com'
	     WHERE CI_NO = 9;  
UPDATE COMPANY_INFO
		   SET CI_CEONAME = '최태원'	
		     , CI_FOUNDING_DATE = to_date('10/01/21','RR/MM/DD')	
		     , CI_EMPLOYEE_NUMBER = 200
		     , CI_BUSINESS_DETAIL = '출판,광고 제조/,공제,소프트웨어,위탁교육훈련서비스,유통정보관련용역,사업지원서비스'	
             , CI_COMPANY_HISTORY = '1981 12 회사설립'	
		     , CI_COMPANY_VISION = 'ㅇ 법정경제단체
133년의 역사를 가진 경제단체로서 특별법인 상공회의소법에 의하여 설립·운영되고 있는 법정 민간경제단체입니다.
　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
ㅇ 종합경제단체
모든 업종(1차산업은 제외)의 대‧중소기업을 망라하여 상공업자 모두를 회원으로 하는 종합경제단체로서 경제계 전체를 대표하고있습니다. 　　　　　　　　　　　　　　　　　　　
　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
ㅇ 지역에 기반을 둔 경제단체
지역 상공업의 개선 발전과 지역사회의 개발을 위해 지역내 상공인들이 자율적으로 설립한 단체로서 72개의 상공회의소가 전국의 행정구역을 분할·관장하고 있습니다.
　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
ㅇ 범세계적인 경제단체
전세계 130여 개국에 설립돼 있는 상공회의소와 상호 긴밀한 협력체계를 갖추고 국제공증사업, 민간경제협력 위원회의 설치, 운영, 통상사절단의 파견 및 영접 등 통상진흥활동을 수행하고 있는 범세계적인 민간경제기구 입니다.'
	     WHERE CI_NO = 10;         
         
-- 판매정보 (12개)
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,1,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),1,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,2,TO_DATE('2021-11-25','YYYY-MM-DD'),TO_DATE('2021-12-31','YYYY-MM-DD'),2,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,3,TO_DATE('2021-12-20','YYYY-MM-DD'),TO_DATE('2021-12-30','YYYY-MM-DD'),3,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,1,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),4,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,2,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),5,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,3,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),1,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,1,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),1,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,2,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),1,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,3,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),1,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,1,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),1,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,2,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),1,15);
INSERT INTO PROMOTION_ORDER VALUES(SEQ_PROMOTION_ORDER_NO.NEXTVAL,3,TO_DATE('2021-11-22','YYYY-MM-DD'),TO_DATE('2021-11-26','YYYY-MM-DD'),1,15);
-- 결제 (12개)
BEGIN
    FOR I IN 1..12
    LOOP
    INSERT INTO PAYMENT VALUES (SEQ_PAYMENT_NO.NEXTVAL,I,TO_DATE('2021-11-22','YYYY-MM-DD'),20000,'카드결제','결제');
 END LOOP;
END;
/


COMMIT;