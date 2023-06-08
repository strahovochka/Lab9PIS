//
//  TriangleMVVM.swift
//  Lab9PIS
//
//  Created by Jane Strashok on 08.06.2023.
//

import Foundation

class TriangleMVVM {
    
    private var a: Double
    var height: Double {
        (sqrt(3) * a) / 2
    }
    
    var area: Double {
        (sqrt(3) * a * a) / 4
    }
    
    init(a: Double) {
        self.a = a
    }
    
    init() {
        self.a = 4
    }
}

