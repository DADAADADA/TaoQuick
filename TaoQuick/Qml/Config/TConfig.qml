pragma Singleton
import QtQuick 2.9
import QtQml 2.0
QtObject {
    id: tConfig
    objectName: "TConfig"

    //Flat-UI theme reference http://designmodo.github.io/Flat-UI/
    readonly property color transparent: "transparent"
    readonly property color blue: "#007bff"
    readonly property color indigo: "#6610f2" //靛蓝
    readonly property color purple: "#6f42c1" //紫色
    readonly property color pink: "#e83e8c" //粉红
    readonly property color red: "#dc3545"
    readonly property color orange: "#fd7e14"
    readonly property color yellow: "#ffc107"
    readonly property color green: "#28a745" //绿色
    readonly property color teal: "#20c997" //青绿之间的颜色
    readonly property color cyan: "#17a2b8" //青色

    readonly property color gray: "#6c757d"
    readonly property color graydark: "#343a40"

    readonly property color primary: "#007bff"
    readonly property color secondary: "#6c757d"
    readonly property color success: "#28a745"
    readonly property color info: "#17a2b8"
    readonly property color warning: "#ffc107"
    readonly property color danger: "#dc3545"
    readonly property color light: "#f8f9fa"
    readonly property color dark: "#343a40"

    readonly property color white: "#fff"
    readonly property color darkcyan: "#34495e"
    readonly property color lightGreen: "#1abc9c"
    readonly property color steelGreen: "#48c9b0"
    readonly property color darkGreen: "#16a085"
    readonly property color steelBlue: "#3390ff"
    readonly property color lightBlue: "#7fbdff"
    readonly property color steelGray: "#d1d5d8"

    property var textStyle: QtObject {
        id: textStyle
        objectName: "textStyle"
        property string fontFamily: Qt.application.font
        property color normalColor: white
        property int fontPixel: 16
    }
    property var inputStyle: QtObject {
        id: inputStyle
        objectName: "inputStyle"
        property color hoveredColor: lightGreen
        property color borderColor: lightGreen
        property color backgroundColor: darkcyan
        property color backgroundBorderColor: lightGreen
        property color selectedColor: textStyle.normalColor
        property color selectionColor: steelBlue
    }
     property var buttonStyle: QtObject {
        id: buttonStyle
        objectName: "buttonStyle"
        property color normalColor: lightGreen
        property color hoveredColor: steelGreen
        property color pressedColor: darkGreen
        property color disabledColor: steelGray
        property color borderColor: lightBlue
    }
}
