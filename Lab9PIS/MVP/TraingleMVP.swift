//
//  TraingleMVP.swift
//  Lab9PIS
//
//  Created by Jane Strashok on 08.06.2023.
//

import Foundation

class TriangleMVP: TriangleProtocol {
    
    private var a: Double
    
    init(a: Double) {
        self.a = a
    }
    
    init() {
        self.a = 4
    }
    
    func getHeight() -> Double {
        (sqrt(3) * a) / 2
    }
    
    func getArea() -> Double {
        (sqrt(3) * a * a) / 4
    }
}
