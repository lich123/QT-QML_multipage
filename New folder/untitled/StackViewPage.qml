import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Item {
    anchors.fill: parent
    StackView{
        id: stackview
        anchors.fill: parent
        initialItem: "PageMid.qml"
    }
}
