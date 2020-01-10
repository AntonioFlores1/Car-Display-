//
//  CarListing.swift
//  Car 3D Display
//
//  Created by antonio  on 1/10/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import Foundation

class CarInfo {
    
    var name: String
    var carModel: String
    var price: String
    var carSound: String
    
    init(name:String,carModel:String,price:String,carSound:String) {
        self.name = name
        self.carModel = carModel
        self.price = price
        self.carSound = carSound
    }
    
   static var carInfoArray = [CarInfo(name: "chevrolet corvette stingray", carModel: "chevrolet+corvette+stingray+c7.scn", price: "$600,502", carSound: "choo choo"),CarInfo(name: "R8", carModel: "R8_Low_Poly_Turbosquid2.scn", price: "$290,800", carSound: "room- room"),CarInfo(name: "Peugeot Onyx Concept", carModel: "PeugeotOnyxConcept.scn", price: "1 Mill", carSound: "Beep Beep"),CarInfo(name: "R8", carModel: "R8_Low_Poly_Turbosquid2.scn", price: "$290,800", carSound: "room- room")]
}



//R8_Low_Poly_Turbosquid2.scn
