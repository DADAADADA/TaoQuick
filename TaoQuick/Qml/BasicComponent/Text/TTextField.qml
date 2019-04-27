import QtQuick 2.9
import QtQuick.Controls 2.0
import "../../Config"
TextField {
    id: textInput

    property color backgroundColor: TConfig.inputStyle.backgroundColor
    property color backgroundBorderColor: TConfig.inputStyle.backgroundBorderColor
    property real backgroundBorderWidth: 1
    font.family: TConfig.textStyle.fontFamily
    font.pixelSize: TConfig.textStyle.fontPixel
    color: TConfig.textStyle.normalColor
    selectByMouse: true
    focus: true
    hoverEnabled: true
    selectedTextColor: TConfig.inputStyle.selectedColor
    selectionColor: TConfig.inputStyle.selectionColor
    verticalAlignment: Text.AlignVCenter
    background: Rectangle {
        anchors.fill: parent
        color: backgroundColor
        border.color: backgroundBorderColor
        border.width: backgroundBorderWidth
    }
}

