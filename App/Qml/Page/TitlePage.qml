import QtQuick 2.9
import QtQuick.Controls 2.5
import "qrc:/Tao/Qml/BasicComponent/Text"
import "qrc:/Tao/Qml/Config"
Item{
    property alias title: t.text
    TText {
        id: t

        anchors.centerIn: parent
        font.pixelSize: 28
        color: TConfig.lightGreen
        font.bold: true
    }
    ListModel {
        id: skinModel
        ListElement {name: qsTr("暗玉紫"); color: "#5c2223"}
        ListElement {name: qsTr("牡丹红"); color: "#eea2a4"}
        ListElement {name: qsTr("栗紫"); color: "#5a191b"}
        ListElement {name: qsTr("香叶红"); color: "#f07c82"}
        ListElement {name: qsTr("葡萄酱紫"); color: "#5a1216"}
        ListElement {name: qsTr("艳红"); color: "#ed5a65"}
        ListElement {name: qsTr("玉红"); color: "#c04851"}
    }
    ComboBox {
        anchors.right: parent.right
        anchors.top: parent.top
        model: skinModel
        textRole: "name"
        onCurrentIndexChanged: {
            TConfig.background = model.get(currentIndex).color
            console.log(TConfig.background )
        }
    }
}
