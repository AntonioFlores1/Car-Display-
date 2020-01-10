//
//  CarNode.swift
//  Car 3D Display
//
//  Created by antonio  on 1/10/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import UIKit
import SceneKit

class CarNode: SCNNode {
    override init() {
        super.init()
        self.geometry = SCNSphere(radius: 1)
        self.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        
    }
}
