//
//  TriangleController.swift
//  Lab9PIS
//
//  Created by Jane Strashok on 08.06.2023.
//

import Foundation

class TriangleController {
    func getHeightWithSide(_ a: Double) -> String {
        let temp = Triangle(a: a).calculateHeight()
        return String(round(temp * 100) / 100.0)
    }
    
    func getAreatWithSide(_ a: Double) -> String {
        let temp = Triangle(a: a).calculateArea()
        return String(round(temp * 100) / 100.0)
    }
}
