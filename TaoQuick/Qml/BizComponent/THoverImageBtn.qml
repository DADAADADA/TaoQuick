import QtQuick 2.9
import "../BasicComponent"
import "../Config"
EImageBtn {
    color: "transparent"
    border.width: 1
    border.color: EConfig.eGridBtnBorder
    radius: 2
    property string img
    property string hoveredImg
    property string selectedImg
    property string disabledImg

    imageUrl: enabled ? (containsPress ? selectedImg : (containsMouse ? hoveredImg : img)) : disabledImg
}
