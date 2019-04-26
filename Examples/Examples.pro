TEMPLATE = app
TARGET = TaoQuickExample
QT += qml quick
CONFIG += plugin c++11

CONFIG(debug, debug|release) {
    DESTDIR = $$absolute_path($${_PRO_FILE_PWD_}/../bin/Debug/)
} else {
    DESTDIR = $$absolute_path($${_PRO_FILE_PWD_}/../bin/Release/)
}
# Additional import path used to resolve QML modules in Qt Creator's code model
QML2_IMPORT_PATH = $${DESTDIR}

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH = $${DESTDIR}
SOURCES += \
    Src/main.cpp

RESOURCES += \
    Qml.qrc \
    Image.qrc
