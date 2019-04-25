import QtQuick 2.9
import QtGraphicalEffects 1.0
OpacityMask {
    id: root
    property alias opacityImageUrl: img.source
    property alias imageColor: back.color

    property alias imageItem: img
    property alias backgroundItem: back

    source: Rectangle{
        id: back
        width: root.width
        height: root.height
    }
    maskSource: Image {
        id: img
    }
}
