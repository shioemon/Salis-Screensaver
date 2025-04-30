![](https://raw.githubusercontent.com/op5no29/Salis-Screensaver/refs/heads/main/Brooklyn/Resources/title.png)

# Salis 스크린세이버

> [Pedro Carrasco](https://twitter.com/pedrommcarrasco)가 제작한 **[Apple 스페셜 이벤트](https://www.youtube.com/watch?v=bfHEnw6Rm-4)**(2018년 10월 30일) 브루클린 음악 아카데미의 하워드 길먼 오페라 하우스에서 발표된 애니메이션을 기반으로 한 스크린세이버 "Brooklyn"의 개선 버전입니다.

## Salis 버전을 만든 이유

최신 macOS(Sequoia, Sonoma, Ventura)에서는 원본 Brooklyn 스크린세이버에 호환성 문제가 있었습니다. 구체적으로 다음과 같은 문제가 발생했습니다:

- Apple 로고가 올바른 위치에 표시되지 않고 오른쪽 상단에 표시됨
- 스크린세이버 시작 지연 문제
- 전반적인 작동 불안정

Salis 버전은 이러한 문제를 해결하기 위해 최신 macOS의 렌더링 엔진 변경에 대응하고, 안정적인 작동을 실현하도록 코드를 수정했습니다.

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/showcase.gif?raw=true" alt="예시"/>
</p>

## 기능 ✅

* 인터넷 연결 불필요
* 라이트 & 다크 테마
* 표시하고 싶은 애니메이션 선택 가능
* 각 애니메이션의 반복 횟수 설정 가능
* 애니메이션의 랜덤 재생

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/preferenceMenu.png?raw=true" alt="설정 화면"/>
</p>

## 설치 방법 📦

**Salis 스크린세이버**를 설치하기 전에, "시스템 환경설정"을 닫아주세요.

스크린세이버는 다음 터미널 명령어로 프로그래밍 방식으로 설정할 수도 있습니다:

```shell
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Salis path "$HOME/Library/Screen Savers/Salis.saver"
```

### 수동 설치 :hand:

1. [여기를 클릭하여 다운로드](https://github.com/op5no29/Salis-Screensaver/releases/latest/download/SalisSaver.saver.zip) (Ctrl+클릭으로 새 탭에서 열기)
2. **Salis.saver**를 열기(더블 클릭)
3. "Salis.saver"는 확인되지 않은 개발자의 앱이므로 열 수 없습니다"라는 메시지가 표시되면, `확인`을 클릭
4. `환경설정`을 열기
5. `보안 및 개인 정보 보호`를 선택
6. `일반` 탭을 선택
7. 하단에 있는 `열기`를 클릭

## 제거 방법 🗑️

### 수동 :hand:

- 시스템 환경설정에서 Salis를 우클릭하여 `Salis 삭제`를 선택하거나
- `/Library/Screen Savers` 또는 `/Users/사용자이름/Library/Screen Savers`에 있는 `Salis.saver`를 삭제

## 호환성 🔧

OS X El Capitan (10.11) 이상이 필요합니다.

## 문제 해결 🤕

Salis 스크린세이버는 시스템에 의해 악성 소프트웨어로 차단될 수 있습니다. macOS Big Sur 이상에서는 `보안 및 개인 정보 보호`에서 `열기`를 클릭해도 문제가 해결되지 않을 수 있습니다.

Apple의 검역을 우회하려면 터미널에서 다음 명령어를 사용하세요:

```shell
sudo xattr -d com.apple.quarantine ~/"Library/Screen Savers/Salis.saver"
```

## 크레딧 ❤️

이 스크린세이버는 [Pedro Carrasco](https://twitter.com/pedrommcarrasco)의 [Brooklyn](https://github.com/pedrommcarrasco/Brooklyn)을 기반으로 개선한 것입니다. 원본 개발자를 지원하고 싶다면 다음 링크를 이용해 주세요:

* [GitHub Sponsors](https://github.com/users/pedrommcarrasco/sponsorship) (Ctrl+클릭으로 새 탭에서 열기)
* [Buy Me A Coffee](https://www.buymeacoffee.com/pedrommcarrasco) (Ctrl+클릭으로 새 탭에서 열기)
* [PayPal](https://www.paypal.me/pedrommcarrasco) (Ctrl+클릭으로 새 탭에서 열기)

## 기여 🙌 

이 프로젝트에 [아이디어](https://github.com/op5no29/Salis-Screensaver/issues)를 제공하거나, 새로운 기능 또는 기존 문제를 해결하는 [풀 리퀘스트](https://github.com/op5no29/Salis-Screensaver/pulls)를 열어 자유롭게 기여해 주세요.

## 라이선스 ⛔

Salis는 MIT 라이선스 하에 이용 가능합니다. 자세한 내용은 [LICENSE](https://github.com/op5no29/Salis-Screensaver/blob/main/LICENSE) 파일을 참조하세요. 로고 및 원본 애니메이션은 Apple의 자산입니다.

## 연락처 📨

질문이나 제안이 있으시면, X 또는 디스코드로 언제든지 연락해 주세요:

* [X / Twitter](https://x.com/c_y_l_i) (Ctrl+클릭으로 새 탭에서 열기)
* [Discord](https://discord.com/users/323041740963446785) (Ctrl+클릭으로 새 탭에서 열기)
