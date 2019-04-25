pragma Singleton
import QtQuick 2.9
import QtQml 2.0
QtObject {
    id: tConfig
    objectName: "TConfig"


    //default theme reference http://designmodo.github.io/Flat-UI/


    property string fontFamily: application.font
    property color textColor: "#1e90ff"

    property color buttonBorderColor: "#"
    property color buttonBackgroundColor: ""

}
