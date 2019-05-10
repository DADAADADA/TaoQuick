import QtQuick 2.9
Item {
    anchors.fill: parent
    property var target : {
        const t =  {
            x: 10,
            y: 20
        }
        return t
    }
    Component.onCompleted: {
        console.log(target.x, target.y)
    }
}
