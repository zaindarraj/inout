import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Material
import QtQuick.Window

Image {
    id: icon
    Layout.preferredWidth: parent.width * 0.3
    Layout.preferredHeight: parent.width * 0.3
    states: [
        State {
            when: parent.width <= 400
            PropertyChanges {
                target: icon
                width: parent.width * 0.3
                height: parent.width * 0.3
            }
        },
        State {
            when: parent.width > 490
            PropertyChanges {
                target: icon
                width: parent.width * 0.2
                height: parent.width * 0.2
            }
        }
    ]
}
