import QtQuick 2.9
import "../Config"
import "../BasicComponent"
ETextField {
    property color borderColor: EConfig.eBorder
    property color borderHovered: EConfig.eHoveredBackGround
    property color borderSelected: EConfig.eSelectedBackGround

    property string img
    property string hoveredImg
    property string selectedImg
    property alias imgWidth: image.width
    property alias imgHeight: image.height
    property alias containsMouse: trans.containsMouse
    property alias containsPress: trans.containsPress

    background: Rectangle {
        anchors.fill: parent
        color: backgroundColor
        border.width: 1
        border.color: containsPress ? borderSelected : (containsMouse ? borderHovered : borderColor)
        Image {
            id: image
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            source: containsPress ? selectedImg : (containsMouse ? hoveredImg : img)
        }
        ETransArea {
            id: trans
        }
    }
}
