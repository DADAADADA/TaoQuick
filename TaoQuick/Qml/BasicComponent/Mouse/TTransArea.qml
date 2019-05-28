import QtQuick 2.9

MouseArea {
    id:operMouseArea
    anchors.fill: parent
    hoverEnabled: true
    onDoubleClicked: { mouse.accepted = false;}
    onPositionChanged: { mouse.accepted = false;}
    onPressed:  {  mouse.accepted = false; }
    onPressAndHold: { mouse.accepted = false; }
    onClicked:  { mouse.accepted = false;}
    onReleased: { mouse.accepted = false;}
    onWheel: { wheel.accepted = false; }
}
