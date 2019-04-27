import QtQuick 2.9
import "../BasicComponent/Button"
import "../Config"
TImageBtn {

    property bool isActived: false

    property string activedImg
    property string hoveredImg
    property string inActivedImg

    imageUrl: isActived ? activedImg :containsMouse ? hoveredImg : inActivedImg
}
