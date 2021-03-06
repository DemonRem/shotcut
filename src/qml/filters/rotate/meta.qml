import QtQuick 2.0
import org.shotcut.qml 1.0

Metadata {
    type: Metadata.Filter
    objectName: "affineRotate"
    name: qsTr("Rotate and Scale")
    mlt_service: "affine"
    qml: "ui.qml"
    isFavorite: true
    keyframes {
        allowAnimateIn: true
        allowAnimateOut: true
        simpleProperties: ['transition.fix_rotate_x', 'transition.scale_x']
        minimumVersion: '3'
        parameters: [
            Parameter {
                name: qsTr('Rotation')
                property: 'transition.fix_rotate_x'
                isSimple: true
                isCurve: true
                minimum: 0
                maximum: 360
            },
            Parameter {
                name: qsTr('Scale')
                property: 'transition.scale_x'
                isSimple: true
            },
            Parameter {
                name: qsTr('X offset')
                property: 'transition.ox'
            },
            Parameter {
                name: qsTr('Y offset')
                property: 'transition.oy'
            }
        ]
    }
}
