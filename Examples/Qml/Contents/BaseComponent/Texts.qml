import QtQuick 2.9
import "qrc:/Tao/Qml/Config"
import "qrc:/Tao/Qml/BasicComponent/Text"
Item {
    id: root
    anchors.fill: parent
    Grid {
        width: parent.width - 20
        x: 10
        y: 10
        rowSpacing: 20
        columnSpacing: 5
        columns: 2
        TText {
            width: parent.width / 2
            text: qsTr("这是一行普通的文本")
        }
        TText {
            width: parent.width / 2
            text: qsTr("这也是一行普通的文本, 换个颜色")
            color: TConfig.red
        }
        TTextField {
            width: parent.width / 2
            text: qsTr("这是一行可以编辑的文本")
        }
        TTextField {
            width: parent.width / 2
            text: qsTr("这也是一行可以编辑的文本, 换个背景色和边框色")
            backgroundColor: TConfig.cyan
            borderColor: TConfig.purple
            borderFocusColor: TConfig.pink
            borderWidth: 4
        }
        TTextArea {
            width: parent.width / 2
            text: qsTr("这是很多行可编辑的文本\n这是很多行可编辑的文本\n这是很多行可编辑的文本\n")
        }
        TTextArea {
            width: parent.width / 2
            text: qsTr("这也是很多行可编辑的文本,配色不同\n这也是很多行可编辑的文本,配色不同\n这也是很多行可编辑的文本,配色不同\n")
            backgroundColor: TConfig.orange
            borderColor: TConfig.steelGreen
            borderFocusColor: TConfig.darkGreen
            borderWidth: 4
        }
    }
}
