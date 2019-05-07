#include "stdafx.h"

#include "TaoView.h"

#include <QGuiApplication>
#include <QQmlContext>

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);

    TaoView view;

    view.rootContext()->setContextProperty("view", &view);
    view.setSource(QUrl(QStringLiteral("qrc:/Qml/main.qml")));

    view.show();
    return app.exec();
}
