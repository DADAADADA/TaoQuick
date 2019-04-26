import QtQuick 2.9
import QtQuick.Controls 2.0
import TaoQuick 1.0
import "qrc:/Qml/BasicComponent/Others/"
import "qrc:/Qml/Config/"
Rectangle {
    id: root
    width: 800
    height: 600
    color: "Blue"
    TBusyIndicator {
        anchors.centerIn: parent
    }
}
