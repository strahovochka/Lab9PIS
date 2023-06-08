//
//  Triangle.swift
//  Lab9PIS
//
//  Created by Jane Strashok on 08.06.2023.
//

import Foundation

class Triangle {
    private var a: Double
    
    init(a: Double) {
        self.a = a
    }
    
    func setA(_ a: Double) {
        self.a = a
    }
    
    func getA() -> Double {
        a
    }
    
    func calculateHeight() -> Double {
        (sqrt(3) * a) / 2
    }
    
    func calculateArea() -> Double {
        (sqrt(3) * a * a) / 4
    }
}
