import QtQuick 2.0
QtObject{
    property var contentData:[
        { name: QT_TR_NOOP("首页"), title: QT_TR_NOOP("欢迎"), url: "qrc:/Qml/Contents/Welcome/Welcome.qml", children: []},
        {
            name: QT_TR_NOOP("基础组件"), title: QT_TR_NOOP("基础组件"),  children: [
                { name: QT_TR_NOOP("按钮组件"), title: QT_TR_NOOP("按钮组件"), url: "qrc:/Qml/Contents/BaseComponent/Buttons.qml"},
                { name: QT_TR_NOOP("拖动组件"), title: QT_TR_NOOP("拖动组件"), url: "qrc:/Qml/Contents/BaseComponent/Drags.qml"},
                { name: QT_TR_NOOP("下拉组件"), title: QT_TR_NOOP("下拉组件"), url: "qrc:/Qml/Contents/BaseComponent/DropDowns.qml"},
                { name: QT_TR_NOOP("标签页组件"), title: QT_TR_NOOP("标签页组件"), url: "qrc:/Qml/Contents/BaseComponent/Tabs.qml"},
                { name: QT_TR_NOOP("进度条组件"), title: QT_TR_NOOP("进度条组件"), url: "qrc:/Qml/Contents/BaseComponent/Progresses.qml"},
            ]
        },
        {
            name: QT_TR_NOOP("功能组件"), title: QT_TR_NOOP("功能组件"),  children: [
                { name: QT_TR_NOOP("徽章"), title: QT_TR_NOOP("徽章"), url: "qrc:/Qml/Contents/FunctionComponent/Badge.qml"},
                { name: QT_TR_NOOP("二维码"), title: QT_TR_NOOP("二维码"), url: "qrc:/Qml/Contents/FunctionComponent/QRCode.qml"},
                { name: QT_TR_NOOP("IP地址"), title: QT_TR_NOOP("IP地址"), url: "qrc:/Qml/Contents/FunctionComponent/IPAddress.qml"},
                { name: QT_TR_NOOP("弹幕"), title: QT_TR_NOOP("IP地址"), url: "qrc:/Qml/Contents/FunctionComponent/Barrage.qml"},
            ]
        },
        {
            name: QT_TR_NOOP("酷炫组件"), title: QT_TR_NOOP("酷炫组件"),  children: [
                { name: QT_TR_NOOP("滚动列表"), title: QT_TR_NOOP("滚动列表"), url: "qrc:/Qml/Contents/CoolComponent/ScrollList.qml"},
                { name: QT_TR_NOOP("元素流"), title: QT_TR_NOOP("元素流"), url: "qrc:/Qml/Contents/CoolComponent/CycleFlor.qml"},
                { name: QT_TR_NOOP("能量球"), title: QT_TR_NOOP("能量球"), url: "qrc:/Qml/Contents/CoolComponent/PowerBall.qml"},
                { name: QT_TR_NOOP("暗影之流"), title: QT_TR_NOOP("暗影之流"), url: "qrc:/Qml/Contents/CoolComponent/ArrowFlow.qml"},
                { name: QT_TR_NOOP("烟花漫舞"), title: QT_TR_NOOP("烟花漫舞"), url: "qrc:/Qml/Contents/CoolComponent/FireworksDance.qml"},
                { name: QT_TR_NOOP("哈雷彗星"), title: QT_TR_NOOP("哈雷彗星"), url: "qrc:/Qml/Contents/CoolComponent/HalleyComet.qml"},
                { name: QT_TR_NOOP("焰之欢愉"), title: QT_TR_NOOP("焰之欢愉"), url: "qrc:/Qml/Contents/CoolComponent/HappyFlame.qml"},
                { name: QT_TR_NOOP("霜之哀伤"), title: QT_TR_NOOP("霜之哀伤"), url: "qrc:/Qml/Contents/CoolComponent/SadFrost.qml"},
            ]
        }
    ]
}
