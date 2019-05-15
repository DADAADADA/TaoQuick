#pragma once

#include <QQuickView>
#include <memory>

class QTranslator;

class TaoView : public QQuickView
{
    Q_OBJECT
    Q_PROPERTY(QStringList languageList READ languageList NOTIFY languageListChanged)
public:
    explicit TaoView(QWindow *parent = nullptr);
    Q_INVOKABLE void reTrans(const QString &lang);
    const QStringList &languageList() const
    {
        return m_languageList;
    }

signals:
    void reTransed();
    void languageListChanged();

public slots:
private:
    QString m_lang;
    QMap<QString, std::shared_ptr<QTranslator>> m_transMap;
    QTranslator *m_pLastLang;
    QStringList m_languageList;
};

