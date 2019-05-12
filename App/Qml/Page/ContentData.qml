import QtQuick 2.0
ListModel {
    ListElement { name: qsTr("首页"); title: qsTr("欢迎"); url: "qrc:/Qml/Contents/Welcome/Welcome.qml"; children: []}
    ListElement {
        name: qsTr("基础组件"); title: qsTr("基础组件"); children: [
            ListElement { name: qsTr("按钮组件"); title: qsTr("按钮组件"); url: "qrc:/Qml/Contents/BaseComponent/Buttons.qml"},
            ListElement { name: qsTr("拖动组件"); title: qsTr("拖动组件"); url: "qrc:/Qml/Contents/BaseComponent/Drags.qml"},
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
