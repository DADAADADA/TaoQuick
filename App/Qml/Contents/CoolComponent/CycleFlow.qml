import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Particles 2.0
Item {
    width: 800
    height: 600
    ParticleSystem {
        id: sys
    }
    Item {//发射位置
        id: emitPos
        x: 0
        y: 20
        width: 36
        height: 36
    }
    Item {//减速位置
        id: slowRect
        x: 50
        y: 20
        width: 150
        height: 36
    }
    Item {//加速位置
        id: fastRect
        x: 200
        y: 20
        width: 100
        height: 36
    }
    Item { //目标位置
        id: endPos
        x: 400
        y: 20
        width: 36
        height: 36
    }
    Emitter {
        id: emitter
        emitRate: 5 //每秒发射数量
        size: 20    //初始大小 像素
        endSize: 20 //最终大小 像素
        lifeSpan: 2500  //生命周期 毫秒
        anchors.centerIn: emitPos
        system: sys
        velocity: TargetDirection {
            targetItem: endPos
            magnitude: 400 //初始速度 像素/秒
        }
    }
    Friction  { //摩擦减速效果
        anchors.fill: slowRect
        system: sys
        factor : 2.0  //摩擦系数
        threshold: 20 //摩擦终止速度 像素/秒
    }
    Gravity { //重力加速效果
        anchors.fill: fastRect
        system: sys
        angle: 0
        magnitude: 100
    }
    ImageParticle {
        id: imgParticle
        source: "qrc:///particleresources/fuzzydot.png"
        color: "red"
        colorVariation: 1
        system: sys
    }
}
