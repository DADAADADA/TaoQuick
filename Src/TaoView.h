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
//    virtual bool nativeEvent(const QByteArray &eventType, void *message, long *result);
};

