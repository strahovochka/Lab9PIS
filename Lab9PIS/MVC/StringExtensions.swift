//
//  StringExtensions.swift
//  Lab9PIS
//
//  Created by Jane Strashok on 08.06.2023.
//

import Foundation

extension String {
    var containsOnlyDigits: Bool {
        let notDigits = NSCharacterSet.decimalDigits.inverted
        return rangeOfCharacter(from: notDigits, options: String.CompareOptions.literal, range: nil) == nil
    }
}
