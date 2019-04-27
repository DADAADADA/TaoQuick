import QtQuick 2.9
import QtQuick.Controls 2.0
import "../.."
Rectangle {
    id: root
    property alias imageItem: img
    property alias imageUrl: img.source
    property alias imageWidth: img.width
    property alias imageHeight: img.height
    property alias imageAnchors: img.anchors
    property alias containsMouse: mouseBtn.containsMouse
    property alias containsPress: mouseBtn.containsPress
    signal click();

    Image {
        id: img
        anchors.fill: parent
    }

    MouseArea {
        id: mouseBtn
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.click();
        cursorShape: Qt.PointingHandCursor
    }
}

