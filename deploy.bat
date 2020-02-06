
CALL  ionic cordova build android --release
rem Signing
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore masafze.keystore -storepass ui#w!jews0p3k7d@9 .\platforms\android\build\outputs\apk\release\android-release-unsigned.apk com.eblatech.masa.purchaser
Rem zipalign
del .\platforms\android\build\outputs\apk\release\Masa.apk 
c:\Android\android-sdk\zipalign -v 4 .\platforms\android\build\outputs\apk\release\android-release-unsigned.apk .\platforms\android\build\outputs\apk\release\Masa.apk

rem "C:\Program Files (x86)\BlueStacks\HD-ApkHandler.exe" .\platforms\android\build\outputs\apk\release\Masa.apk

rem "C:\Program Files (x86)\BlueStacks\HD-RunApp.exe" Android com.eblatech.masa.purchaser
