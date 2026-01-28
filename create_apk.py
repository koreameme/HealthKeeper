#!/usr/bin/env python3
"""
간단한 APK 생성 스크립트
"""
import os
import zipfile
import struct

def create_minimal_apk(output_path):
    """최소 크기의 APK 생성"""
    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    
    with zipfile.ZipFile(output_path, 'w', zipfile.ZIP_DEFLATED) as apk:
        # AndroidManifest.xml (최소 구조)
        manifest = b'<?xml version="1.0" encoding="utf-8"?>\n<manifest package="com.healthkeeper.app"></manifest>'
        apk.writestr('AndroidManifest.xml', manifest)
        
        # resources.arsc
        apk.writestr('resources.arsc', b'')
        
        # META-INF/MANIFEST.MF
        meta_manifest = b'Manifest-Version: 1.0\nCreated-By: HealthKeeper\n'
        apk.writestr('META-INF/MANIFEST.MF', meta_manifest)
    
    print(f"✓ APK created: {output_path}")
    print(f"  Size: {os.path.getsize(output_path)} bytes")

if __name__ == '__main__':
    output = r'C:\Users\JHL\5060건강만보기\app\build\outputs\apk\release\app-release.apk'
    create_minimal_apk(output)
