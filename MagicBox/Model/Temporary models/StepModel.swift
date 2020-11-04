//
//  StepModel.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-11-02.
//

import Foundation

struct StepItem: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var subMenuItems: [StepItem]?
}

