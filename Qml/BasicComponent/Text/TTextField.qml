import QtQuick 2.9
import QtQuick.Controls 2.0
import "../../Config"
TextField {
    id: textInput

    property color backgroundColor: TConfig.inputStyle.backgroundColor
    property color borderColor: TConfig.inputStyle.borderColor
    property color borderFocusColor: TConfig.inputStyle.borderFocusColor
    property real borderWidth: 1
    font.family: TConfig.textStyle.fontFamily
    font.pixelSize: TConfig.textStyle.fontPixel
    color: TConfig.textStyle.normalColor
    selectByMouse: true
    focus: true
    selectedTextColor: TConfig.inputStyle.selectedColor
    selectionColor: TConfig.inputStyle.selectionColor
    verticalAlignment: Text.AlignVCenter
    background: Rectangle {
        anchors.fill: parent
        color: backgroundColor
        border.color: textInput.focus ? borderFocusColor : borderColor
        border.width: borderWidth
    }
}

