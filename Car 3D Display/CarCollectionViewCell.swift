//
//  CarCollectionViewCell.swift
//  Car 3D Display
//
//  Created by antonio  on 1/10/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import UIKit
import SceneKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var sceneView: SCNView!
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
    
        
    }
    
    func display(info:CarInfo){
        
        carNameLabel.text = info.name
        
        let scene = SCNScene(named: info.carModel)
                    
                let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 150), around: SCNVector3(0, 1, 0), duration: 8)
                       
                       let repeatAction = SCNAction.repeatForever(action)
                       
                       scene?.rootNode.runAction(repeatAction)
                
                    let cameraNode = SCNNode()
                    cameraNode.camera = SCNCamera()
                    
        //             cameraNode.position = SCNVector3(x: 0, y: 10, z: 35)
                    cameraNode.position = SCNVector3(x: 0, y: 4, z: 7)
        //        for eugeotOnyxConcept
                    
                    scene?.rootNode.addChildNode(cameraNode)
                    
                    
                    let lightNode = SCNNode()
                           lightNode.light = SCNLight()
                           lightNode.light?.type = .omni
                           lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
                           scene?.rootNode.addChildNode(lightNode)
                           
                           // 6: Creating and adding ambien light to scene
                           let ambientLightNode = SCNNode()
                           ambientLightNode.light = SCNLight()
                           ambientLightNode.light?.type = .ambient
                           ambientLightNode.light?.color = UIColor.darkGray
                           scene?.rootNode.addChildNode(ambientLightNode)
                    
                    sceneView.cameraControlConfiguration.allowsTranslation = false
                   
                    sceneView.scene = scene
                    
        //            sceneView.showsStatistics = true
                    sceneView.backgroundColor = .white
                    sceneView.allowsCameraControl = true
                
               
    }
    
}
