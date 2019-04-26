#include "taoquick_plugin.h"
#include <QFileInfo>
#include <QDebug>
void TaoQuickPlugin::registerTypes(const char *uri)
{
    Q_INIT_RESOURCE(Qml);
    Q_INIT_RESOURCE(Image);
}


