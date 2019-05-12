import QtQuick 2.9
import QtQuick.Controls 2.5
import "qrc:/Tao/Qml"
Rectangle {
    Row {
        anchors.left: parent.left
        height: parent.height
        spacing: 4
        Image {
            source: "qrc:/Image/logo/milk.png"
        }
        Text {
            id: t
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 28
            font.bold: true
            text: qsTr("TaoQuick")
        }
    }

    property bool isMaxed: false
    Row {
        id: controlButtons
        height: 20
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 12
        spacing: 10
        TImageBtn {
            width: 20
            height: 20
            imageUrl: containsMouse ? "qrc:/Image/Window/minimal_white.png" : "qrc:/Image/Window/minimal_gray.png"
            onClicked: {
                view.showMinimized()
            }
        }
        TImageBtn {
            width: 20
            height: 20
            visible: !isMaxed
            imageUrl: containsMouse ? "qrc:/Image/Window/max_white.png" : "qrc:/Image/Window/max_gray.png"
            onClicked: {
                view.showMaximized()
                isMaxed = true
            }
        }
        TImageBtn {
            width: 20
            height: 20
            visible: isMaxed
            imageUrl: containsMouse ? "qrc:/Image/Window/normal_white.png" : "qrc:/Image/Window/normal_gray.png"
            onClicked: {
                view.showNormal()
                isMaxed = false
            }
        }
        TImageBtn {
            width: 20
            height: 20
            imageUrl: containsMouse ? "qrc:/Image/Window/close_white.png" : "qrc:/Image/Window/close_gray.png"
            onClicked: {
                view.close()
            }
        }
    }
    Rectangle {
        id: splitLine
        height: 16
        width: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: controlButtons.left
        anchors.rightMargin: 10
    }
    Row {
        height: 20
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: splitLine.left
        anchors.rightMargin: 10
        spacing: 10
        TImageBtn {
            width: 20
            height: 20
            anchors.verticalCenter: parent.verticalCenter
            imageUrl: containsMouse ? "qrc:/Image/Window/skin_white.png" : "qrc:/Image/Window/skin_gray.png"
            onClicked: {
                skinBox.popupVisible = true
            }
            TPopup {
                id: skinBox
                contentItem: Item {
                    width: 300
                    height: 200
                    Grid {
                        anchors.fill: parent
                        columnSpacing: 10
                        rowSpacing: 20
                        Repeater {
                            model: ["#212124", "#c62f2f", "#f992bd", "#66c0fd", "#57c578", "#f3b963"]
                            Rectangle {
                                width: 50
                                height: 50
                                color: modelData
                            }
                        }
                    }
                }
            }
        }
        TImageBtn {
            width: 20
            height: 20
            anchors.verticalCenter: parent.verticalCenter
            imageUrl: containsMouse ? "qrc:/Image/Window/lang_white.png" : "qrc:/Image/Window/lang_gray.png"
            onClicked: {
                notifyBox.notify("change language")
                pop.show()
            }
            TPopup {
                id: pop
                barColor: "lightblue"
                backgroundWidth: 100
                backgroundHeight: 80
                contentItem: ListView {
                    id: langListView
                    anchors.fill: parent
                    anchors.margins: 2
                    model: ["中文简体", "English"]
                    delegate: TTextBtn {
                        width: langListView.width
                        height: 36
                        text: modelData
                        color: containsMouse ? "lightgray" : pop.barColor
                        onClicked: {
                            pop.hide()
                            view.reTrans(modelData)
                        }
                    }
                }
            }
//            Item {
//                id: bar
//                anchors.fill: parent
//                property color barColor: "#eea2a4"
//                Rectangle {
//                    color: bar.barColor
//                    width: 16
//                    height: 16
//                    rotation: 45
//                    visible: pop.visible
//                    anchors.horizontalCenter: parent.horizontalCenter
//                    anchors.verticalCenter: parent.bottom
//                    anchors.verticalCenterOffset: 20
//                }
//                Popup {
//                    id: pop
//                    x: (bar.width - width) / 2
//                    y: bar.height + 20
//                    width: 200
//                    height: 160
//                    background: Rectangle {
//                        color: bar.barColor
//                    }
//                }
//            }
//            TToolTip {
//                id: tip
//                text: "Hello"
//            }
        }
    }
    //    ListModel {
    //        id: skinModel
    //        ListElement {name: qsTr("暗玉紫"); color: "#5c2223"}
    //        ListElement {name: qsTr("牡丹红"); color: "#eea2a4"}
    //        ListElement {name: qsTr("栗紫"); color: "#5a191b"}
    //        ListElement {name: qsTr("香叶红"); color: "#f07c82"}
    //        ListElement {name: qsTr("葡萄酱紫"); color: "#5a1216"}
    //        ListElement {name: qsTr("艳红"); color: "#ed5a65"}
    //        ListElement {name: qsTr("玉红"); color: "#c04851"}
    //    }
    //    ComboBox {
    //        anchors.right: parent.right
    //        anchors.top: parent.top
    //        model: skinModel
    //        textRole: "name"
    //        onCurrentIndexChanged: {
    //            TConfig.background = model.get(currentIndex).color
    //            console.log(TConfig.background )
    //        }
    //    }
}
