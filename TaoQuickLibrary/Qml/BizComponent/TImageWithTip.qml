import QtQuick 2.9
import QtQuick.Controls 2.5
import "../BasicComponent"
import "../Config"

Image {
    id: root

    property alias containsMouse: area.containsMouse
    property alias containsPress: area.containsPress

    property alias mouseAreaItem: area
    property alias toopTipItem: tip

    signal clicked()
    signal doubleClicked()

    ToolTip {
        id: tip
        width: root.width
        height: root.height
        delay: 300
        Image {
            source: root.source
        }
    }
    MouseArea {
        id: area
        anchors.fill: parent
        hoverEnabled: true
        onContainsMouseChanged: {
            if (containsMouse)
            {
                tip.x = mouseX
                tip.y = mouseY
                tip.open()
            }
            else
            {
                tip.close()
            }
        }
        onClicked: root.clicked()
        onDoubleClicked: root.doubleClicked()
    }
}
