import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Material
import QtQuick.Window

ColumnLayout {
    id: loginForm
    TextField {
        Layout.preferredWidth: parent.width
        Layout.alignment: Qt.AlignCenter

        placeholderText: qsTr("Email")
    }
    TextField {
        Layout.preferredWidth: parent.width
        Layout.alignment: Qt.AlignCenter

        placeholderText: qsTr("Password")
    }
    Button {
        flat: true

        text: qsTr("Forgot password ? Reset.")
    }
    Button {
        Layout.preferredWidth: parent.width * 0.4
        Layout.alignment: Qt.AlignCenter
        highlighted: true

        text: qsTr("Sign in")
    }
    Button {

        flat: true

        text: qsTr("Don't have an account ? Sign up")
    }
}
