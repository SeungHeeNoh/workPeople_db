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
DROP TABLE Applied_Basic_Info;
DROP TABLE Applied_Education;
DROP TABLE Applied_Career;
DROP TABLE Applied_Activity;
DROP TABLE Applied_License;
DROP TABLE Applied_Language;
DROP TABLE Applied_Awards;
DROP TABLE Applied_Self_Introduction;

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
DROP SEQUENCE SEQ_RESUME_BROWSE_NO;
-- 이력서 열람 번호
DROP SEQUENCE SEQ_APPLY_INTERVIEW_NO;
-- 면접 구분번호
DROP SEQUENCE SEQ_APPLY_COMPANY_NO;
-- 입사지원 구분번호
DROP SEQUENCE SEQ_APPLIED_CAREER_NO;
DROP SEQUENCE SEQ_APPLIED_ACTIVITY_NO;
DROP SEQUENCE SEQ_APPLIED_LICENSE_NO;
DROP SEQUENCE SEQ_APPLIED_LANGUAGE_NO;
DROP SEQUENCE SEQ_APPLIED_AWARDS_NO;
DROP SEQUENCE SEQ_APPLIED_SELFINTR_NO;

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
CREATE SEQUENCE SEQ_RESUME_BROWSE_NO;
-- 이력서 열람 번호
CREATE SEQUENCE SEQ_APPLY_INTERVIEW_NO;
-- 이력서 열람 번호
CREATE SEQUENCE SEQ_APPLY_COMPANY_NO;
-- 입사지원 구분번호
CREATE SEQUENCE SEQ_APPLIED_CAREER_NO;
CREATE SEQUENCE SEQ_APPLIED_ACTIVITY_NO;
CREATE SEQUENCE SEQ_APPLIED_LICENSE_NO;
CREATE SEQUENCE SEQ_APPLIED_LANGUAGE_NO;
CREATE SEQUENCE SEQ_APPLIED_AWARDS_NO;
CREATE SEQUENCE SEQ_APPLIED_SELFINTR_NO;

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
	bi_gender	varchar2(2 char)		NOT NULL,
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
	rb_no	number		NOT NULL,
	ci_no	number		NOT NULL,
	r_no	number		NOT NULL,
	rb_browse	varchar2(12 char)		NOT NULL,
	rb_date	date		NULL
);

COMMENT ON COLUMN Resume_Browse.rb_no IS '이력서 열람 구분 번호';

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
	ci_no	number		NOT NULL,
    ic_date date	DEFAULT SYSDATE	NOT NULL	
);

COMMENT ON COLUMN Interested_Company.m_no IS '회원번호';

COMMENT ON COLUMN Interested_Company.ci_no IS '기업 정보 번호';

COMMENT ON COLUMN Interested_Company.ic_date IS '관심기업 등록일';

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
	jv_no	number		NOT NULL,
    b_date	date	DEFAULT SYSDATE	NOT NULL
);

COMMENT ON COLUMN Browse.m_no IS '회원번호';

COMMENT ON COLUMN Browse.jv_no IS '공고 번호';

COMMENT ON COLUMN Browse.b_date IS '최근 공고 열람일';



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
	jv_no	number		NOT NULL,
    s_date	date	DEFAULT SYSDATE	NOT NULL
);

COMMENT ON COLUMN Scrap.m_no IS '회원번호';

COMMENT ON COLUMN Scrap.jv_no IS '공고 번호';

COMMENT ON COLUMN Scrap.s_date IS '스크랩 등록일';

CREATE TABLE Apply_Company (
	ac_no	number		NOT NULL,
	ac_type	varchar2(10 char)		NOT NULL,
	ac_date	date	DEFAULT sysdate	NOT NULL,
	ac_deleteYN	varchar2(1 char)	DEFAULT 'N'	NOT NULL,
	m_no	number		NOT NULL,
	jv_no	number		NOT NULL
);

COMMENT ON COLUMN Apply_Company.ac_no IS '입사지원 구분번호';

