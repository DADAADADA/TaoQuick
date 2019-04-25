import QtQuick 2.9
import QtQuick.Controls 2.0
import "../BasicComponent"
import "../Config"
EText {
    id: root

    property alias containsMouse: hoverHandler.hovered
    property alias containsPress: area.containsPress

    property alias mouseAreaItem: area
    property alias toopTipItem: tip
    signal clicked()
    signal doubleClicked()

    ToolTip {
        id: tip
        delay: 300
        text: root.text
    }
    HoverHandler {
        id: hoverHandler
        onHoveredChanged: {
            if (hovered)
            {
                tip.open()
            }
            else
            {
                tip.close()
            }
        }
    }
    MouseArea {
        id: area
        anchors.fill: parent
        onClicked: root.clicked()
        onDoubleClicked: root.doubleClicked()
    }
}
