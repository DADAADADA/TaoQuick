import QtQuick 2.0

Item {
    id: root
    width: 800
    height: 600
    property int inRadius: 200
    property int radiusOffset: 80
    property var colors: [
        "#ffffff",
        "#32a0d6",
        "#43b0e7",
        "#51c2f8",
        "#4ef4c3",
        "#4bf49a",
        "#4ee366",
        "#ffde00",
        "#ffd103",
        "#ffc101",
        "#ff9b38",
        "#ff9329",
        "#f47032",
        "#f57241",
        "#f25650",
        "#e44e48",
        "#d64172",
        "#c13fa6",
        "#a93190",
    ]
    property int currentIndex: 0
    property int count: 5
    Repeater {
        model: colors
        Rectangle {
            width: radius * 2
            height: radius * 2
            radius: inRadius + radiusOffset * (index - currentIndex)
            color: currentIndex === index ? modelData : "transparent"
            anchors.centerIn: root
            border.width: radiusOffset
            border.color: modelData
            visible: index >= currentIndex && index  <= currentIndex + count
            Behavior on radius { SmoothedAnimation {duration: 200 }}
        }
    }
    MouseArea {
        anchors.fill: parent
        onWheel: {
            var t = 0
            if (wheel.angleDelta.y > 100) {
                t = currentIndex + 1
                if (t < colors.length - count) {
                    currentIndex = t
                }
            } else if (wheel.angleDelta.y < -100) {
                t = currentIndex - 1
                if (t >= 0) {
                    currentIndex = t
                }
            }
        }
    }
}
