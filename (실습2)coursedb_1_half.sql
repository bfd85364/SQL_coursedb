
SELECT * FROM orders;
SELECT * FROM checkins;
SELECT * FROM  enrolleds;
SELECT * FROM enrolleds_detail;
SELECT * FROM point_users;
SELECT * FROM users;
SELECT * FROM point_users;
## 기본 질의문 연습

-- 1) orders 테이블에서 결제수단이 카카오페이인 데이터만 가져와주세요.
SELECT distinct payment_method from orders # 특정 자료형태확인 

SELECT * FROM orders WHERE payment_method LIKE 'kakopay';

-- 2) point_users 테이블에서 포인트가 5000점 이상인 데이터만 가져와주세요.
SELECT * FROM point_users WHERE point >= 5000;
-- 3) orders 테이블에서 주문한 강의가 앱개발 종합반이면서, 결제수단이 카드인 데이터만 가져와줘.
SELECT * FROM orders WHERE course_title like "앱개발 종합반" AND payment_method LIKE "CARD";
 
-- 4) 포인트가 20000 점보다 많은 유저만 뽑아보기!
SELECT * FROM point_users a JOIN users b ON a.user_id = b.user_id = b.user_id
WHERE point > 2000;
-- 5) 성이 황씨인 유저만 뽑아보기 (users테이블)
SELECT * FROM users WHERE name LIKE '황%';

-- 6) 웹개발 종합반' 을 제외하고 주문데이터를 보고 싶어졌어요 어떻게 하면좋을까요?
 select * from orders where course_title not like "웹개발 종합반";
 
-- 7) 7 월 13 일, 7 월 14 일의 주문데이터만 보고 싶어졌어요. 어떻게 해야 할까요? (timestamp --> 날짜까지만구하기)
SELECT * FROM orders WHERE DATE(created_at) between "2020-07-13" AND "2020-07-14";

-- 8) 1, 3 주차 사람들의 ' 오늘의 다짐' 데이터만 보고 싶어졌어요.
SELECT * FROM CHECKINS WHERE WEEK IN (1 , 3);
-- 9) 다음 (daum) 이메일을 사용하는 유저만 보고 싶어졌어요. 어떻게 하죠?
SELECT * FROM USERS  WHERE  SUBSTRING_INDEX(email,".",1) LIKE '%daum';

-- 10) a로 시작하고 t로 끝나는 이메일을 가지는 유저들을 보고 싶어요.
SELECT * FROM users WHERE email LIKE 'a%' AND email LIKE '%t';

-- 11) 성이 남씨인 유저의 이메일 계정의 아이디만 추출하기

-- 12) 결제수단이 CARD 가 아닌 주문데이터만 추출해보기

-- 13) 20000~30000 포인트 보유하고 있는 유저만 추출해보기

-- 14) 이메일이 a 로 시작하고 com 로 끝나는 유저만 추출해보기

-- 15) 이메일이 s 로 시작하고 com 로 끝나면서 성이 이씨인 유저만 추출해보기

-- 16) 주문시 몇개의 결제 수단이 있는지 알아보세요~

-- 17) 회원 분들의 성(family name) 씨가 몇개인지 궁금하다면?

-- 18) daum, naver등 메일 계정들 중 가장 많은 유저를 가지는 메일 계정을 알고 싶어요.



-- 19) Gmail 을 사용하는 2020-07-12~13 에 가입한 유저를 추출하기


-- 20) naver 을 사용하는 2020-07-12~13 에 가입한 유저의 수를 세기


-- 21) naver 이메일을 사용하면서, 웹개발 종합반을 신청했고 결제는 kakaopay 이뤄진 주문데이터 추출하기



