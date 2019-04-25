#include <QGuiApplication>
#include <QQuickView>
int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);

    QQuickView view;
    view.setSource(QUrl(QStringLiteral("qrc:/Qml/main.qml")));
    view.setResizeMode(view.SizeViewToRootObject);
    view.show();

    return app.exec();
}
