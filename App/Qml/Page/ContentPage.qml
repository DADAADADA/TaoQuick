import QtQuick 2.9
import "../"
Rectangle {
    id: root
    Rectangle {
        id: vLine
        width: parent.width - 2
        height: 1
        y: parent.height / 8
        x: 1
        color: "gray"
    }
    Rectangle {
        id: hLine
        width: 1
        height: parent.height - 2
        y: 1
        x: parent.width / 4
        color: "gray"
    }
    Item {
        id: logoFrame
        anchors {
            left: parent.left
            top: parent.top
            right: hLine.left
            bottom: vLine.top
        }
        Text {
            text: qsTr("菜单")
            anchors.centerIn: parent
            color: gConfig.textColor
        }
    }
    Item {
        id: titleFrame
        anchors {
            left: hLine.right
            right: parent.right
            top: parent.top
            bottom: vLine.top
        }
        Text {
            id: titlePage
            text: qsTr(menuPage.currentTitle)
            anchors.centerIn: parent
            font.pixelSize: 26
            color: gConfig.titleBackground
        }
    }
    Item {
        id: menuFrame
        anchors {
            left: parent.left
            right: hLine.left
            top: vLine.bottom
            bottom: parent.bottom
        }
        MenuPage {
            id: menuPage
            anchors.fill: parent
            Component.onCompleted: {
                //load contentData from js
                freshData(gData.contentData);
            }
        }
    }
    Item {
        id: contentFrame
        anchors {
            left: hLine.right
            right: parent.right
            top: vLine.bottom
            bottom: parent.bottom
        }
        Loader {
            id: contentPage
            anchors.fill: parent
            source: menuPage.currentUrl
        }
    }
}
