#pragma once

#include <QQuickView>

class TaoView : public QQuickView
{
    Q_OBJECT
public:
    explicit TaoView(QWindow *parent = nullptr);
    Q_INVOKABLE void reTrans(const QString &lang);
signals:
    void reTransed();
public slots:
private:
    QTranslator m_enTrans;
    QTranslator m_zhTrans;
    QString m_lang;
};

