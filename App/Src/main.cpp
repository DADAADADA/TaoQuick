#include "stdafx.h"

#include "TaoView.h"
#include "Logger/Logger.h"
#include <QGuiApplication>
#include <QQmlContext>
#include <QQmlEngine>

#include <QDebug>
int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);
    Logger::initLog();

    TaoView view;
    view.rootContext()->setContextProperty("view", &view);
    view.setSource(QUrl(QStringLiteral("qrc:/Qml/main.qml")));
    view.show();
    return app.exec();
}
