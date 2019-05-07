import QtQuick 2.9

MouseArea {
    id: root

    property real lastX: 0
    property real lastY: 0
    property bool mask: false
    signal move(real xOffset, real yOffset)

    cursorShape: Qt.OpenHandCursor
    onPressed: {
        lastX = mouseX;
        lastY = mouseY;
    }

    onPositionChanged: {
        if (!mask && pressed)
        {
            root.move(mouseX - lastX, mouseY - lastY)
        }
    }
}
