import QtQuick 2.9
import QtQuick.Controls 2.0
import "../Text"
import "../../Config"
Rectangle {
    id: root
    property alias textItem: t
    property alias text: t.text
    property alias textAnchors: t.anchors
    property alias textColor: t.color
    property alias textHorizontalAlignment: t.horizontalAlignment
    property alias textVerticalAlignment: t.verticalAlignment
    property alias containsMouse: area.containsMouse
    property alias containsPress: area.containsPress
    signal click();
    color: enabled ?
               (containsPress ?
                    TConfig.buttonStyle.pressedColor
                        :(containsMouse
                            ? TConfig.buttonStyle.hoveredColor
                            : TConfig.buttonStyle.normalColor
                          )
                )
                : TConfig.buttonStyle.disabledColor

    border.color: TConfig.buttonStyle.borderColor
    border.width: (containsPress || containsMouse) ? 1 : 0

    TText {
        id: t
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
    }

    MouseArea {
        id: area
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.click();
        cursorShape: Qt.PointingHandCursor
    }
}

