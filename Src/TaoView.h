#pragma once

#include <QQuickView>

class TaoView : public QQuickView
{
    Q_OBJECT
public:
    explicit TaoView(QWindow *parent = nullptr);

signals:

public slots:

protected:
#ifdef Q_OS_WIN
    //windows 处理系统事件，使窗口支持 "拖到桌面边缘自动放大或占半屏" 功能
    virtual bool nativeEvent(const QByteArray &eventType, void *message, long *result) override;
#endif
};

