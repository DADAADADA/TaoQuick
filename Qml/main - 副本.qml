import QtQuick 2.9
import QtQuick.Controls 2.0

import "./Page"
import "./ContentData.js" as ContentData
Rectangle {
    id: root
    width: 800
    height: 600
    color: TConfig.background
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
        Image {
            id: name
            source: "qrc:/Image/logo/logo_transparent.png"
            anchors.fill: parent
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
        TitlePage {
            id: titlePage
            title: menuPage.currentTitle
            anchors.fill: parent
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
                freshData(ContentData.contentData);
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
        ContentPage {
            id: contentPage
            anchors.fill: parent
            source: menuPage.currentUrl
        }
    }
}
