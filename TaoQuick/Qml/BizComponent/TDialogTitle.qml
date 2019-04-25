import QtQuick 2.9
import QtQuick.Controls 2.3
import "../Config"
import "../BasicComponent"
Rectangle {
    id: root
    property alias title: t.text
    property alias titleItem: t

    property alias closeBtnItem: b

    signal click()
    anchors.margins: 1
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    height: 30
    color: EConfig.eDialogTitle

    EText {
        id: t
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.verticalCenter: parent.verticalCenter
        color: EConfig.eDialogTitleText
    }
    EHoverImageBtn {
        id: b
        width: 28
        height: 28

        img: "qrc:/EditorCommon/images/head_title_ic_close.png"
        hoveredImg: "qrc:/EditorCommon/images/head_title_ic_hover.png"
        selectedImg: "qrc:/EditorCommon/images/head_title_ic_selected.png"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        border.width: 0
        onClick: root.click()
    }
}
