import QtQuick 2.9
import QtQuick.Controls 2.0
Item {
    id: root
    property alias textItem: t
    property alias text: t.text
    property alias textColor: t.color
    property alias containsMouse: area.containsMouse
    property alias containsPress: area.containsPress
    signal clicked();

    Text {
        id: t
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
    }

    MouseArea {
        id: area
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.clicked();
        cursorShape: Qt.PointingHandCursor
    }
}