COMMENT ON COLUMN Apply_Company.ac_type IS '지원상태(apply, pass, interview, passAll,failure )';

COMMENT ON COLUMN Apply_Company.ac_date IS '지원일';

COMMENT ON COLUMN Apply_Company.ac_deleteYN IS '삭제 여부(Y,N)';

COMMENT ON COLUMN Apply_Company.m_no IS '회원번호';

COMMENT ON COLUMN Apply_Company.jv_no IS '공고 번호';

CREATE TABLE Apply_Interview (
	ac_no	number		NOT NULL,
	ai_certification	varchar2(10 char)		NOT NULL,
	ai_date	date		NOT NULL,
	ai_time	date		NOT NULL,
	ai_status_YN	varchar2(1 char)	DEFAULT 'N'	NOT NULL
);

COMMENT ON COLUMN Apply_Interview.ac_no IS '입사지원 구분번호';

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

-- 입사지원 관련 추가 테이블


CREATE TABLE Applied_Basic_Info (
	ac_no	number		NOT NULL,
	bi_title	varchar2(30 char)		NOT NULL,
	bi_name	varchar2(10 char)		NOT NULL,
	bi_gender	varchar2(2 char)		NOT NULL,
	bi_birth_date	date		NOT NULL,
	bi_age	number		NOT NULL,
	bi_email	varchar2(90 char)		NOT NULL,
	bi_phone	varchar2(15 char)		NOT NULL,
	bi_address	varchar2(30 char)		NOT NULL,
	bi_address_detail	varchar2(15 char)		NOT NULL,
	s_no	number		NOT NULL,
	a_no	NUMBER		NOT NULL
);

COMMENT ON COLUMN Applied_Basic_Info.ac_no IS '입사지원 구분번호';

COMMENT ON COLUMN Applied_Basic_Info.bi_title IS '이력서제목';

COMMENT ON COLUMN Applied_Basic_Info.bi_name IS '이름';

COMMENT ON COLUMN Applied_Basic_Info.bi_gender IS '성별';

COMMENT ON COLUMN Applied_Basic_Info.bi_birth_date IS '생년월일';

COMMENT ON COLUMN Applied_Basic_Info.bi_age IS '나이';

COMMENT ON COLUMN Applied_Basic_Info.bi_email IS '이메일';

COMMENT ON COLUMN Applied_Basic_Info.bi_phone IS '전화번호';

COMMENT ON COLUMN Applied_Basic_Info.bi_address IS '주소';

COMMENT ON COLUMN Applied_Basic_Info.bi_address_detail IS '상세주소';

COMMENT ON COLUMN Applied_Basic_Info.s_no IS '업종 번호';

COMMENT ON COLUMN Applied_Basic_Info.a_no IS '첨부파일번호';



