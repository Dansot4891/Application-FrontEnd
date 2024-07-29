가천대학교 종합 프로젝트 앱 코딩

피그마 : https://www.figma.com/design/ccqtA5ee51oOkFaE2zknho/Untitled?node-id=45-688

스택 : Flutter/Dart

기능
1. 성분 북마크
2. 분석 데이터 요청/받기
3. 성분 데이터 받기
4. ChatGPT API KEY 이용하여 연동하여 채팅
5. 로그인/회원가입/아이디 찾기/비밀번호 찾기/회원 탈퇴/로그아웃
6. 화장품 데이터 받기
7. 구매처 url 연동

특징
1. 모든 데이터는 riverpod을 이용하여 데이터를 받고 저장하고 이용한다.
2. 데이터 정제 및 일부만 가져오는 것은 provider 내에서 처리 후 ui로 가져온다
3. 자주 쓰는 ui 일반화
4. 그래프 , 버튼 등 Custom으로 만들어서 이용
5. 서버 연동 뿐 아니라 ChatGPT와 같은 API 이용
6. 반응형 앱

## Intelly cosm
<img src="https://github.com/user-attachments/assets/7fc78782-bf80-4b15-b823-40c0e88e8177" align="center" width="32%">

------------------------------------------------------------
## 개발 환경
###### 프론트엔드 : Flutter
백엔드 : Spring, MariaDB, amazonS3
AI : python
------------------------------------------------------------
## 팀원 소개
###### 프론트 엔드 : 가천대학교 금융수학과 임명우
백엔드 : 가천대학교 컴퓨터 공학과 최현수
AI : 가천대학교 컴퓨터 공학과 안창훈
데이터 처리 : 가천대학교 컴퓨터 공학과 최지아
------------------------------------------------------------
## 개발 기간
###### 2024-03-02 ~ 2024-06-17
------------------------------------------------------------
## 프로젝트 소개
+ Intelly cosm는 사용자가 성분 사진을 통해 분석 결과를 확인하고 추천받을 수 있는 앱입니다.
+ 사용자는 성분 사진을 업로드하여 해당 사진에 대한 성분들을 분석 받을 수 있습니다.
  (이미지 1개 업로드시 분석, 이미지 2개 업로드시 비교 분석)
+ 사용자가 기입한 정보, 북마크, 성분 분석 데이터를 통해 화장품을 추천받을 수 있습니다.
+ 사용자는 성분에 대한 데이터를 확인, 북마크가 가능하며 관리자가 생성한 화장품 데이터 확인이 가능합니다.
------------------------------------------------------------
## 주요 화면 구성
<p align="center">
   <img src="https://github.com/user-attachments/assets/5c537314-b864-4879-b966-eb55c6b1871c" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/4346a817-1fbf-4f66-b104-fbc1664d5626" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/69c4a85e-1a62-41bf-93ca-582a2db331b4" align="center" width="32%">
</p>
<p align="center">
   <img src="https://github.com/user-attachments/assets/5c537314-b864-4879-b966-eb55c6b1871c" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/1fc6cbe7-ad5c-41e5-b6e2-34e68077b9d8" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/839b9e4a-de80-4504-a8f9-1ce626caebcb" align="center" width="32%">
</p>
<p align="center">
   <img src="https://github.com/user-attachments/assets/bb32aa6d-e099-4a1f-a321-4570ac204460" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/692ea3bf-c2f3-4d53-96e9-74b9d1fea106" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/837132e8-4fc6-4ca8-ae28-036837c506ff" align="center" width="32%">
</p>
<p align="center">
   <img src="https://github.com/user-attachments/assets/1fcc5638-108c-4392-b72c-f814b5440cb9" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/a7104339-f7e6-4d99-99cf-7b491435b746" align="center" width="32%">
</p>

------------------------------------------------------------
## 기능
1. 로그인/회원가입/정보 수정
   + TextField 유효성 검사가 구현돼있습니다.
   + 사용자가 자유롭게 정보를 기입하고 로그인하고, 정보 수정이 가능합니다.
2. 팀 생성/참가/수정/삭제
   + 팀 생성자는 팀에 대한 정보 기입이 가능하며 생성/수정/삭제가 모두 가능합니다.
3. 음식 랜덤 추천 -> 이미지까지 출력 후 해당 카테고리에 대한 팀 생성/이동 가능
   + 각 카테고리 별로 저장된 데이터안에서 사용자에게 이미지와 함께 음식 추천이 가능합니다.
4. 노쇼 유저 신고
   + 팀 생성 후 참가하였으나 노쇼하는 인원에 대해서 신고 기능이 구현돼있습니다.

## 특징
1. FireBase를 연동하여 데이터를 관리합니다.
2. FireBase 연동 코드 mixin 활용하여 코드를 일반화하였습니다.
3. 모든 데이터는 riverpod을 이용하여 저장/정제/생성 이용하였습니다.
4. 지속적으로 develop 되었습니다.
(setState, FutureBuilder => Provider => Riverpod)
5. 이미지 캐싱
(이미지 크기로 인하여 바로 출력이 안되면 해당 이미지에 대한 로딩 화면이 나타나도록 하였습니다.)


