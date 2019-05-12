import QtQuick 2.0
QtObject {

    property color titleBackground: "#c62f2f"
    property color background: "#f6f6f6"
    property color reserverColor: "#ffffff"
    property color textColor: "black"
    property color splitColor: "gray"

    property int currentTheme: 0
    onCurrentThemeChanged: {
        var t = themes.get(currentTheme)
        titleBackground = t.titleBackground
        background = t.background
        textColor = t.textColor
    }
    readonly property ListModel themes: ListModel {
        ListElement {
            name: qsTr("一品红")
            titleBackground: "#c62f2f"
            background: "#f6f6f6"
            textColor: "#5c5c5c"
        }
        ListElement {
            name: qsTr("高冷黑")
            titleBackground: "#191b1f"
            background: "#222225"
            textColor: "#adafb2"
        }
        ListElement {
            name: qsTr("淑女粉")
            titleBackground: "#faa0c5"
            background: "#f6f6f6"
            textColor: "#5c5c5c"
        }
        ListElement {
            name: qsTr("富贵金")
            titleBackground: "#fed98f"
            background: "#f6f6f6"
            textColor: "#5c5c5c"
        }
        ListElement {
            name: qsTr(" 清爽绿")
            titleBackground: "#58c979"
            background: "#f6f6f6"
            textColor: "#5c5c5c"
        }
        ListElement {
            name: qsTr("苍穹蓝")
            titleBackground: "#67c1fd"
            background: "#f6f6f6"
            textColor: "#5c5c5c"
        }
    }

    readonly property ListModel contentData: ListModel {
        ListElement { name: qsTr("首页"); title: qsTr("欢迎"); url: "qrc:/Qml/Contents/Welcome/Welcome.qml"; children: []}
        ListElement {
            name: qsTr("基础组件"); title: qsTr("基础组件"); children: [
                ListElement { name: qsTr("按钮组件"); title: qsTr("按钮组件"); url: "qrc:/Qml/Contents/BaseComponent/Buttons.qml"},
                ListElement { name: qsTr("拖动组件"); title: qsTr("拖动组件"); url: "qrc:/Qml/Contents/BaseComponent/Drags.qml"},
                ListElement { name: qsTr("渐变"); title: qsTr("渐变"); url: "qrc:/Qml/Contents/BaseComponent/Gradiants.qml"},
                ListElement { name: qsTr("下拉组件"); title: qsTr("下拉组件"); url: "qrc:/Qml/Contents/BaseComponent/DropDowns.qml"},
                ListElement { name: qsTr("标签页组件"); title: qsTr("标签页组件"); url: "qrc:/Qml/Contents/BaseComponent/Tabs.qml"},
                ListElement { name: qsTr("进度条组件"); title: qsTr("进度条组件"); url: "qrc:/Qml/Contents/BaseComponent/Progresses.qml"}
            ]
        }
        ListElement{
            name: qsTr("功能组件"); title: qsTr("功能组件");  children: [
                ListElement { name: qsTr("徽章"); title: qsTr("徽章"); url: "qrc:/Qml/Contents/FunctionComponent/Badge.qml"},
                ListElement { name: qsTr("二维码"); title: qsTr("二维码"); url: "qrc:/Qml/Contents/FunctionComponent/QRCode.qml"},
                ListElement { name: qsTr("IP地址"); title: qsTr("IP地址"); url: "qrc:/Qml/Contents/FunctionComponent/IPAddress.qml"},
                ListElement { name: qsTr("弹幕"); title: qsTr("IP地址"); url: "qrc:/Qml/Contents/FunctionComponent/Barrage.qml"}
            ]
        }
        ListElement{
            name: qsTr("酷炫组件"); title: qsTr("酷炫组件");  children: [
                ListElement { name: qsTr("滚动列表"); title: qsTr("滚动列表"); url: "qrc:/Qml/Contents/CoolComponent/ScrollList.qml"},
                ListElement { name: qsTr("元素流"); title: qsTr("元素流"); url: "qrc:/Qml/Contents/CoolComponent/CycleFlor.qml"},
                ListElement { name: qsTr("能量球"); title: qsTr("能量球"); url: "qrc:/Qml/Contents/CoolComponent/PowerBall.qml"},
                ListElement { name: qsTr("暗影之流"); title: qsTr("暗影之流"); url: "qrc:/Qml/Contents/CoolComponent/ArrowFlow.qml"},
                ListElement { name: qsTr("烟花漫舞"); title: qsTr("烟花漫舞"); url: "qrc:/Qml/Contents/CoolComponent/FireworksDance.qml"},
                ListElement { name: qsTr("哈雷彗星"); title: qsTr("哈雷彗星"); url: "qrc:/Qml/Contents/CoolComponent/HalleyComet.qml"},
                ListElement { name: qsTr("焰之欢愉"); title: qsTr("焰之欢愉"); url: "qrc:/Qml/Contents/CoolComponent/HappyFlame.qml"},
                ListElement { name: qsTr("霜之哀伤"); title: qsTr("霜之哀伤"); url: "qrc:/Qml/Contents/CoolComponent/SadFrost.qml"}
            ]
        }
    }
}
