import QtQuick.Controls.Material
import signIn 1.0
import InOut 1.0
import QtQuick

ApplicationWindow {
    id: rootWindow
    Material.accent: Material.Cyan
    Material.theme: Material.System
    color: Material.background

    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    SplashScreenController {
        id: splashController
    }

    Loader {
        sourceComponent: signIn
        anchors.fill: parent
        asynchronous: true
        visible: status == Loader.Ready
        onLoaded: {
            splashController.removeSplashScreen()
        }
    }

    Component {
        id: signIn
        SignIn {
            anchors.fill: parent
        }
    }
}
