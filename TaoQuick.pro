TEMPLATE = subdirs
SUBDIRS += \
    Core \
    App

CONFIG += ordered

OTHER_FILES += README.md \
    .clang-format \
    LICENSE \
    appveyor.yml \
    .travis.yml    

