# 28-2nd-BANGGUSEOK-Traveller-backend

> 본 repository는 웹 개발 학습을 위해 Awwwards(https://www.awwwards.com/) 사이트를 참고하여 우리의 여행지를 공유하고 유저가 여행지별로 '감성', '방문의사', '첫인상'에 대해 투표하여 코로나 이후의 여행지를 보다 쉽게 선택할 수 있게 하고자 만든 사이트입니다.

> 개발 초기 세팅부터 전부 직접 구현했으며 짧은 기간동안 기능 구현에 보다 집중하기 위해 User, Product, Vote앱까지 기능 구현하였습니다.


## 개발 인원 및 기간

+ 개발기간: 2022.01.10 ~ 2022.01.21
    + Frontend: 김정현, 안현재, 엄성용 (repository: https://github.com/wecode-bootcamp-korea/28-2nd-BANGGUSEOK-Traveller-frontend)
    + Backend: 장우경, 노세인
        + Backend 공통: ERD Modeling, CSV Data Upload, 제품 상세 페이지
        + 장우경 - 카카오 로그인, Login Decorator, 제품 필터 페이지
        + 노세인 - 초기 세팅, 메인 페이지, 투표 기능, AWS(EC2, RDS) 생성 및 연동


## 시연 영상

+ Frontend
[![방구석 트레블러_Frontend Demo]](https://img.youtube.com/vi/o_FYp6VgCoo/0.jpg)](https://youtu.be/o_FYp6VgCoo)

+ Backand
[![bangguseok traveller–back terminal record]](https://img.youtube.com/vi/CrL0FQz1F7s/0.jpg)](https://youtu.be/CrL0FQz1F7s)


## DB modeling

![BANGGUSEOK-Traveller](https://user-images.githubusercontent.com/75561289/150669068-da7055ec-f329-46fc-9027-449d29a84856.png)


## 협업 도구

+ Github
+ [Trello](https://trello.com/b/PP6heeSF/our-sprint)
+ Slack
+ Notion


## 사용 기술

+ Git
+ Django
+ Python
+ MySQL
+ AWS

## Library

+ JWT


## 구현 기능

### User

+ 카카오 소셜 로그인: 프론트가 보내준 카카오의 사용자 토큰을 활용하여 kakao에 사용자 정보를 요청하고 받은 사용자 정보가 DB에 존재한다면 업데이트 후 토큰을 발행하고 이를 프론트에게 리턴해주고 DB에 없는 유저라면 새로운 유저를 저장하고 토큰을 발행해서 프론트에 전달하는 기능 구현

### Product

+ 제품 메인 페이지 - 메인 최상단에 랜덤한 제품이 출력되며 해당 제품에 대한 투표의 점수 상황을 계산해 프론트로 보내주도록 구현하였으며, offset+limit을 통해 4개의 상품을 추천해주고 하단에는 제품 전체를 조회할 수 있도록 구현
+ 제품 카테고리 페이지 - 프론트에 카테고리에 따른 태그 데이터 전송 및 선택한 태그에 따라 필터링 기능 구현
+ 제품 상세 페이지 - 제품에 대한 상세 정보 조회 및 로그인 유저에 한해 투표 참여 기능 구현, 해당 제품에 투표한 유저의 정보 및 투표 점수 나열하여 공유하는 기능 구현

### Vote

+ 유저의 정보를 받아온 이후 token을 통해 인증이 완료된 유저에 한해 투표에 참가할 수 있도록 기능 구현
+ 3가지의 항목에 대해 투표가 완료되면 투표 데이터를 DB에 저장
+ 한 product에 대해 이미 투표에 참여한 유저는 중복투표가 불가능 하도록 구현

## Reference

+ 이 프로젝트는 [AWWWARDS](https://www.awwwards.com/) 사이트를 참조하여 학습 목적으로 만들었습니다.
+ 실무 수준의 프로젝트이지만 학습용으로 만들었기 때문에 이 코드를 활용하여 이득을 취하거나 무단 배포할 경우 법적으로 문제가 될 수 있습니다.
+ 이 프로젝트에서 사용하고 있는 사진 대부분은 위코드에서 구매한 것이므로 해당 프로젝트 외부인이 사용할 수 없습니다.
