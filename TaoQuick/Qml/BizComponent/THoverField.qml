import QtQuick 2.9
import "../Config"
import "../BasicComponent"
ETextField {
    property color borderColor: EConfig.eBorder
    property color borderHovered: EConfig.eHoveredBackGround
    property color borderSelected: EConfig.eSelectedBackGround

    property alias containsMouse: trans.containsMouse
    property alias containsPress: trans.containsPress

    background: Rectangle {
        anchors.fill: parent
        color: backgroundColor
        border.width: 1
        border.color: containsPress ? borderSelected : (containsMouse ? borderHovered : borderColor)
        ETransArea {
            id: trans
        }
    }
}
