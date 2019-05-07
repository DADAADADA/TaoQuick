import QtQuick 2.9
import QtQuick.Controls 2.0
import "../../Config"
TextArea {
    id: textArea

    property color backgroundColor: TConfig.inputStyle.backgroundColor
    property color borderColor: TConfig.inputStyle.borderColor
    property color borderFocusColor: TConfig.inputStyle.borderFocusColor
    property real borderWidth: 1

    font.family: TConfig.textStyle.fontFamily
    color: TConfig.textStyle.normalColor
    font.pixelSize: TConfig.textStyle.fontPixel
    verticalAlignment: Text.AlignVCenter
    focus: true
    selectByMouse: true
    selectedTextColor: TConfig.inputStyle.selectedColor
    selectionColor: TConfig.inputStyle.selectionColor
    wrapMode: TextEdit.Wrap
    background: Rectangle{
        anchors.fill: parent
        color: backgroundColor
        border.color: textArea.focus ? borderFocusColor : borderColor
        border.width: borderWidth
    }
}
