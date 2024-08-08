import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Material
import QtQuick.Window

ColumnLayout {

    Logo {
        id: icon
        Layout.alignment: Qt.AlignCenter
        fillMode: Image.PreserveAspectFit
        Layout.preferredHeight: 2
        Layout.fillWidth: true
        Layout.fillHeight: true
        source: "qrc:/assets/icon.png"
    }
    Text {
        text: qsTr("In & Out")
        color: Material.primaryTextColor
        Layout.preferredHeight: 1
        Layout.fillWidth: true
        Layout.fillHeight: true
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 24
        Layout.alignment: Qt.AlignCenter
    }
    Text {
        text: qsTr("Welcome Back! Sign in and Plan!")
        Layout.preferredHeight: 1
        horizontalAlignment: Text.AlignHCenter
        Layout.fillWidth: true
        Layout.fillHeight: true
        minimumPixelSize: 10
        font.pixelSize: 72
        color: Material.primaryTextColor
        fontSizeMode: Text.Fit
        Layout.alignment: Qt.AlignCenter
    }
}
