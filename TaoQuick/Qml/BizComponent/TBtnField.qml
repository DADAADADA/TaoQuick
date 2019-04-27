import QtQuick 2.9
import "../Config"
import "../BasicComponent/Text"
import "../BasicComponent/Button"
ETextField {
    property color borderColor: EConfig.eBorder
    property color borderHovered: EConfig.eHoveredBackGround
    property color borderSelected: EConfig.eSelectedBackGround

    property alias img: btn.img
    property alias hoveredImg: btn.hoveredImg
    property alias selectedImg: btn.selectedImg
    property alias disabledImg: btn.disabledImg
    property alias backgroundItem: backgroundRect
    property alias btnItem: btn

    property alias btnWidth: btn.width
    property alias btnHeight: btn.height
    property alias containsMouse: btn.containsMouse
    property alias containsPress: btn.containsPress

    property alias btnEnabled: btn.enabled
    signal btnClick()
    rightPadding: btn.width + 20
    background: Rectangle {
        id: backgroundRect
        anchors.fill: parent
        color: backgroundColor
        border.width: 1
        border.color: containsPress ? borderSelected : (containsMouse ? borderHovered : borderColor)
        THoverImageBtn {
            id: btn
            height: parent.height / 2
            width: height
            border.width: 0
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            onClick: btnClick()
        }
    }
}
