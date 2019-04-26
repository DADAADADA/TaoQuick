pragma Singleton
import QtQuick 2.9
import QtQml 2.0
QtObject {
    id: tConfig
    objectName: "TConfig"


    //Flat-UI theme reference http://designmodo.github.io/Flat-UI/


    readonly property color blue: "#007bff"
    readonly property color indigo: "#6610f2"
    readonly property color purple: "#6f42c1"
    readonly property color pink: "#e83e8c"
    readonly property color red: "#dc3545"
    readonly property color orange: "#fd7e14"
    readonly property color yellow: "#ffc107"
    readonly property color green: "#28a745"
    readonly property color teal: "#20c997"
    readonly property color cyan: "#17a2b8"
    readonly property color white: "#fff"
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
}
