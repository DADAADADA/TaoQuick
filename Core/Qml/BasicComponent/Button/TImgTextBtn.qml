import QtQuick 2.9
import QtQuick.Controls 2.0
Item {
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
    property alias containsMouse: area.containsMouse
    property alias containsPress: area.containsPress
    signal clicked();

    property int positionType: positionImageLeft
    readonly property int positionImageLeft: 0
    readonly property int positionImageRight: 1
    readonly property int positionImageUp: 2
    readonly property int positionImageDown: 3

    Image {
        id: img
        source: root.enabled ? (containsPress ? pressedUrl : (containsMouse ? hoveredUrl : normalUrl)) : disabledUrl
    }
    Text {
        id: t
        anchors.verticalCenter: parent.verticalCenter
    }
    Component.onCompleted: {
        switch (positionType) {
        case positionImageLeft:
            img.anchors.verticalCenter = root.verticalCenter
            t.anchors.verticalCenter = root.verticalCenter
            img.anchors.left = root.left
            t.anchors.left = img.right
            break;
        case positionImageRight:
            img.anchors.verticalCenter = root.verticalCenter
            t.anchors.verticalCenter = root.verticalCenter
            t.anchors.left = root.left
            img.anchors.left = t.right
            break
        case positionImageUp:
            img.anchors.horizontalCenter = root.horizontalCenter
            t.anchors.horizontalCenter = root.horizontalCenter
            img.anchors.top = root.top
            t.anchors.top = img.bottom
            break
        case positionImageDown:
            img.anchors.horizontalCenter = root.horizontalCenter
            t.anchors.horizontalCenter = root.horizontalCenter
            t.anchors.top = root.top
            img.anchors.top = t.bottom
            break;
        }
    }
    MouseArea {
        id: area
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.clicked();
        cursorShape: Qt.PointingHandCursor
    }
}

