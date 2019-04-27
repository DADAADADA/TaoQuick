#include <QQuickView>
#include <QGuiApplication>
#include <QQmlContext>
int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);

    QQuickView view;
    view.setSource(QUrl(QStringLiteral("qrc:/Qml/main.qml")));
    view.setResizeMode(view.SizeRootObjectToView);
    view.setColor(QColor(Qt::transparent));
    view.show();
    return app.exec();
}
