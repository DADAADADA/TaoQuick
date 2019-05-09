import QtQuick 2.0
import QtQuick.Controls 2.5
Item {
    id: root
    property alias interval: timer.interval
    Rectangle {
        id: line
        width: 30
        height: 1
        color: "green"
    }
    PathAnimation {
        id: pathAnimation
        target: line
        loops: -1
        duration: 10000
        orientation: PathAnimation.RightFirst
        path: Path{
            startX: 0
            startY: 0
            PathLine {x: root.width; y:0}
            PathLine { x: root.width; y: root.height}
            PathLine { x: 0; y: root.height}
            PathLine { x: 0; y: 0}
        }
    }
    function run() {
        timer.start()
    }

    Timer {
        id: timer
        repeat: false
        running: false
        triggeredOnStart: false
        onTriggered: {
            pathAnimation.start();
        }
    }
}
