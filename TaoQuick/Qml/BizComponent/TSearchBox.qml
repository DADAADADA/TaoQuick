import QtQuick 2.9
import QtQuick.Controls 1.4 as QC14
import QtQuick.Controls.Styles 1.4 as QCS14
import "../BasicComponent"
import "../Config"

Rectangle {
    id: searchBox
    property alias text: t.text
    property color borderColor: EConfig.eSelectedBackGround
    property color borderHovered: EConfig.eGlobalBackGround
    property color borderSelected: EConfig.eGlobalBackGround
    property bool containsMouse
    property bool containsPress

    border.width: 1
    border.color: containsPress ? borderSelected : (containsMouse ? borderHovered : borderColor)
    color: EConfig.eBackGround
    EImageBtn {
        id: icon
        imageUrl: "qrc:/EditorCommon/images/bar_ic_seach.png"
        imageHeight: parent.height / 2
        imageWidth:  imageHeight
        width: imageWidth
        height: imageHeight
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 11
        color: "transparent"
    }

    //Qt 5.12 support placeholderTextColor. so use QC1.4 before use Qt5.12
    //placeholderTextColor: EConfig.ePlaceholderTextColor
    QC14.TextField {
        id: t
        height: parent.height
        anchors.left: icon.right
        anchors.leftMargin: 7
        anchors.right: parent.right
        placeholderText: qsTr("请输入关键字")
        font.family: EConfig.fontFamily
        font.weight: EConfig.fontWeight
        font.pixelSize: EConfig.textPixelSize
        textColor: EConfig.textColor
        selectByMouse: true

        verticalAlignment: Text.AlignVCenter
        style: QCS14.TextFieldStyle {
            background: Rectangle {
                anchors.fill: parent
                color: "transparent"
                ETransArea {
                    id: trans
                    onContainsMouseChanged: {
                        searchBox.containsMouse = containsMouse
                    }
                    onContainsPressChanged: {
                        searchBox.containsPress = containsPress
                    }
                }
            }
            selectionColor: EConfig.eSelectedText
            placeholderTextColor: EConfig.ePlaceholderTextColor
        }
    }
}
