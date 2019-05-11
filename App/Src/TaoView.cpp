#include "stdafx.h"

#include "TaoView.h"

#include <QTranslator>
#include <QQmlEngine>
TaoView::TaoView(QWindow *parent) : QQuickView(parent)
{
    setFlag(Qt::FramelessWindowHint);
    setResizeMode(SizeRootObjectToView);
    setColor(QColor(Qt::transparent));

    bool ok = m_enTrans.load("trans_en.qm");
    bool ok2 = m_zhTrans.load("trans_zh.qm");
    qWarning() << ok << ok2;
    QCoreApplication::installTranslator(&m_zhTrans);
    m_lang = QStringLiteral("中文简体");
}

void TaoView::reTrans(const QString &lang)
{
    if (m_lang == lang)
    {
        return;
    }
    m_lang = lang;
    if ( lang == QStringLiteral("中文简体"))
    {
        QCoreApplication::removeTranslator(&m_enTrans);
        QCoreApplication::installTranslator(&m_zhTrans);
        engine()->retranslate();
    } else if (lang == "English") {
        QCoreApplication::removeTranslator(&m_zhTrans);
        QCoreApplication::installTranslator(&m_enTrans);
        engine()->retranslate();
    }
}
