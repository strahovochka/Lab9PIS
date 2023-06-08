//
//  TrianglePresenter.swift
//  Lab9PIS
//
//  Created by Jane Strashok on 08.06.2023.
//

import Foundation

class TrianglePresenter {
    private let model: TriangleProtocol
    private let view: ViewProtocol
    
    init(model: TriangleProtocol, view: ViewProtocol) {
        self.model = model
        self.view = view
    }
    
    func loadTriangleWith(a: Double) {
        let triangle = TriangleMVP(a: a)
        view.setHeight(round(triangle.getHeight() * 100) / 100.0)
        view.setArea(round(triangle.getArea() * 100) / 100.0)
    }
}
