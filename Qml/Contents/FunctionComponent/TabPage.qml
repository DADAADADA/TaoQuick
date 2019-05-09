import QtQuick 2.0
import QtQuick.Controls 2.0
Item {
    width: 800
    height: 600
    property int currentPage: 0
    readonly property var pages: ["落霞与孤鹜齐飞", "秋水共长天一色", "多情自古空余恨", "此恨绵绵无绝期"]
    property var pageOpened: [false, false, false, false]
    Button {
        text: "AddOnePage"
        onClicked: {
            for (var i = 0; i < pageOpened.length; ++i) {
                if (pageOpened[i] === false)
                {
                    pageOpened[i] = true
                    pageOpened = pageOpened //这个设定太蠢，数组单个元素修改不会有change信号。需要数组重新赋值为自己，触发change信号
                    currentPage = i
                    break
                }
            }
        }
    }
    Row {
        y: 40
        width: 160
        height: 30
        Repeater {
            model: pages
            Item {
                width: 120
                height: 30
                visible: pageOpened[index]
                Rectangle {
                    width: 100
                    height: 30

                    color: currentPage === index ? "red" : "gray"
                    Text {
                        text: modelData
                        anchors.centerIn: parent
                    }
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: {
                            currentPage = index
                        }
                    }
                }
                Rectangle {
                    x: 100
                    width: 20
                    height: 30
                    color: currentPage === index ? "red" : "gray"
                    Text {
                        anchors.centerIn: parent
                        text: "X"
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            pageOpened[index] = false
                            pageOpened = pageOpened
                            for (var i = 0; i < pageOpened.length; ++i) {
                                if (pageOpened[i] === true)
                                {
                                    currentPage = i
                                    break
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Rectangle {
        width: parent.width
        height: parent.height - y
        y: 70
        color: "blue"
        visible: pageOpened[0] && currentPage === 0
    }
    Rectangle {
        width: parent.width
        y: 70
        height: parent.height - y
        color: "yellow"
        visible: pageOpened[1] && currentPage === 1
    }
    Rectangle {
        width: parent.width
        y: 70
        height: parent.height - y
        color: "green"
        visible: pageOpened[2] && currentPage === 2
    }
    Rectangle {
        width: parent.width
        y: 70
        height: parent.height - y
        color: "black"
        visible: pageOpened[3] && currentPage === 3
    }
}
