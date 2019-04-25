import QtQuick 2.9
import "../BasicComponent"
import "../Config"
EOpacityImgBtn {
    property color btnColor : EConfig.eBackGround
    property color eHoveredColor: EConfig.eHoveredBackGround
    property color eActivedColor: EConfig.eSelectedBackGround
    property color eNormalColor: EConfig.eDisabledBackground
    property bool isActived: false

    color: isActived? eActivedColor : ( containsMouse? eHoveredColor : eNormalColor)
    border.width: 1
    border.color: EConfig.eGridBtnBorder
    radius: 2
    imageColor: EConfig.eOpacityImgColor
}
