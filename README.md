# HealthKeeper - Self-Care Pet App

셀프 케어 반려동물 앱으로 일상의 습관 관리와 정신 건강을 돕는 애플리케이션입니다.

## 기능

- 📝 **일일 체크인**: 매일 아침 기분을 체크하세요
- 📊 **습관 추적**: 일일 목표와 습관을 기록하고 추적하세요
- 🧘 **호흡 명상**: 스트레스 완화를 위한 가이드 호흡
- 📓 **기분 일기**: 매일의 감정을 기록하세요
- 🐦 **반려동물 성장**: 기능을 완료하면서 반려동물이 성장합니다

## 기술 스택

- **언어**: Kotlin
- **UI**: Jetpack Compose
- **데이터베이스**: Room Database
- **최소 SDK**: API 24
- **대상 SDK**: API 34

## 프로젝트 구조

```
app/
├── src/
│   ├── main/
│   │   ├── java/com/healthkeeper/app/
│   │   │   ├── MainActivity.kt
│   │   │   ├── ui/theme/Theme.kt
│   │   │   ├── data/ (database, entities)
│   │   │   └── viewmodel/ (ViewModels)
│   │   ├── res/
│   │   │   ├── values/strings.xml
│   │   │   └── values/themes.xml
│   │   └── AndroidManifest.xml
│   └── test/ (테스트 코드)
├── build.gradle.kts
└── proguard-rules.pro
```

## 시작하기

### 요구사항

- Android Studio 2023.1.0 이상
- JDK 11 이상
- Android SDK API 34

### 빌드

```bash
# 프로젝트 빌드
./gradlew build

# 릴리스 APK 빌드
./gradlew assembleRelease

# 디버그 APK 빌드
./gradlew assembleDebug
```

## 설치

빌드된 APK 파일을 안드로이드 기기에 설치하거나 GitHub Releases에서 다운로드할 수 있습니다.

## 개발 계획

- [ ] 기분 일기 UI 개선
- [ ] 호흡 명상 가이드 추가
- [ ] 반려동물 애니메이션
- [ ] 알림 시스템
- [ ] 데이터 동기화

## 라이선스

MIT License

## 기여

PR은 언제든 환영합니다!
