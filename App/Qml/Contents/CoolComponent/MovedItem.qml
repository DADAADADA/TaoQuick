import QtQuick 2.9
import QtQuick.Controls 2.5
Item {
    width: 800
    height: 600

    Rectangle {
        id: moveItem

        //注意拖动组件不要使用锚布局，而是使用相对坐标
        x: 100
        y: 100
        width: 300
        height: 200

        color: "lightblue"
        MouseArea {
            anchors.fill: parent
            property real lastX: 0
            property real lastY: 0
            onPressed: {
                lastX = mouseX
                lastY = mouseY
            }
            onPositionChanged: {
                if (pressed) {
                    moveItem.x += mouseX - lastX
                    moveItem.y += mouseY - lastY
                }
            }
        }
    }
}
