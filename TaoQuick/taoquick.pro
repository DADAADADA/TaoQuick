TEMPLATE = lib
TARGET = TaoQuick
#TARGET = $$qtLibraryTarget($$TARGET)

QT += qml quick
CONFIG += plugin c++11 qtquickcompiler
uri = TaoQuick
HEADERS += \
        Src/taoquick_plugin.h

SOURCES += \
        Src/taoquick_plugin.cpp
CONFIG(debug, debug|release) {
    DESTDIR = $$absolute_path($${_PRO_FILE_PWD_}/../bin/Debug/$${uri})
} else {
    DESTDIR = $$absolute_path($${_PRO_FILE_PWD_}/../bin/Release/$${uri})
}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML2_IMPORT_PATH += $$_PRO_FILE_PWD_/Qml

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH = $$_PRO_FILE_PWD_/Qml

!equals(_PRO_FILE_PWD_, $$DESTDIR) {
    copy_qmldir.target = $$DESTDIR/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/Qml/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"

    copy_qmltypes.target = $$DESTDIR/plugins.qmltypes
    copy_qmltypes.depends = $$_PRO_FILE_PWD_/Qml/plugins.qmltypes
    copy_qmltypes.commands = $(COPY_FILE) \"$$replace(copy_qmltypes.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmltypes.target, /, $$QMAKE_DIR_SEP)\"

    QMAKE_EXTRA_TARGETS += copy_qmldir copy_qmltypes
    PRE_TARGETDEPS += $$copy_qmldir.target $$copy_qmltypes.target
}
DISTFILES = Qml/qmldir
qmldir.files = Qml/qmldir
qmltypes.files = Qml/plugins.qmltypes
unix {
    installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)
    qmldir.path = $$installPath
    qmltypes.path = $$installPath
    target.path = $$installPath
    INSTALLS += target qmldir qmltypes
}

RESOURCES += \
    Qml.qrc \
    Image.qrc
