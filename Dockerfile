FROM openjdk:11-jdk

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Android SDK 설치
ENV ANDROID_SDK_ROOT=/opt/android-sdk
RUN mkdir -p ${ANDROID_SDK_ROOT}
RUN wget -q https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O /tmp/cmdline-tools.zip && \
    unzip -q /tmp/cmdline-tools.zip -d ${ANDROID_SDK_ROOT} && \
    rm /tmp/cmdline-tools.zip

# SDK 업데이트
RUN yes | ${ANDROID_SDK_ROOT}/cmdline-tools/bin/sdkmanager --sdk_root=${ANDROID_SDK_ROOT} "platforms;android-34" "build-tools;34.0.0" "ndk;25.1.8937393"

ENV PATH="${ANDROID_SDK_ROOT}/cmdline-tools/bin:${ANDROID_SDK_ROOT}/platform-tools:${PATH}"

WORKDIR /app
COPY . .

RUN chmod +x gradlew
RUN ./gradlew --version
RUN ./gradlew assembleRelease --no-daemon

CMD ["tail", "-f", "/dev/null"]
