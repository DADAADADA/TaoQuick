import QtQuick 2.9
import QtQuick.Controls 2.0
import "../../Config"
TextArea {
    id: textArea

    property color backgroundColor: TConfig.inputStyle.backgroundColor

    font.family: TConfig.textStyle.fontFamily
    color: TConfig.textStyle.normalColor
    font.pixelSize: TConfig.textStyle.fontPixel
    verticalAlignment: Text.AlignVCenter
    focus: true
    hoverEnabled: true
    selectByMouse: true
    selectedTextColor: TConfig.inputStyle.selectedColor
    selectionColor: TConfig.inputStyle.selectionColor
    wrapMode: TextEdit.Wrap
    background: Rectangle{
        anchors.fill: parent
        color: backgroundColor
    }
}
