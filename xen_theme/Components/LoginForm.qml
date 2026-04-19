import QtQuick 2.15
import QtQuick.Layouts 1.15
import SddmComponents 2.0 as SDDM

Item {
    id: rootItem
    SDDM.TextConstants { id: textConstants }

    // Отступ часов вниз (можно задать в пикселях или в долях от root.height)
    property real clockOffset: root.height / 10 // ~108 px при 1080p

    property int p: config.ScreenPadding == "" ? 0 : config.ScreenPadding
    property string a: config.FormPosition

    Clock {
        id: clock
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: clockOffset
        height: root.height * 1.05
    }

    // ЛОГИН / ПАРОЛЬ (в колонке)
    ColumnLayout {
        id: formContainer
        anchors.centerIn: parent
        spacing: 10
        width: parent.width

        Input {
            id: input
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter
            Layout.preferredHeight: root.height / 2.3
            Layout.leftMargin: p != 0 ? (a == left ? -p : a == right ? p : 0) : 0
        }
    }

    // Выбор сессии
    SessionButton {
        id: sessionSelect
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom 
        height: root.height / 24
    }
}

