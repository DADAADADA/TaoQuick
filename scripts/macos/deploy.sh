#! /bin/bash
/usr/local/opt/qt/bin/macdeployqt bin/TaoQuickDemo.app -qmldir=/usr/local/opt/qt/qml -verbose=1 -dmg
cp -R bin/TaoQuick bin/TaoQuickDemo.app/Contents/Resources/qml
mv bin/TaoQuickDemo.dmg bin/TaoQuickDemo_macos10-14_xcode10-2.dmg