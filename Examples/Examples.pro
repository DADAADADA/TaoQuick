TEMPLATE = app
TARGET = TaoQuickExample
QT += qml quick
CONFIG += plugin c++11

DESTDIR = $${_PRO_FILE_PWD_}/../bin

SOURCES += \
    Src/main.cpp

RESOURCES += \
    Qml.qrc \
    Image.qrc
