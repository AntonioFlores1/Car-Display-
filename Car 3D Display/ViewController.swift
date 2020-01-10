//
//  ViewController.swift
//  Car 3D Display
//
//  Created by antonio  on 1/10/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: SCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = SCNScene(named: "PeugeotOnyxConcept.scn")
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        
         cameraNode.position = SCNVector3(x: 0, y: 10, z: 35)
//        cameraNode.position = SCNVector3(x: 0, y: 5, z: 7) for eugeotOnyxConcept
        
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
        
        sceneView.showsStatistics = true
        sceneView.backgroundColor = .white
        sceneView.allowsCameraControl = true
    }

    

}

