import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 850
    height: 600
    visible: true
    title: qsTr("Hello World")

    Loader{
        source: "StackViewPage.qml"
    }
}
