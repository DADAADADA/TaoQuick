import QtQuick 2.9
import QtQuick.Controls 2.0
import "../Config"
TextField {
    id: textArea

    property color backgroundColor: EConfig.eBackGround

    font.family: EConfig.fontFamily
    font.weight: EConfig.fontWeight
    font.pixelSize: EConfig.textPixelSize
    color: EConfig.textColor

    verticalAlignment: Text.AlignVCenter
    focus: true
    hoverEnabled: true
    selectByMouse: true
    selectionColor: EConfig.eSelectedText

    background: Rectangle{
        anchors.fill: parent
        color: backgroundColor
    }
}
