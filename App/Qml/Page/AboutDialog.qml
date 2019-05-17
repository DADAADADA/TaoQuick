import QtQuick 2.9
import QtQuick.Controls 2.5

import "qrc:/Tao/Qml"

Popup {
    id: root
    anchors.centerIn: parent
    background: Rectangle {
        id: back
        width: root.width
        height: root.height
        radius: 8
        color: gConfig.titleBackground
        border.width: 1
        border.color: gConfig.reserverColor
        Image {
            id: img
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/Image/logo/milk.png"
        }
        TTextBtn {
            id: closeBtn
            text: qsTr("Close")
            textColor: gConfig.textColor
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
        }
        Row {
            anchors.left: img.right
            anchors.leftMargin: 4
            anchors.top: parent.top
            anchors.bottom: closeBtn.top
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: appInfo.appName
                font.pixelSize: 20
                renderType: Text.NativeRendering
            }

        }
    }

    function show()
    {
        open()
    }
}