CREATE TABLE Applied_Education (
	ac_no	number		NOT NULL,
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

COMMENT ON COLUMN Applied_Education.ac_no IS '입사지원 구분번호';

COMMENT ON COLUMN Applied_Education.e_type IS '학력구분(underHigh, GED, high, upperHigh)';

COMMENT ON COLUMN Applied_Education.e_high_name IS '학교이름';

COMMENT ON COLUMN Applied_Education.e_high_major IS '전공 계열';

COMMENT ON COLUMN Applied_Education.e_high_admission IS '입학 년월';

COMMENT ON COLUMN Applied_Education.e_high_graduation IS '졸업 년월';

COMMENT ON COLUMN Applied_Education.e_colleage_type IS '학력구분(bachelor/professional)';

COMMENT ON COLUMN Applied_Education.e_colleage_name IS '대학 이름';

COMMENT ON COLUMN Applied_Education.e_colleage_admission IS '대학 입학년월';

COMMENT ON COLUMN Applied_Education.e_colleage_admission_type IS '대학 입학 구분(transfer,enter)';

COMMENT ON COLUMN Applied_Education.e_colleage_graduate IS '대학 졸업년월';

COMMENT ON COLUMN Applied_Education.e_colleage_graduate_type IS '대학 졸업구분(graduate,attending,absence,dropOut,candidate,attending)';

COMMENT ON COLUMN Applied_Education.e_colleage_major IS '대학 전공';

COMMENT ON COLUMN Applied_Education.e_colleage_credit IS '대학 학점';

COMMENT ON COLUMN Applied_Education.e_colleage_standard_credit IS '대학 기준학점';

COMMENT ON COLUMN Applied_Education.e_master_name IS '대학원(석사) 이름';

COMMENT ON COLUMN Applied_Education.e_master_admission IS '대학원(석사)  입학년월';

COMMENT ON COLUMN Applied_Education.e_master_admission_type IS '대학원(석사)  입학 구분(transfer,enter)';

COMMENT ON COLUMN Applied_Education.e_master_graduate IS '대학원(석사) 졸업년월';

COMMENT ON COLUMN Applied_Education.e_master_graduate_type IS '대학원(석사)  졸업구분(graduate,attending,absence,dropOut,candidate,attending)';

COMMENT ON COLUMN Applied_Education.e_master_major IS '대학원(석사) 전공';

COMMENT ON COLUMN Applied_Education.e_master_credit IS '대학원(석사) 학점';

COMMENT ON COLUMN Applied_Education.e_master_standard_credit IS '대학원(석사) 기준학점';

COMMENT ON COLUMN Applied_Education.e_doctor_name IS '대학원(박사) 이름';

COMMENT ON COLUMN Applied_Education.e_doctor_admission IS '대학원(박사) 입학년월';

COMMENT ON COLUMN Applied_Education.e_doctor_admission_type IS '대학원(박사) 입학 구분(transfer,enter)';

COMMENT ON COLUMN Applied_Education.e_doctor_graduate IS '대학원(박사) 졸업년월';

COMMENT ON COLUMN Applied_Education.e_doctor_graduate_type IS '대학원(박사) 졸업구분(graduate,attending,absence,dropOut,candidate,attending)';

COMMENT ON COLUMN Applied_Education.e_doctor_major IS '대학원(박사) 전공';

COMMENT ON COLUMN Applied_Education.e_doctor_credit IS '대학원(박사) 학점';

COMMENT ON COLUMN Applied_Education.e_doctor_standard_credit IS '대학원(박사) 기준학점';



CREATE TABLE Applied_Career (
	c_no	number		NOT NULL,
	ac_no	number		NOT NULL,
	c_yn	varchar2(1 char)		NOT NULL,
	c_name	varchar2(30 char)		NULL,
	c_employment_date	date		NULL,
	c_unemployment_date	date		NULL,
	c_position	varchar2(20 char)		NULL,
	c_department	varchar2(20 char)		NULL,
	c_task	varchar2(300 char)		NULL,
	c_resignation	varchar2(100 char)		NULL
);

COMMENT ON COLUMN Applied_Career.c_no IS '경력 번호';

COMMENT ON COLUMN Applied_Career.ac_no IS '입사지원 구분번호';

COMMENT ON COLUMN Applied_Career.c_yn IS '경력 여부';

COMMENT ON COLUMN Applied_Career.c_name IS '회사 이름';

COMMENT ON COLUMN Applied_Career.c_employment_date IS '취직 년월';

COMMENT ON COLUMN Applied_Career.c_unemployment_date IS '실직 년월';

COMMENT ON COLUMN Applied_Career.c_position IS '직급/직책';

COMMENT ON COLUMN Applied_Career.c_department IS '근무 부서';

COMMENT ON COLUMN Applied_Career.c_task IS '담당 업무';

COMMENT ON COLUMN Applied_Career.c_resignation IS '퇴사 사유';



CREATE TABLE Applied_Activity (
	a_no	number		NOT NULL,
	ac_no	number		NOT NULL,
	a_activity	varchar2(20 char)		NOT NULL,
	a_department	varchar2(20 char)		NOT NULL,
	a_start_date	date		NOT NULL,
	a_end_date	date		NOT NULL,
	a_content	varchar2(300 char)		NOT NULL
);

COMMENT ON COLUMN Applied_Activity.a_no IS '활동번호';

COMMENT ON COLUMN Applied_Activity.ac_no IS '입사지원 구분번호';

COMMENT ON COLUMN Applied_Activity.a_activity IS '활동 구분';

COMMENT ON COLUMN Applied_Activity.a_department IS '기관,장소';

COMMENT ON COLUMN Applied_Activity.a_start_date IS '활동 시작일(년월일)';

COMMENT ON COLUMN Applied_Activity.a_end_date IS '활동 종료일(년월일)';

COMMENT ON COLUMN Applied_Activity.a_content IS '활동 내용';



CREATE TABLE Applied_License (
	l_no	number		NOT NULL,
	ac_no	number		NOT NULL,
	l_name	varchar2(20 char)		NOT NULL,
	l_department	varchar2(20 char)		NOT NULL,
	l_pass_YN	varchar2(10 char)		NOT NULL,
	l_acquisition_date	date		NOT NULL
);

COMMENT ON COLUMN Applied_License.l_no IS '자격증 번호';

COMMENT ON COLUMN Applied_License.ac_no IS '입사지원 구분번호';

COMMENT ON COLUMN Applied_License.l_name IS '자격증명';

COMMENT ON COLUMN Applied_License.l_department IS '발행처,기관';

COMMENT ON COLUMN Applied_License.l_pass_YN IS '합격여부';

COMMENT ON COLUMN Applied_License.l_acquisition_date IS '취득일';


CREATE TABLE Applied_Language (
	l_no	number		NOT NULL,
	ac_no	number		NOT NULL,
	l_name	varchar2(20 char)		NOT NULL,
	l_department	varchar2(20 char)		NOT NULL,
	l_score	varchar2(10 char)		NOT NULL,
	l_acquisition	date		NOT NULL
);

COMMENT ON COLUMN Applied_Language.l_no IS '어학 번호';

COMMENT ON COLUMN Applied_Language.ac_no IS '입사지원 구분번호';

COMMENT ON COLUMN Applied_Language.l_name IS '언어 종류';

COMMENT ON COLUMN Applied_Language.l_department IS '시험 종류';

COMMENT ON COLUMN Applied_Language.l_score IS '점수';

COMMENT ON COLUMN Applied_Language.l_acquisition IS '취득일';



CREATE TABLE Applied_Awards (
	a_no	number		NOT NULL,
	ac_no	number		NOT NULL,
	a_name	varchar2(20 char)		NOT NULL,
	a_department	varchar2(20 char)		NOT NULL,
	a_acquisition	date		NOT NULL
);

COMMENT ON COLUMN Applied_Awards.a_no IS '수상내역 번호';

COMMENT ON COLUMN Applied_Awards.ac_no IS '입사지원 구분번호';

COMMENT ON COLUMN Applied_Awards.a_name IS '수상명';

COMMENT ON COLUMN Applied_Awards.a_department IS '수여기관';

COMMENT ON COLUMN Applied_Awards.a_acquisition IS '취득일';



CREATE TABLE Applied_Self_Introduction (
	si_no	number		NOT NULL,
	ac_no	number		NOT NULL,
	si_title	varchar2(30 char)		NOT NULL,
	si_content	varchar2(1000 char)		NOT NULL
);

COMMENT ON COLUMN Applied_Self_Introduction.si_no IS '자소서 번호';

COMMENT ON COLUMN Applied_Self_Introduction.ac_no IS '입사지원 구분번호';

COMMENT ON COLUMN Applied_Self_Introduction.si_title IS '자소서 항목 제목';

COMMENT ON COLUMN Applied_Self_Introduction.si_content IS '자소서 항목 내용';

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
	rb_no,
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
	ac_no
);

