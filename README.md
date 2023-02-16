# 1:1 영상 통화 앱 구현 video_call

```
개발 툴 : Flutter
개발 언어 : Dart
개발 일시 : 2023-02-14 ~
개발자 : Won Chi Hyeon
```

## 앱 개요
```
기능 : 실제 핸드폰을 사용해서 1:1 화상 통화 기능
       화상 통화를 종료할 수 있는 기능
       
사용한 플러그인 : agora_rtc_engine, permission_handler
```

## 아고라에서 필요한 상수값 가져오기
[아고라 홈페이지](https://www.agora.io)
```
아고라 홈페이지에서 회원가입을 진행하고 새로운 프로젝트를 생성합니다.
이 때 Secured mode: APP ID + Token (Recommanded)
프로젝트 config 설정페이지에서 Generate temp RTC Token을 눌러서
토큰을 발급받습니다. 토큰의 유효기간은 24시간만 유효합니다.
Channel Name은 핸드폰끼리 통신할 때 사용할 채널의 이름으로 원하는 대로 짓습니다.

프로젝트에 필요한 App ID, Channel Name, Temp Token을 안전한 곳에 복사해둡니다.
```
### [필요한 아고라 상수값들 APP ID, Channel Name, Temp Token]
![image](https://user-images.githubusercontent.com/58906858/218630843-183c655b-3f89-47d5-ab80-65ace56ace58.png)

## 아고라에서 얻은 상수값들을 프로젝트에 파일로 저장
```
아고라에서 얻은 필요한 상수값들(App ID, Channel Name, Temp Token) 이 세 개를
lib/const 폴더를 생성해서 그 안에 넣어줍니다.
Temp Token은 24시간만 유효하기에 24시간이 지나면 새로 발급받은 토큰값을 넣어줍니다.
```
![image](https://user-images.githubusercontent.com/58906858/218631335-7db9254d-340d-4f6b-ae16-96a718ed0c83.png)

### 이미지와 추가하기
[이미지 사이트](https://github.com/codefactory-co/golden-rabbit-flutter-novice/tree/main/ch12/video_call)
```
asset/img 파일에 logo, home_img를 프로젝트의 asset/img 파일에 추가합니다.
pubspec.yaml 파일을 다음과 같이 수정합니다.
```
![image](https://user-images.githubusercontent.com/58906858/218633292-9766f420-d87c-42ac-9ced-7e41fc9d2091.png)   
![image](https://user-images.githubusercontent.com/58906858/218633251-e6b14f0b-e217-40d9-b0cb-13805d2c19e6.png)

### 프로젝트에 필요한 라이브러리 설치
```
flutter pub add agora_rtc_engine와 flutter pub add permission_handler로 프로젝트에 필요한
라이브러리를 설치하고 pub get을 실행해서 변경 사항을 저장합니다.
```
![image](https://user-images.githubusercontent.com/58906858/218633476-c4d0a614-8279-45af-b8c7-d247f434e924.png)

### 네이티브 설정하기
```
안드로이드에서 추가할 네이티브 권한들을 설정해줍니다.
네트워크 상태를 읽는 READ_PHONE_STATE, ACCESS_NETWORK_STATE
인터넷을 이용해서 영상을 스트리밍해야하기에 INTERNET
녹음과 녹화 기능과 관련된 RECORD_AUDIO, MODIFY_AUDIO_SETTING, CAMERA
블루투스를 이용한 녹음과 녹화 기능 BLUETOOTH_CONNECT

모듈의 build.gradle 파일의 compileSdkVersion을 33으로 변경합니다.
```
![image](https://user-images.githubusercontent.com/58906858/218634687-f29f4206-00b2-4715-bc90-a61695d2f33b.png)   
![image](https://user-images.githubusercontent.com/58906858/218634663-16be9e8b-c23a-435e-aae5-bf822fc1677b.png)

## 로고 UI 작성
```
Scaffold의 배경색으로 blue[100]!을 적용하였습니다.
그림자가 있는 로고는 안에 아이콘과 글자가 Container안에 위치한 형태입니다.
```
![image](https://user-images.githubusercontent.com/58906858/218936962-ea1358ca-63b0-4009-8e8e-e043f6c25e3f.png)

## 이미지 UI 작성
```
가운데에 asset/img/ 폴더에 추가한 home_img.png 이미지를 넣어주었습니다.
```
![image](https://user-images.githubusercontent.com/58906858/218937370-1ecabd78-1310-499d-973e-d41d60637122.png)

## 화상 통화 시작 버튼 UI 작성
```
앱의 맨 밑에 화상 통화 시작 버튼을 생성하였습니다.
MainAxisAlignment.end으로 맨 밑에 배치하고 CrossAxisAlignment.stretch로 가로방향을 꽉 채우도록 하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/218940713-2180af18-eda6-4dd6-9027-fcbc6893c19c.png)
       
## 화상 통화 시작 버튼에 화면 이동 기능 구현
```
버튼에 Navigator를 사용해서 캠 스크린으로 화면 전환하는 기능을 추가하였습니다.
```
### [버튼을 누르면 캠 스크린으로 화면 전환]
![image](https://user-images.githubusercontent.com/58906858/219267715-4a24ad80-bf71-423b-84f2-fe8895287937.png)
