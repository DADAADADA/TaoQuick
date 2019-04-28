import QtQuick 2.9
import QtGraphicalEffects 1.0
import "../.."
Rectangle {
    id: root
    property alias opacityImageUrl: img.opacityImageUrl
    property alias imageColor: img.imageColor

    property alias imageItem: img

    property alias containsMouse: mouseBtn.containsMouse
    property alias containsPress: mouseBtn.containsPress
    signal click();

    TOpacityImg {
        id: img
        anchors.fill: parent
        z: root.z + 1
    }
    MouseArea {
        id: mouseBtn
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.click();
        cursorShape: Qt.PointingHandCursor
    }
}