ALTER TABLE Apply_Interview ADD CONSTRAINT PK_APPLY_INTERVIEW PRIMARY KEY (
	ac_no
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

ALTER TABLE Applied_Basic_Info ADD CONSTRAINT PK_APPLIED_BASIC_INFO PRIMARY KEY (
	ac_no
);

ALTER TABLE Applied_Education ADD CONSTRAINT PK_APPLIED_EDUCATION PRIMARY KEY (
	ac_no
);

ALTER TABLE Applied_Career ADD CONSTRAINT PK_APPLIED_CAREER PRIMARY KEY (
	c_no,
	ac_no
);

ALTER TABLE Applied_Activity ADD CONSTRAINT PK_APPLIED_ACTIVITY PRIMARY KEY (
	a_no,
	ac_no
);

ALTER TABLE Applied_License ADD CONSTRAINT PK_APPLIED_LICENSE PRIMARY KEY (
	l_no,
	ac_no
);

ALTER TABLE Applied_Language ADD CONSTRAINT PK_APPLIED_LANGUAGE PRIMARY KEY (
	l_no,
	ac_no
);

ALTER TABLE Applied_Awards ADD CONSTRAINT PK_APPLIED_AWARDS PRIMARY KEY (
	a_no,
	ac_no
);

ALTER TABLE Applied_Self_Introduction ADD CONSTRAINT PK_APPLIED_SELF_INTRODUCTION PRIMARY KEY (
	si_no,
	ac_no
);
ALTER TABLE Apply_Company ADD CONSTRAINT FK_member_TO_Apply_Company_1 FOREIGN KEY (
	m_no
)
REFERENCES member (
	m_no
);

ALTER TABLE Apply_Company ADD CONSTRAINT fk_ac_to_jv_1 FOREIGN KEY (
	jv_no
)
REFERENCES job_vacancy (
	jv_no
);

ALTER TABLE Applied_Basic_Info ADD CONSTRAINT Applied_Basic_Info_fk1 FOREIGN KEY (
	ac_no
)
REFERENCES Apply_Company (
	ac_no
);

ALTER TABLE Applied_Basic_Info ADD CONSTRAINT Applied_Basic_Info_fk2 FOREIGN KEY (
	s_no
)
REFERENCES sector (
	s_no
);

ALTER TABLE Applied_Basic_Info ADD CONSTRAINT Applied_Basic_Info_fk3 FOREIGN KEY (
	a_no
)
REFERENCES attachment (
	a_no
);

ALTER TABLE Applied_Education ADD CONSTRAINT Applied_Basic_Info_fk4 FOREIGN KEY (
	ac_no
)
REFERENCES Apply_Company (
	ac_no
);

ALTER TABLE Applied_Career ADD CONSTRAINT Applied_Basic_Info_fk5 FOREIGN KEY (
	ac_no
)
REFERENCES Apply_Company (
	ac_no
);

ALTER TABLE Applied_Activity ADD CONSTRAINT Applied_Basic_Info_fk6 FOREIGN KEY (
	ac_no
)
REFERENCES Apply_Company (
	ac_no
);

ALTER TABLE Applied_License ADD CONSTRAINT Applied_Basic_Info_fk7 FOREIGN KEY (
	ac_no
)
REFERENCES Apply_Company (
	ac_no
);

ALTER TABLE Applied_Language ADD CONSTRAINT Applied_Basic_Info_fk8 FOREIGN KEY (
	ac_no
)
REFERENCES Apply_Company (
	ac_no
);

ALTER TABLE Applied_Awards ADD CONSTRAINT Applied_Basic_Info_fk9 FOREIGN KEY (
	ac_no
)
REFERENCES Apply_Company (
	ac_no
);

ALTER TABLE Applied_Self_Introduction ADD CONSTRAINT Applied_Basic_Info_fk10 FOREIGN KEY (
	ac_no
)
REFERENCES Apply_Company (
	ac_no
);

-- CREATE VIEW
-- 담당자 : 노승희
CREATE OR REPLACE  VIEW COMPANY_INFORMATION AS
SELECT 
       M_NAME COMPANY_NAME
     , M_STATUS COMPANY_STATUS
     , M_ROADADDRESS || M_DETAILADDRESS ADDRESS
     , CI_NO
     , CI_CEONAME
     , CI_FOUNDING_DATE
     , CI_EMPLOYEE_NUMBER
     , CI_BUSINESS_DETAIL
     , CI_COMPANY_HISTORY
     , CI_COMPANY_VISION
     , CI_HOMEPAGE
     , ATTACHMENT_INFROMATION.A_NO
     , ATTACHMENT_INFROMATION.A_ORIGIN_NAME
     , ATTACHMENT_INFROMATION.A_CHANGE_NAME
     , ATTACHMENT_INFROMATION.A_FILE_PATH
     , ATTACHMENT_INFROMATION.A_STATUS
     , ATTACHMENT_INFROMATION.A_CREATE
     , S_NO
     , S_NAME
     , CT_NO
     , CT_NAME
     , NVL(INTERESTED_COMPANY_COUNT, 0) INTERESTED_COUNT
  FROM COMPANY_INFO
  LEFT JOIN SECTOR USING(S_NO)
  LEFT JOIN COMPANY_TYPE USING(CT_NO)
  LEFT JOIN (SELECT
                    A_NO
                  , A_ORIGIN_NAME
                  , A_CHANGE_NAME
                  , A_FILE_PATH
                  , A_STATUS
                  , A_CREATE
               FROM ATTACHMENT
              WHERE A_STATUS = 'N') ATTACHMENT_INFROMATION ON(ATTACHMENT_INFROMATION.A_NO = COMPANY_INFO.A_NO)
  LEFT JOIN MEMBER USING(M_NO)
  LEFT OUTER JOIN (SELECT
                          CI_NO
                        , COUNT(*) INTERESTED_COMPANY_COUNT
                     FROM INTERESTED_COMPANY
                    GROUP BY CI_NO) INTERESTED_COUNT USING(CI_NO);
                    
CREATE OR REPLACE VIEW JOB_VACACY_INFORMATION AS
SELECT
       JV_NO
     , CI_NO
     , JV_TITLE
     , JV_REGISTER
     , JV_UPDATE
     , JV_DISPLAY
     , JV_COUNT
     , JV_TO
     , JV_PERIOD_START
     , JV_PERIOD_END
     , JV_WORKDAY_START_TIME
     , JV_WORKDAY_END_TIME
     , JV_ADDRESS
     , G_NO
     , G_NAME
     , EDUCATION_LEVEL.EL_NO EDUCATION_LEVEL_NO
     , EDUCATION_LEVEL.EL_NAME EDUCATION_LEVEL_NAME
     , JV_MAJOR
     , D_NO
     , D_NAME
     , JV_STATUS_YN
     , JV_DETAIL_TEXT
     , JV_CERTIFICATE
     , JV_AGE
     , JV_PAY
     , PT_NO
     , PT_NAME
     , R_NO
     , R_NAME
     , JT_NO
     , JT_NAME
     , S_NO
     , S_NAME
     , EXPERIENCE_LEVEL.EL_NO EXPERIENCE_LEVEL_NO
     , EXPERIENCE_LEVEL.EL_NAME EXPERIENCE_LEVEL_NAME
  FROM JOB_VACANCY
  JOIN JOB_VACANCY_EXPERIENCE_LEVEL USING(JV_NO)
  JOIN EXPERIENCE_LEVEL ON(JOB_VACANCY_EXPERIENCE_LEVEL.EL_NO = EXPERIENCE_LEVEL.EL_NO)
  JOIN GENDER USING(G_NO)
  JOIN EDUCATION_LEVEL ON(JOB_VACANCY.EL_NO = EDUCATION_LEVEL.EL_NO)
  JOIN DAY USING(D_NO)
  JOIN PAY_TYPE USING(PT_NO)
  JOIN JOB_VACANCY_ROLE USING(JV_NO)
  JOIN ROLE USING(R_NO)
  JOIN JOB_VACANCY_JOB_TYPE USING(JV_NO)
  JOIN JOB_TYPE USING(JT_NO)
  JOIN RECRUITMENT_INDUSTRY USING(JV_NO)
  JOIN SECTOR USING(S_NO);

