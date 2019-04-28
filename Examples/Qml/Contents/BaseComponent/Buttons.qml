import QtQuick 2.9
import QtQuick.Controls 2.0
import "qrc:/Tao/Qml/Config"
import "qrc:/Tao/Qml/BasicComponent/Text"
import "qrc:/Tao/Qml/BasicComponent/Others"
import "qrc:/Tao/Qml/BasicComponent/Button"
Item {
    anchors.fill: parent
    Grid {
        width: parent.width - 20
        x: 10
        y: 10
        rowSpacing: 20
        columnSpacing: 10
        columns: 3
        TTextBtn {
            width: 80
            height: 40
            text: qsTr("文本按钮")
            onClick: {
                console.log("你按下了文本按钮")
            }
        }
        TTextBtn {
            width: 120
            height: 40
            radius: 20
            text: qsTr("圆角文本按钮")
            onClick: {
                console.log("你按下了圆角文本按钮")
            }
        }
        TTextBtn {
            width: 120
            height: 40
            radius: 20
            text: qsTr("圆角文本按钮")
            textColor: TConfig.red
            onClick: {
                console.log("你按下了圆角文本按钮")
            }
        }
        TImageBtn {
            width: 48
            height: 48
            normalUrl: "qrc:/Image/Button/Button.png"
            hoveredUrl: "qrc:/Image/Button/Button_Hovered.png"
            pressedUrl: "qrc:/Image/Button/Button_Pressed.png"
            disabledUrl: "qrc:/Image/Button/Button_Disabled.png"
            enabled: check.checked
            onClick: {
                console.log("你按下了图片按钮")
            }
        }
        CheckBox {
            id: check
            checked: true
            text: qsTr("禁用左边的图片按钮")
        }
        TImageBtn {
            id: imageBtn
            width: 48
            height: 48
            radius: width / 2
            normalUrl: "qrc:/Image/Button/Button.png"
            hoveredUrl: "qrc:/Image/Button/Button_Hovered.png"
            pressedUrl: "qrc:/Image/Button/Button_Pressed.png"
            disabledUrl: "qrc:/Image/Button/Button_Disabled.png"
            enabled: check.checked
            onClick: {
                console.log("你按下了图片按钮")
            }
        }

        TImgTextBtn {
            width: 100
            height: 48
            normalUrl: "qrc:/Image/Button/Button.png"
            hoveredUrl: "qrc:/Image/Button/Button_Hovered.png"
            pressedUrl: "qrc:/Image/Button/Button_Pressed.png"
            disabledUrl: "qrc:/Image/Button/Button_Disabled.png"
            text: qsTr("按钮")
            color: TConfig.cyan
            onClick: {
                console.log("你按下了图片+文字按钮")
            }
        }
    }
}
