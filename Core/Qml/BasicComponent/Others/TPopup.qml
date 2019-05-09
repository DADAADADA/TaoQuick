import QtQuick 2.9
import QtQuick.Controls 2.5
Item {
    id: root
    anchors.fill: parent
    property alias popupVisible: popup.visible
    property alias contentItem: popup.contentItem
    property color barColor: "white"
    property alias backgroundItem: background
    property color borderColor:  Qt.darker(barColor)
    property real borderWidth: 1
    //矩形旋转45度，一半被toolTip遮住(重合)，另一半三角形和ToolTip组成一个带箭头的ToolTip
    Rectangle {
        id: bar
        visible: popup.visible
        rotation: 45
        width: 10
        height: 10
        color: barColor
        //水平居中
        anchors.horizontalCenter: parent.horizontalCenter
        //垂直方向上，由ToolTip的y值，决定位置
        anchors.verticalCenter: popup.y > 0 ? parent.bottom : parent.top
        anchors.verticalCenterOffset: popup.y > 0 ? 5 : -5
    }
    Popup {
        id: popup
        padding: 0
        background: Rectangle {
            id: background
            color: barColor
            radius: 8
            border.color:borderColor
            border.width: borderWidth
        }
    }
    function show() {
        popup.x = -popup.width / 2 + root.width / 2
        popup.y = root.height
        popupVisible = true
    }
}
