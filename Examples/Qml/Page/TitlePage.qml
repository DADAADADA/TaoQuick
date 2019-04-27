import QtQuick 2.9
import "qrc:/Tao/Qml/BasicComponent/Text"
import "qrc:/Tao/Qml/Config"
TText {
    id: root
    property alias title: root.text
    anchors.centerIn: parent
    font.pixelSize: 28
    color: TConfig.lightGreen
    font.bold: true
}
