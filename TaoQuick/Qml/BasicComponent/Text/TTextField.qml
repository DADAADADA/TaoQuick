import QtQuick 2.9
import QtQuick.Controls 2.0
import "../Config"
TextField {
    id: textInput

    property color backgroundColor: EConfig.eInputFieldBackGround
    property color backgroundBorderColor: EConfig.eInputFieldBorder
    property real backgroundBorderWidth: 1
    font.family: EConfig.fontFamily
    font.weight: EConfig.fontWeight
    font.pixelSize: EConfig.textPixelSize
    color: EConfig.textColor
    selectByMouse: true
    selectionColor: EConfig.eSelectedText
    verticalAlignment: Text.AlignVCenter
    background: Rectangle {
        anchors.fill: parent
        color: backgroundColor
        border.color: backgroundBorderColor
        border.width: backgroundBorderWidth
    }

}

