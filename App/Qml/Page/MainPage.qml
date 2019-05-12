import QtQuick 2.0

import TaoQuick 1.0
import "qrc:/Tao/Qml"

Item {
    ContentData {
        id: gConfig
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
    }
    NotifyBox {
        id: notifyBox
    }
}
