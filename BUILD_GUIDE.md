# HealthKeeper - Android 앱 빌드 가이드

현재 APK 파일이 제대로 빌드되지 않아 설치가 안 됩니다.

## 방법 1: Android Studio에서 직접 빌드 (권장)

1. **Android Studio 설치**
   - https://developer.android.com/studio에서 다운로드

2. **프로젝트 열기**
   - Android Studio 실행
   - "Open" 선택
   - `C:\Users\JHL\5060건강만보기` 폴더 선택

3. **빌드**
   - 메뉴: Build → Build Bundle(s) / APK(s) → Build APK(s)
   - 또는 `./gradlew assembleRelease`

4. **APK 위치**
   - `app/build/outputs/apk/release/app-release.apk`

## 방법 2: 커맨드라인에서 빌드

```bash
# PowerShell에서 실행
cd "C:\Users\JHL\5060건강만보기"
.\gradlew.bat assembleRelease
```

## 방법 3: 온라인 빌드 서비스
- https://www.appshopper.com/
- https://www.aab2apk.com/

## 현재 상태
- ✅ GitHub 저장소: https://github.com/koreameme/HealthKeeper
- ⚠️ APK 빌드: 실패 (gradle-wrapper.jar 누락)

## 다음 단계
Android Studio를 설치하고 빌드하시면 완벽한 APK가 생성됩니다.
