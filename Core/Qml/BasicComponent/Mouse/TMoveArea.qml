import QtQuick 2.9

MouseArea {
    id: root

    property real lastX: 0
    property real lastY: 0
    property bool mask: false
    property var control: parent

    onPressed: {
        lastX = mouseX;
        lastY = mouseY;
    }
    onContainsMouseChanged: {
        if (containsMouse) {
            cursorShape = Qt.SizeAllCursor;
        } else {
            cursorShape = Qt.ArrowCursor;
        }
    }
    onPositionChanged: {
        if (!mask && pressed && control)
        {
            control.x +=mouseX - lastX
            control.y +=mouseY - lastY
        }
    }
}
