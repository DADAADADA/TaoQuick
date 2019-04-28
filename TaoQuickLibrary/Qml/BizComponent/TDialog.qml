import QtQuick 2.9
import QtQuick.Controls 2.3
import "../Config"
import "../BasicComponent"
EPopup {
    id: root
    property alias backgroundItem: b
    background: Rectangle {
        id: b
        width: root.width
        height: root.height
        color: EConfig.eDialogBackground
        border.width: 1
        border.color: EConfig.eDialogBorder
    }
}
