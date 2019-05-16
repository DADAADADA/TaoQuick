TEMPLATE = app
TARGET = TaoQuickDemo
QT += qml quick
CONFIG += plugin c++14 qtquickcompiler

#msvc{
#    QMAKE_CFLAGS += -source-charset:utf-8
#    QMAKE_CXXFLAGS += -source-charset:utf-8
#}
#一部分头文件加入编译预处理，提高编译速度
CONFIG += precompile_header
PRECOMPILED_HEADER = Src/stdafx.h
precompile_header:!isEmpty(PRECOMPILED_HEADER) {
DEFINES += USING_PCH
}
win32 {
    RC_FILE = App.rc
}
DESTDIR = $$absolute_path($${_PRO_FILE_PWD_}/../bin/)
MOC_DIR = build/moc
RCC_DIR = build/rcc
UI_DIR = build/ui
OBJECTS_DIR = build/obj
# Additional import path used to resolve QML modules in Qt Creator's code model
QML2_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

HEADERS += \
    Src/ITaoQuickPlugin.h \
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
    trans/trans_zh.qs \
    trans/trans_en.qs \
    trans/trans_ja.qs \
    trans/trans_ko.qs \
    trans/trans_fr.qs \
    trans/trans_es.qs \
    trans/trans_pt.qs \
    trans/trans_it.qs \
    trans/trans_ru.qs \
    trans/trans_vi.qs \
    trans/trans_de.qs \
    trans/trans_ar.qs

!equals(_PRO_FILE_PWD_, $$DESTDIR) {
    copy_qm.target = $$DESTDIR/copyqm
    copy_qm.depends = $${_PRO_FILE_PWD_}/trans/*.qm
    tgt = $$DESTDIR
    win32 {
        tgt ~= s,/,\\\\,g
        copy_qm.depends ~= s,/,\\\\,g
    }
    copy_qm.commands = $${QMAKE_COPY_FILE} $${copy_qm.depends} $${tgt}
    QMAKE_EXTRA_TARGETS += copy_qm
    PRE_TARGETDEPS += $$copy_qm.target
}
