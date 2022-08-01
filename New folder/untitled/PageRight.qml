import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Item {
    ListModel{
        id: idModelist
        ListElement{
            name: "<b>BLUETOOTH</b>"
            isource: "qrc:/imageright/bluetooth.png"
        }
        ListElement{
            name: "<b>CATE</b>"
            isource: "qrc:/imageright/cate.png"
        }
        ListElement{
            name: "<b>CLOUD</b>"
            isource: "qrc:/imageright/cloud.png"
        }
        ListElement{
            name: "<b>SERVER</b>"
            isource: "qrc:/imageright/server.png"
        }
        ListElement{
            name: "<b>WEB</b>"
            isource: "qrc:/imageright/web.png"
        }
        ListElement{
            name: "<b>WIFI</b>"
            isource: "qrc:/imageright/wifi.png"
        }
    }
    ListView {
        width: 850
        height: 600
        currentIndex: -1
        orientation: ListView.Horizontal
        spacing: 20
        model: idModelist
        delegate: Rectangle {
            id: rect
            width: 125
            height: 200
            border.width: 4
            //currentIndex: -1
            border.color: focus? "blue":"lightblue"
            color: "lightblue"
            radius: 15
            MouseArea{
                anchors.fill: rect
                onClicked: {
                    parent.focus ^= 0x01
                }

            }

            Rectangle{
                id: rect1
                width: 117
                height: 117
                anchors.top: rect.top
                anchors.topMargin: 4
                anchors.left: rect.left
                anchors.leftMargin: 4
                radius: 15
                Image {
                    anchors.verticalCenter: rect1.verticalCenter
                    anchors.horizontalCenter: rect1.horizontalCenter
                    scale: 0.2
                    source: isource
                }
            }
            Rectangle{
                id: rect2
                width: 117
                height: 30
                anchors.bottom: rect.bottom
                anchors.bottomMargin: 15
                anchors.left: rect.left
                anchors.leftMargin: 4
                Text {
                    anchors.verticalCenter: rect2.verticalCenter
                    anchors.horizontalCenter: rect2.horizontalCenter
                    text: name
                    font.pixelSize: 15
                }
            }
        }
    }
    Rectangle{
        id: trai
        width: 40
        height: 40
        border.width: 2
        anchors.top: parent.top
        anchors.topMargin: 300
        anchors.left: parent.left
        anchors.leftMargin: 20
        radius: 10
        Image {
            anchors.verticalCenter: trai.verticalCenter
            anchors.horizontalCenter: trai.horizontalCenter
            source: "qrc:/image1/trai.png"
            scale: 0.06
        }
        MouseArea{
            anchors.fill: trai
            onClicked: stackview.pop()
        }
    }
}
