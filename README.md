<img src="https://capsule-render.vercel.app/api?type=waving&color=BDBDC8&height=150&section=header"/>

## 은행 데이터베이스
 <h3>🗃️ 파일 설명</h3>
 
+ Dump20230616_7 -> 덤프 파일 폴더
+ bank.mwb -> 모델링 파일
+ 보고서.hwp -> 각종 문서 및 회의록

<h3>📣 프로젝트 개요</h3>

+ 인원 : 6명
+ 기간 : 2023. 05 ~ 2023. 06 (약 1개월)
+ 프로젝트 목적 :기말고사 프로젝트. 고객의 요청이 있다고 가정하고 고객 요구사항 부터 설계, 구현까지 직접 해보기 위함.
+ 역할 : 자료조사, 기술서 작성, 흐름도 작성, 트랜잭션 모델링
+ 개발 환경 : MySQL


<h3>💿 프로젝트 순서</h3>
1. 프로젝트 개요서 작성 -> 2. 업무 기능도 작성 -> 3. 단위 업무 기술서 작성 -> 4. 업무 흐름도 작성 -> 5. 데이터 모델링 -> 6. 도메인 정의서 작성 -> 7. 테이블 기술서 작성 -> 8. 트랜잭션 모델링

<hr>

## 1 ~ 4 업무 분석 단계

### 1. 프로젝트 개요서
<div>
  
  + 프로젝트 개요서에는 프로젝트명 부터 요청한 고객에 대한 소개, 개발의 필요성, 시스템 구축 범위, 인원 배치 등 프로젝트 전반에 대한 개요를 작성한다. 우리 팀은 농협 은행으로부터 데이터베이스 구축 의뢰가 들어왔다는 가정하에 진행하였다.
    <p align="center">
      <img src="https://github.com/user-attachments/assets/c3000d3d-3fd7-4219-8e8d-9782949a6707">
    </p>

</div>

### 2. 업무 기능도
<div>
  
  + 시스템 구축 범위에 따라 요청사의 업무를 조직도로 표현한 것이다.
  + 우리 팀은 은행의 대표적인 업무인 수신과 여신 그리고 고객 정보 관리, 카드 이렇게 4가지 분야를 선택하였다. 업무 기능도를 책의 목차 처럼 어느 부분에 어떤 업무가 있는지 쉽게 파악할 수 있다.
  <p align="center">
    <img src="https://github.com/user-attachments/assets/744f206a-e154-4437-92c9-c617675dab09">
  </p>
</div>

### 3. 단위 업무 기술서
<div>
  
  + 업무 기능도를 작성함으로써 대략적인 업무 파악이 완료 되면 이제 각 분야에 업무를 세세하게 분석해야 한다.
  + 프로세스는 각 분야에서 세부적인 기능이다. 여신 시스템에서 신용 대출 프로세스를 보면 신용 대출이 이루어질 때 선행되어야 하는 조건과 프로세스 진행 과정이 담겨 있다.
  <p align="center">
    <img src="https://github.com/user-attachments/assets/39b06fcc-53b4-4fb0-9e29-8c20ff72dba6">
  </p>
</div>

### 4. 업무 흐름도
<div>
  
  + 먼저 작성한 단위 업무 기술서를 토대로 업무 흐름도를 만든다. 흐름도는 DFD(데이터 흐름도)로 데이터의 흐름을 파악하기 위해 작성된다.
  + 업무 흐름도를 작성하면 어떤 프로세스에서 어떤 데이터가 필요하고, 어떤 데이터가 발생하는지 파악할 수 있다.
  <p align="center">
    <img src="https://github.com/user-attachments/assets/9410311e-5b07-40fd-ae41-5e9bb390991b">
  </p>
</div>

<br>

## 5 ~ 8 논리적 DB 설계

### 5. 데이터 모델링
<div>
  
  + 데이터 모델링은 엔티티 도출 작업이 주가 된다. 엔티티는 업무에 사용되고 관리가 필요한 유/무형의 사물(개체)을 뜻한다.
  + 업무 분석에서 수집했던 데이터를 주고 받는 명세서, 전표와 작성했던 DFD 등의 문서를 보고 엔티티를 도출해 낸다. 이 과정은 업무 분석을 기반으로 테이블을 만드는 것이라고 보면 된다.
  <p align="center">
    <img src="https://github.com/user-attachments/assets/30437351-c1f4-4a98-8760-d464d6ae8d52">
  </p>
</div>

### 6. 도메인 정의서
<div>
  
  + 도메인 정의서는 속성들이 가질 수 있는 값의 타입과 제약 조건 등을 정리해 놓은 문서다. 이렇게 정리해 놓으면 같은 기능을 하는 속성들의 일관성을 유지할 수 있다.
  <p align="center">
    <img src="https://github.com/user-attachments/assets/5f41b180-9dba-4b75-bf30-97f5b9ef853f">
  </p>
</div>

### 7. 테이블 기술서
<div>
  
  + 테이블 기술서는 각 테이블에 대한 정의를 기술해 놓은 문서다. 외래 키와 다른 속성들의 제약 조건을 한 눈에 볼 수 있다.
  <p align="center">
    <img src="https://github.com/user-attachments/assets/35f1c63a-caec-43d6-95d9-06b1e0413c6a">
  </p>
</div>

### 8. 트랜잭션 모델링
<div>
  
  + 트랜잭션 모델링은 세부 업무가 이루어졌을 때 실제로 데이터베이스에서 일어나는 데이터 입출력을 정의하는 과정이다. 아래 사진 처럼 체크카드 결제가 하나의 트랜잭션이 된다.
  + 트랜잭션은 하나의 작업 단위이고 여러 SQL들을 묶어서 사용할 수 있는데 예를 들어, 체크카드 결제가 이루어졌을 때 고객의 통장 잔고와 결재 내역 등 여러 테이블에서 갱신 되어야 할 것이다. 즉, 하나의 트랜잭션 안에서 update 문이나 insert문이 여러 개 사용될 수 있다. 또한 만약 고객의 통장 잔고가 부족하거나 체크카드가 정지 되어있으면 결제가 되지 않도록 하는 것도 트랜잭션에서 할 수 있다. MySQL에선 프로시저라는 것을 지원하는데 마치 함수를 정의하는 것과 같다. 이 프로젝트에선 이 프로시저를 이용하여 트랜잭션을 정의 하였다.
  <p align="center">
    <img src="https://github.com/user-attachments/assets/e8c46c1d-3655-4083-bce7-c2c1d9a362f4">
  </p>
</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=BDBDC8&height=150&section=footer"/>
