TEMPLATE = app
TARGET = TaoQuick
QT += qml quick
CONFIG += plugin c++11

#一部分头文件加入编译预处理，提高编译速度
CONFIG += precompile_header
PRECOMPILED_HEADER = Src/stdafx.h
precompile_header:!isEmpty(PRECOMPILED_HEADER) {
DEFINES += USING_PCH
}
win32 {
    RC_FILE = App.rc
}
CONFIG(debug, debug|release) {
    DESTDIR = $$absolute_path($${_PRO_FILE_PWD_}/../bin/Debug/)
} else {
    DESTDIR = $$absolute_path($${_PRO_FILE_PWD_}/../bin/Release/)
}
# Additional import path used to resolve QML modules in Qt Creator's code model
QML2_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

HEADERS += \
    Src/Logger/Logger.h \
    Src/Logger/LoggerTemplate.h \
    Src/TaoView.h
SOURCES += \
    Src/Logger/Logger.cpp \
    Src/TaoView.cpp \
    Src/main.cpp

RESOURCES += \
    Qml.qrc \
    Image.qrc

TRANSLATIONS += \
    trans_zh.qs \
    trans_en.qs \
    trans_ja.qs \
    trans_ko.qs \
    trans_fr.qs \
    trans_es.qs \
    trans_pt.qs \
    trans_it.qs \
    trans_ru.qs \
    trans_vi.qs \
    trans_de.qs \
    trans_ar.qs

