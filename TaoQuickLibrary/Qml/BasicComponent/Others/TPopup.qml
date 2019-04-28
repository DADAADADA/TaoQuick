import QtQuick 2.9
import QtQuick.Controls 2.0

Popup {
    x: (parent.width - width)/2
    y: (parent.height - height)/2
    closePolicy: Popup.NoAutoClose
    modal: true
}
