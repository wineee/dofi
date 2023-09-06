import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 400
    height: 300
    visible: true

    flags: Qt.FramelessWindowHint
    color: "#00000000"

    function centerWindow() {
        var screenWidth = Screen.desktopAvailableWidth
        var screenHeight = Screen.desktopAvailableHeight

        var windowX = (screenWidth - width) / 2
        var windowY = (screenHeight - height) / 2

        x = windowX
        y = windowY
    }

    Component.onCompleted: {
        centerWindow()
        if (contentItem) {
            contentItem.border.radius = 10
        }
    }

    DLauncher {
        id: launch
        anchors.fill: parent
        onVisibleChanged: {
            if (!visible)
                Qt.quit()
        }
    }
}
