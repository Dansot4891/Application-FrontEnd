## 가천대학교 종합 프로젝트 앱 코딩
------------------------------------------------------------
## Intelly cosm
<img src="https://github.com/user-attachments/assets/7fc78782-bf80-4b15-b823-40c0e88e8177" width="100%">

------------------------------------------------------------
## 개발 환경
###### 프론트엔드 : Flutter

###### 백엔드 : Spring, MariaDB, amazonS3

###### AI : python
------------------------------------------------------------
## 팀원 소개
###### 프론트 엔드 : 가천대학교 금융수학과 임명우

###### 백엔드 : 가천대학교 컴퓨터 공학과 최현수

###### AI : 가천대학교 컴퓨터 공학과 안창훈

###### 데이터 처리 : 가천대학교 컴퓨터 공학과 최지아
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
+ 사용자는 파인튜닝된 챗봇과 자유롭게 대화할 수 있습니다.
------------------------------------------------------------
## 주요 화면 구성
<p align="center">
   <img src="https://github.com/user-attachments/assets/03fefd0b-1a4d-4b1e-a1a0-eb46bc4ad6a3" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/defa56a7-1bb9-4b73-bc11-90c10f348fbd" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/442ccb55-5739-4db5-970a-b461c4f061f5" align="center" width="32%">
</p>
<p align="center">
   <img src="https://github.com/user-attachments/assets/09b3ffd8-bc82-4986-ab12-7d458f53979c" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/ccf28724-ce51-4042-815b-ffe50b8d1aeb" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/b1c9b99c-ae8d-4b8d-ab81-f4d4ec08ad07" align="center" width="32%">
</p>
<p align="center">
   <img src="https://github.com/user-attachments/assets/ce322187-fe11-4f86-932b-6d856ee2055a" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/3393a2e0-1f3d-43b1-a8af-02c00c31d3bb" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/3ba1eb16-bdb4-49cf-a411-d5237ebede03" align="center" width="32%">
</p>
<p align="center">
   <img src="https://github.com/user-attachments/assets/b22e566c-bf08-4abb-a0c5-00081faeeb9e" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/5c5372ea-c56e-4dd6-ad36-5a2668d394f6" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/83ec967c-9bba-4959-a1c7-4829069e7c81" align="center" width="32%">
</p>
<p align="center">
   <img src="https://github.com/user-attachments/assets/09468d8f-1688-4d09-87f3-6b60b1a824af" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/2588a6cd-1c84-43d3-a08d-4d6116ca47a7" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/8fd5b6f1-0cc7-44a3-a2ef-ea081dd6e0ea" align="center" width="32%">
</p>
<p align="center">
   <img src="https://github.com/user-attachments/assets/3efad5eb-7972-4b55-90ae-1a10555c3335" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/fe6570be-1b63-449b-ae63-55e8678aacfd" align="center" width="32%">
   <img src="https://github.com/user-attachments/assets/daa39421-918f-4521-b27f-01ef2f2df1a5" align="center" width="32%">
</p>


------------------------------------------------------------
## 기능
1. 로그인 / 회원가입 및 탈퇴 / 사용자 정보 수정 / 아이디, 비밀번호 찾기
   + 사용자는 로그인 / 회원가입 / 수정이 가능합니다.
   + TextField에 대한 유효성 검사가 돼있습니다.
   + 사용자는 입력한 개인 정보를 통해 자신의 아이디 및 비밀번호를 찾을 수 있습니다.
2. 이미지 등록 및 해당 데이터 분석 및 비교 분석
   + 사용자는 분석받고자하는 이미지를 업로드하여 해당 이미지에 대한 성분 분석 결과를 받을 수 있습니다.
   + 이미지 1개 업로드시 단순 분석, 2개 업로드시에는 해당 이미지들에 대한 비교분석이 실행됩니다.
3. 화장품, 성분 데이터, 북마크 데이터 조회
   + 대한 화장품 협회에서 제공하는 성분 데이터를 조회할 수 있습니다.
   + 관리자가 등록한 화장품을 조회할 수 있습니다.
   + 성분에 대하여 사용자가 북마크 기능을 이용할 수 있습니다.  
4. 챗봇
   + 사용자는 ChatGpt 챗봇과 대화하여 즉각적으로 원하는 정보를 얻을 수 있습니다.
5. 문의 기능
    + 관리자에게 자유롭게 문의를 하고 답변을 확인할 수 있습니다.
6. 화장품 추천
    + 관리자가 등록한 화장품내에서 사용자 맞춤형 추천을 받을 수 있습니다.

## 특징
1. 모든 데이터는 riverpod을 이용하여 데이터를 받고 저장하고 이용합니다.
2. 데이터와 ui를 분리하여 코드 관리에 용이하도록 하였습니다. 
3. 자주 쓰이는 위젯을 일반화하였습니다.
4. 그래프 , 버튼 등 Custom으로 만들어서 이용하였습니다.
5. RESTful API를 이용하여 서버와 클라이언트 간의 데이터 통신 구현하였습니다.
6. 반응형 앱으로 구현하였습니다.
7. 대한 화장품 협회에서 제공하는 성분 데이터 활용하였습니다.
8. Chat GPT 오픈 API를 활용하여 챗봇 기능을 구현하였습니다.
