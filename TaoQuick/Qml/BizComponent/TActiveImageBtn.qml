import QtQuick 2.9
import "../BasicComponent"
import "../Config"
EImageBtn {

    property bool isActived: false

    property string activedImg
    property string hoveredImg
    property string inActivedImg

    imageUrl: isActived ? activedImg :containsMouse ? hoveredImg : inActivedImg
}
