import QtQuick 2.9
import QtQuick.Controls 2.0
import "../Config"
import "../BasicComponent"
EDialog {
    id: root

    property alias title: t.title
    property alias titleItem: t
    property alias contentText: contentT.text
    property alias contentTextItem: contentT

    property string yesText: qsTr("是")
    property string noText: qsTr("否")
    property string cancleText: qsTr("取消")
    signal yesClick()
    signal noClick()
    signal cancleClick()

    width: 360
    height: 240

    contentItem: Item {
        anchors.fill: parent
        EDialogTitle {
            id: t
            width: parent.width
            anchors.top: parent.top
            anchors.topMargin: 1
            onClick: {
                root.cancleClick()
                root.close()
            }
        }
        EText {
            id: contentT
            anchors.centerIn: parent
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        Row {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10
            EDialogTextBtn {
                id: okBtn
                width: 62
                height: 32
                text: yesText
                onClick: {
                    root.close();
                    root.yesClick();
                }
            }
            EDialogTextBtn {
                id: noBtn
                width: 62
                height: 32
                text: noText
                visible: noText
                onClick: {
                    root.close();
                    root.noClick();
                }
            }

            EDialogTextBtn {
                id: cancleBtn
                width: 62
                height: 32
                text: cancleText
                visible: cancleText
                onClick: {
                    root.close();
                    root.cancleClick();
                }
            }
        }
    }
}
