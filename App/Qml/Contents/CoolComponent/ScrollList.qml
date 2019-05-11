import QtQuick 2.9
import "qrc:/Tao/Qml/"
Item {

    ListView {
        id: listView
        anchors.centerIn: parent
        width: 300
        height: count * rowHeight
        model: ["Apple", "Windows", "Ubuntu", "Red Hat", "Linux Mint", "Fedora"]
        property int rowHeight: 40
        property int currentRowIndex: -1
        delegate: Item {
            width: listView.width
            height: listView.rowHeight
            Rectangle {
                id: scrollRect
                x: width * 2
                width: parent.width
                height: parent.height
                color: TConfig.lightBlue
                Text {
                    anchors.centerIn: parent
                    text: modelData
                }
                NumberAnimation {
                    target: scrollRect
                    running: listView.currentRowIndex === index
                    property: "x"
                    to: 0
                    duration: 300
                    loops: 1
                }
            }
        }
        Timer {
            id: timer
            interval: 300
            repeat: true
            onTriggered: {
                listView.currentRowIndex++
                if (listView.currentRowIndex === listView.count) {
                    timer.stop()
                }
            }
        }
        Component.onCompleted: {
            timer.start()
        }
    }
}
