import QtQuick 2.9
import QtQuick.Controls 2.0
import "qrc:/Tao/Qml/"
import "qrc:/Tao/Qml/"
import "qrc:/Tao/Qml/"
ListView {
    id: root
    anchors.fill: parent
    property string currentTitle
    property string currentUrl
    property int rowHeight: 40
    clip: true
    model: ListModel {
        id: dataModel
    }
    function freshData(data) {
        dataModel.clear()
        for (var i = 0; i < data.length; ++i)
        {
            dataModel.append(data[i])
        }
        currentTitle = data[0].name
        currentUrl = data[0].url
    }

    delegate: Item {
        id: delegateItem
        width: root.width
        height: rowHeight
        clip: true
        Behavior on height {
            NumberAnimation { duration: 200 }
        }
        TGradientBtn {
            id: btn
            width: root.width
            height: rowHeight
            text: model.name
            textItem.leftPadding: 6
            textHorizontalAlignment: Text.AlignLeft
            textColor: text === currentTitle ? gConfig.titleBackground : gConfig.textColor
            onClick: {
                if (model.url)
                {
                    currentTitle = model.name
                    currentUrl = model.url
                } else {
                    if (!subListView.initOnce) {
                        var subData = model.children
                        subListView.model = subData
                        subListView.initOnce = true;
                    }
                    if (subListView.visible)
                    {
                        subListView.visible = false
                        delegateItem.height = rowHeight
                    } else {
                        delegateItem.height =subListView.height + rowHeight
                        subListView.visible = true
                    }
                }

            }
        }
        ListView {
            id: subListView
            visible: false
            x: 20
            y: rowHeight
            width: root.width
            height: count * rowHeight
            property bool initOnce: false
            delegate: TGradientBtn {
                width: root.width
                height: rowHeight
                text: model.name
                textColor: text === currentTitle ? gConfig.titleBackground : gConfig.textColor
                onClick: {
                    currentTitle = model.name
                    currentUrl = model.url
                }
            }
        }
    }
}
