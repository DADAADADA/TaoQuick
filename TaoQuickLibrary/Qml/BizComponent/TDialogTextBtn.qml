import QtQuick 2.9
import "../Config"
import "../BasicComponent"
ETextBtn {
    color: containsPress ? EConfig.eDialogBtnSelected : (containsMouse ? EConfig.eDialogBtnHovered : EConfig.eDialogBtn)
    border.width: (containsPress || containsMouse) ? 0 : 1
    border.color: EConfig.eDialogBtnBorder
    radius: 2
    textColor: EConfig.eDialogBtnText
    textAnchors.horizontalCenter: textItem.parent.horizontalCenter
    textItem.font.weight: Font.DemiBold
    textHorizontalAlignment: Text.AlignHCenter
    opacity: enabled ? 1.0 : 0.6
}
