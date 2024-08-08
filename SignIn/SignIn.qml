import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Material
import QtQuick.Window

Rectangle {

    color: Material.backgroundColor
    property bool darkMode: Application.styleHints.colorScheme === Qt.ColorScheme.Dark
    onDarkModeChanged: {
        if (darkMode) {
            Material.theme = Material.Dark
        } else {
            Material.theme = Material.Light
        }
    }
    Component.onCompleted: {
        console.log(Screen.primaryOrientation === Qt.PortraitOrientation)
    }

    states: [
        State {
            when: Screen.primaryOrientation === Qt.PortraitOrientation
            PropertyChanges {
                target: porttraitMode
                visible: true
            }
            PropertyChanges {
                target: landscapeMode
                visible: false
            }
        },
        State {
            when: Screen.primaryOrientation === Qt.LandscapeOrientation
            PropertyChanges {
                target: porttraitMode
                visible: false
            }
            PropertyChanges {
                target: landscapeMode
                visible: true
            }
        }
    ]

    RowLayout {
        id: landscapeMode

        anchors.fill: parent
        Item {
            Layout.preferredWidth: 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            Welcome {
                height: parent.height * 0.6
                width: parent.width
                anchors.centerIn: parent
            }
        }
        Item {
            Layout.preferredWidth: 2
            Layout.fillWidth: true
            Layout.fillHeight: true
            LoginForum {
                anchors.centerIn: parent
                width: parent.width * 0.8
            }
        }
    }

    Item {
        id: porttraitMode
        visible: false
        anchors.fill: parent
        Control {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: loginForm.top
            padding: 10
            implicitWidth: porttraitMode.width
            implicitHeight: porttraitMode.height * 0.2
            contentItem: Welcome {}
        }

        LoginForum {
            id: loginForm
            anchors.centerIn: parent
            width: parent.width * 0.7
            spacing: 8
        }
    }
}
