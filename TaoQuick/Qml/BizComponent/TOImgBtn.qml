import QtQuick 2.9
import "../BasicComponent"
import "../Config"
EOpacityImgBtn {
    property color imgColor
    property color hoveredImgColor
    property color selectedImgColor
    property color disabledImgColor
    color: "transparent"
    border.width: 1
    border.color: EConfig.eGridBtnBorder
    radius: 2

    imageColor: enabled ? (containsPress ? selectedImgColor : (containsMouse ? hoveredImgColor : imgColor)) : disabledImgColor
}
