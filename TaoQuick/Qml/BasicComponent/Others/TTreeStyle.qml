import QtQuick 2.9
import QtQuick.Controls.Styles 1.4
import "../Config"
TreeViewStyle {
    id: treeStyle

    property real treeStyleTopHeight: 46

    backgroundColor: EConfig.eBackGround
    alternateBackgroundColor : EConfig.eBackGround
    highlightedTextColor:EConfig.textColor
    textColor: EConfig.textColor

    branchDelegate: Item {
       width: 0
       height: 0
    }

    rowDelegate : Rectangle {
        height: treeStyleTopHeight
        color: EConfig.eBackGround
        anchors.leftMargin: 0
    }
    handle: Rectangle {
        implicitWidth: 4
        implicitHeight: 80
        radius: 2
        opacity: 0.2
        color: EConfig.eHandle
    }
    scrollBarBackground: Rectangle {
        implicitWidth: 4
        implicitHeight: 80
        color: EConfig.eBackGround
    }
    decrementControl: Item {
    }
    incrementControl: Item {
    }
    corner: Item {
    }
}
