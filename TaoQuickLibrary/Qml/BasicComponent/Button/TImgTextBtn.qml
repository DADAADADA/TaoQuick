import QtQuick 2.9
import QtQuick.Controls 2.0
import "../../Config"
import "../Text"
Rectangle {
    id: root
    property url normalUrl
    property url hoveredUrl
    property url pressedUrl
    property url disabledUrl

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
    property alias containsMouse: area.containsMouse
    property alias containsPress: area.containsPress
    signal click();

    border.color: TConfig.buttonStyle.borderColor
    border.width: (containsPress || containsMouse) ? 1 : 0
    color: TConfig.buttonStyle.backgroundColor
    Row {
        id: row
        anchors.centerIn: parent
        spacing: 5
        Image {
            id: img
            anchors.verticalCenter: parent.verticalCenter
            source: root.enabled ? (containsPress ? pressedUrl : (containsMouse ? hoveredUrl : normalUrl)) : disabledUrl
        }
        TText {
            id: t
            anchors.verticalCenter: parent.verticalCenter
            color: TConfig.textStyle.normalColor
        }
    }
    MouseArea {
        id: area
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.click();
        cursorShape: Qt.PointingHandCursor
    }
}

