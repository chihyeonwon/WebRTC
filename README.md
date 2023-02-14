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
