import QtQuick 2.9
import QtQuick.Controls 2.0

import TaoQuick 1.0
import "qrc:/Tao/Qml"

import "./Page"
import "./ContentData.js" as ContentData

Item {
    id: root
    width: 1024
    height: 768
    QtObject {
        id: gConfig
        property color titleBackground: "#c62f2f"
        property color background: "#ccced0"
    }

    TitlePage {
        id: titleRect
        width: root.width
        height: 60
        color: gConfig.titleBackground
        TMoveArea {
            height: parent.height
            anchors {
                left: parent.left
                right: parent.right
                rightMargin: 170
            }
            control: view
        }
    }
    TResizeBorder {
        control: view
        anchors.fill: parent
    }
    ContentPage {
        id: contentRect
        width: parent.width
        color: gConfig.background
        anchors.top: titleRect.bottom
        anchors.bottom: parent.bottom
        TBusyIndicator {
            anchors.centerIn: parent
        }
    }
    NotifyBox {
        id: notifyBox
    }
}
