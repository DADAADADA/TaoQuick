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

macos {
OTHER_FILES += \
    scripts/macos/install.sh \
    scripts/macos/build.sh \
    scripts/macos/deploy.sh
}

linux {
OTHER_FILES += \
    scripts/ubuntu/install.sh \
    scripts/ubuntu/build.sh \
    scripts/ubuntu/deploy.sh
}
