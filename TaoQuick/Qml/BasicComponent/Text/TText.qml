import QtQuick 2.9
import QtQuick.Controls 2.0
import "../../Config"
Text {
    font.family: TConfig.textStyle.fontFamily
    font.pixelSize: TConfig.textStyle.fontPixel
    color: TConfig.textStyle.normalColor
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    elide: Text.ElideRight
}
