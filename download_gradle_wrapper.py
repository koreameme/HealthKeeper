#!/usr/bin/env python3
import urllib.request
import os

# Create gradle/wrapper directory
os.makedirs('gradle/wrapper', exist_ok=True)

# Download gradle-wrapper.jar from official source
url = 'https://services.gradle.org/distributions/gradle-8.1-wrapper.jar'
target = 'gradle/wrapper/gradle-wrapper.jar'

print(f"Downloading gradle wrapper JAR...")
try:
    urllib.request.urlretrieve(url, target)
    print(f"✓ Downloaded successfully")
    print(f"File size: {os.path.getsize(target)} bytes")
except Exception as e:
    print(f"✗ Error: {e}")
