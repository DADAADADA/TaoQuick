import QtQuick 2.9
import QtQuick.Controls 2.5
Item {
    width: 800
    height: 600
    Grid {
        anchors.fill: parent
        columns: 10
        Repeater {
            model: 10
            Rectangle {
                width: 30
                height: 30
                color: Qt.lighter("green", (index+ 1 ) / 10)
            }
        }
        Repeater {
            model: 10
            Rectangle {
                width: 30
                height: 30
                color: Qt.darker("green", (index+ 1 ) / 10)
            }
        }
    }

    Rectangle {
        y: 300
        width: 80
        height: 40
        color: area.containsPress ? Qt.darker("green", 1.2) : (area.containsMouse ? Qt.lighter("green", 1.2) : "green")
        MouseArea {
            id: area
            anchors.fill: parent
            hoverEnabled: true
        }
    }
}
