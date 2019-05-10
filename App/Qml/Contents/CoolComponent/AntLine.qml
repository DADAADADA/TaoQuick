import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Shapes 1.12
Item {
    width: 800
    height: 600
    property int lineLen: 10
    property int rectWidth: 300
    property int rectHeight: 200

    enum Fruit {
        Apple,
        Banana,
        Orange
    }

    property int fruit: AntLine.Fruit.Apple
    Component.onCompleted: {
        console.log(fruit, AntLine.Orange, AntLine.Apple)
    }
}
