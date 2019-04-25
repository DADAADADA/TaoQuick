import QtQuick 2.9
import QtQuick.Controls 2.0
import "../.."
Rectangle {
    id: root
    property alias textItem: t
    property alias text: t.text
    property alias textAnchors: t.anchors
    property alias textColor: t.color
    property alias textHorizontalAlignment: t.horizontalAlignment
    property alias textVerticalAlignment: t.verticalAlignment
    property alias containsMouse: mouseBtn.containsMouse
    property alias containsPress: mouseBtn.containsPress
    signal click();

    TText {
        id: t
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
    }

    MouseArea {
        id: mouseBtn
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.click();
        cursorShape: Qt.PointingHandCursor
    }
}

