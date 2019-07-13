// Copyright 2019 miruka
// This file is part of harmonyqml, licensed under LGPLv3.

import QtQuick 2.12
import QtQuick.Controls 1.4 as Controls1

//https://doc.qt.io/qt-5/qml-qtquick-controls-splitview.html
Controls1.SplitView {
    id: splitView

    property bool anyHovered: false
    property bool anyPressed: false
    property bool anyResizing: false

    property bool canAutoSize: true
    onAnyPressedChanged: canAutoSize = false

    handleDelegate: Item {
        readonly property bool hovered: styleData.hovered
        readonly property bool pressed: styleData.pressed
        readonly property bool resizing: styleData.resizing

        onHoveredChanged: splitView.anyHovered = hovered
        onPressedChanged: splitView.anyPressed = pressed
        onResizingChanged: splitView.anyResizing = resizing
    }
}
