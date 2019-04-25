import QtQuick 2.9
import QtQuick.Controls 2.0
import "../.."
Rectangle {
    id: root
    property alias imageItem: img
    property alias imageUrl: img.source
    property alias imageWidth: img.width
    property alias imageHeight: img.height

    property alias textItem: t
    property alias text: t.text
    property alias textColor: t.color
    property alias textHorizontalAlignment: t.horizontalAlignment
    property alias textVerticalAlignment: t.verticalAlignment
    property alias rowItem: row
    property alias containsMouse: mouseBtn.containsMouse
    property alias containsPress: mouseBtn.containsPress
    signal click();

    border.color: TConfig.buttonBorderColor
    border.width: 1
    color: TConfig.buttonBackgroundColor

    Row {
        id: row
        anchors.centerIn: parent
        spacing: 5
        Image {
            id: img
            anchors.verticalCenter: parent.verticalCenter
        }
        TText {
            id: t
            anchors.verticalCenter: parent.verticalCenter
            color: TConfig.textColor
        }
    }
    MouseArea {
        id: mouseBtn
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.click();
        cursorShape: Qt.PointingHandCursor
    }
}

