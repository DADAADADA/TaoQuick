import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Shapes 1.12
Item {
    width: 800
    height: 600
    property int lineLen: 10
    property int rectWidth: 300
    property int rectHeight: 200

//    Repeater {
//        model: 40
//        RectMoveLine {
//            width: 300
//            height: 200
//            interval: index
//        }
//    }
    RectMoveLine {
        x: 20
        y: 20
        width: 300
        height: 200
        interval: 100
        Component.onCompleted: {
            run()
        }
    }
}
