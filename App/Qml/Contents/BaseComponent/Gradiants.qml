import QtQuick 2.9
import QtQuick.Controls 2.5

import "qrc:/Tao/Qml/"

Item {
    anchors.fill: parent

    GridView {
        id: g
        anchors.fill: parent
        anchors.margins: 20
        cellWidth: 160
        cellHeight: 160
        model: 180
        clip: true
        delegate: Item{
            width: 160
            height: 160
            Rectangle{
                width: 150
                height: 150
                anchors.centerIn: parent
                color: "white"
                radius: 10
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 2
                    text: index + 1
                }
                Rectangle {
                    width: 100
                    height: width
                    radius:  width / 2
                    gradient: modelData
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 10
                }
            }
        }
    }
}
