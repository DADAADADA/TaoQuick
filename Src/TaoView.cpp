#include "stdafx.h"

#include "TaoView.h"
#ifdef Q_OS_WIN
#include <windows.h>
#endif
TaoView::TaoView(QWindow *parent) : QQuickView(parent)
{
    setFlag(Qt::FramelessWindowHint);
    setResizeMode(SizeRootObjectToView);
    setColor(QColor(Qt::transparent));
}
#ifdef Q_OS_WIN
bool TaoView::nativeEvent(const QByteArray &eventType, void *message, long *result)
{
    MSG *msg = (MSG*)(message);

    switch(msg->message) {
        case WM_NCCALCSIZE: {
            return true;
        }
        case WM_GETMINMAXINFO: {
            return true;
        }
    }
    return false;
}
#endif
