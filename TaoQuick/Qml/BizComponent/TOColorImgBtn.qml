import QtQuick 2.9
import "../BasicComponent"
import "../Config"
EOpacityImgBtn {
    property color btnColor : EConfig.eBackGround
    property color hoveredBtnColor: EConfig.eHoveredBackGround
    property color selectedBtnColor: EConfig.eSelectedBackGround
    property color disabledBtnColor: EConfig.eDisabledBackground

    color: enabled ? (containsPress ? selectedBtnColor : (containsMouse ? hoveredBtnColor : btnColor)) : disabledBtnColor
    border.width: 1
    border.color: EConfig.eGridBtnBorder
    radius: 2
    imageColor: EConfig.eOpacityImgColor
}
