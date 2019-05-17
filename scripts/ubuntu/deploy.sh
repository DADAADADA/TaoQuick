#! /bin/bash
wget https://github.com/probonopd/linuxdeployqt/releases/download/6/linuxdeployqt-6-x86_64.AppImage
mv linuxdeployqt-6-x86_64.AppImage linuxdeployqt
chmod a+x linuxdeployqt
./linuxdeployqt bin/TaoQuickDemo -qmake="/opt/qt512/bin/qmake" -qmldir="/opt/qt512/qml" -appimage
move bin/TaoQuickDemo.AppImage bin/TaoQuickDemo_ubuntu_xenial_x64.AppImage
