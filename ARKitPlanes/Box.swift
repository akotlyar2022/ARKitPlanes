//
//  Box.swift
//  ARKitPlanes
//
//  Created by macbook on 22.01.23.
//

import SceneKit
import ARKit

class Box: SCNNode {
    init(atPosition position: SCNVector3) {
        super.init()
        
        let boxGeometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.green
        
        boxGeometry.materials = [material]
        self.geometry = boxGeometry
        
        let physicsShape = SCNPhysicsShape(geometry: self.geometry!, options: nil)
        self.physicsBody = SCNPhysicsBody(type: .dynamic, shape: physicsShape)
        
        self.position = position
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
