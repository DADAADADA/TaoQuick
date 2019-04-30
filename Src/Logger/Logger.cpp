#include "Logger.h"
#include "LoggerTemplate.h"
#include <QCoreApplication>
#include <QDateTime>
#include <QDir>
#include <QMutex>
#include <string>

#include <Windows.h>

namespace Logger
{
    static QString gLogDir;
    static int gLogMaxCount;
    void initLog(const QString &logPath, int logMaxCount)
    {
        gLogDir = QCoreApplication::applicationDirPath() + "/" + logPath;
        gLogMaxCount = logMaxCount;
        QDir dir(gLogDir);
        if (!dir.exists())
        {
            dir.mkpath(dir.absolutePath());
        }
        QStringList infoList = dir.entryList(QDir::Files, QDir::Name);
        while (infoList.size() > gLogMaxCount)
        {
            dir.remove(infoList.first());
            infoList.removeFirst();
        }
    }
    void outputMessage(QtMsgType type, const QMessageLogContext &context, const QString &msg)
    {
        static const QString messageTemp= QString("<div class=\"%1\">%2</div>\r\n");
        static const char typeList[] = {'d', 'w', 'c', 'f', 'i'};
        static QMutex mutex;
        Q_UNUSED(context)
        QDateTime dt = QDateTime::currentDateTime();

        QString fileNameDt = dt.toString("yyyy-MM-dd");
        QString contentDt = dt.toString("yyyy-MM-dd hh:mm:ss");
        QString message = QString("%1 %2").arg(contentDt).arg(msg);
        QString htmlMessage = messageTemp.arg(typeList[static_cast<int>(type)]).arg(message);
        QFile file(QString("%1/%2_log.html").arg(gLogDir).arg(fileNameDt));

        mutex.lock();
        bool exist = file.exists();
        file.open(QIODevice::WriteOnly | QIODevice::Append);
        QTextStream text_stream(&file);
        text_stream.setCodec("UTF-8");
        if (!exist)
        {
            text_stream << logTemplate << "\r\n";
        }
        text_stream << htmlMessage;

        file.close();
        mutex.unlock();

        ::OutputDebugString(message.toStdWString().data());
        ::OutputDebugString(L"\r\n");
    }
} // namespace Logger
