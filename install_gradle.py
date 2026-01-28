#!/usr/bin/env python3
import urllib.request
import zipfile
import os
import shutil

print("Downloading Gradle 8.1...")
url = "https://services.gradle.org/distributions/gradle-8.1-bin.zip"
target_zip = "gradle-8.1-bin.zip"
gradle_home = os.path.expanduser("~/.gradle")

try:
    # Create gradle directory
    os.makedirs(gradle_home, exist_ok=True)
    
    # Download
    print(f"Downloading from {url}...")
    urllib.request.urlretrieve(url, target_zip)
    print(f"Downloaded {target_zip}")
    
    # Extract
    print("Extracting...")
    with zipfile.ZipFile(target_zip, 'r') as zip_ref:
        zip_ref.extractall(gradle_home)
    
    # Remove zip
    os.remove(target_zip)
    print(f"✓ Gradle extracted to {gradle_home}")
    
except Exception as e:
    print(f"✗ Error: {e}")
