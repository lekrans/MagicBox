//
//  MenuModel.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-22.
//

import Foundation
import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var isTechnique: Bool = false
    var subMenuItems: [MenuItem]?
}

let sampleMenuItems = [ MenuItem(name: "Card Handling", image: "linea-mini", subMenuItems: cardHandlingMenuItems),
                        MenuItem(name: "Control", image: "swift-mini", subMenuItems: controlMenuItems),
                        MenuItem(name: "Palming", image: "espresso-ep", subMenuItems: palmingMenuItems),
                        MenuItem(name: "Force", image: "espresso-ep", subMenuItems: forceMenuItems),
                        MenuItem(name: "Vanish", image: "espresso-ep", subMenuItems: vanishMenuItems),
                        MenuItem(name: "Production", image: "espresso-ep", subMenuItems: productionMenuItems),
                        MenuItem(name: "Additions", image: "espresso-ep", subMenuItems: additionsMenuItems),
                        MenuItem(name: "Changes/Switches", image: "espresso-ep", subMenuItems: changesMenuItems),
                        MenuItem(name: "Counts", image: "espresso-ep", subMenuItems: countsMenuItems)
                        
                    ]


// Sub-menu items for Espressco Machines
let cardHandlingMenuItems = [
        MenuItem(name: "Shuffles", image: "leva-x", subMenuItems: shufflesMenuItems),
        MenuItem(name: "Cut", image: "strada-ep", subMenuItems: cutMenuItems),
        MenuItem(name: "Deal", image: "kb90"),
        MenuItem(name: "Spreading", image: "linea-pb-x", subMenuItems: spreadingMenuItems),
        MenuItem(name: "Flourish", image: "gb5")
        ]

let shufflesMenuItems = [ MenuItem(name: "Tabled shuffles", image: "leva-x", subMenuItems: tabledShufflesMenuItems), MenuItem(name: "In-hand shuffles", image: "leva-s"), MenuItem(name: "False shuffles", image: "leva-s") ]
let cutMenuItems = [ MenuItem(name: "Tabled shuffles", image: "leva-x"), MenuItem(name: "In-hand shuffles", image: "leva-s"), MenuItem(name: "False shuffles", image: "leva-s") ]
let spreadingMenuItems = [ MenuItem(name: "Tabled shuffles", image: "leva-x"), MenuItem(name: "In-hand shuffles", image: "leva-s"), MenuItem(name: "False shuffles", image: "leva-s") ]

 

let tabledShufflesMenuItems = [ MenuItem(name: "Tabled riffle shuffle", image: "swift", isTechnique: true),
                         MenuItem(name: "Open tabled riffle shuffle", image: "vulcano", isTechnique: true),
                         MenuItem(name: "Daryls table shuffle", image: "swift-mini", isTechnique: true),
                         MenuItem(name: "Over the top riffle shuffle and some more text", image: "lux-d", isTechnique: true)
                        ]
// Sub-menu items for Grinder
let controlMenuItems = [ MenuItem(name: "Swift", image: "swift"),
                         MenuItem(name: "Vulcano", image: "vulcano"),
                         MenuItem(name: "Swift Mini", image: "swift-mini"),
                         MenuItem(name: "Lux D", image: "lux-d")
                        ]
 
// Sub-menu items for other equipment
let palmingMenuItems = [ MenuItem(name: "Espresso AV", image: "espresso-av"),
                         MenuItem(name: "Espresso EP", image: "espresso-ep"),
                         MenuItem(name: "Pour Over", image: "pourover"),
                         MenuItem(name: "Steam", image: "steam")
                        ]
// Sub-menu items for other equipment
let forceMenuItems = [ MenuItem(name: "Espresso AV", image: "espresso-av"),
                         MenuItem(name: "Espresso EP", image: "espresso-ep"),
                         MenuItem(name: "Pour Over", image: "pourover"),
                         MenuItem(name: "Steam", image: "steam")
                        ]

// Sub-menu items for other equipment
let vanishMenuItems = [ MenuItem(name: "Espresso AV", image: "espresso-av"),
                         MenuItem(name: "Espresso EP", image: "espresso-ep"),
                         MenuItem(name: "Pour Over", image: "pourover"),
                         MenuItem(name: "Steam", image: "steam")
                        ]

// Sub-menu items for other equipment
let productionMenuItems = [ MenuItem(name: "Espresso AV", image: "espresso-av"),
                         MenuItem(name: "Espresso EP", image: "espresso-ep"),
                         MenuItem(name: "Pour Over", image: "pourover"),
                         MenuItem(name: "Steam", image: "steam")
                        ]

// Sub-menu items for other equipment
let additionsMenuItems = [ MenuItem(name: "Espresso AV", image: "espresso-av"),
                         MenuItem(name: "Espresso EP", image: "espresso-ep"),
                         MenuItem(name: "Pour Over", image: "pourover"),
                         MenuItem(name: "Steam", image: "steam")
                        ]

// Sub-menu items for other equipment
let changesMenuItems = [ MenuItem(name: "Espresso AV", image: "espresso-av"),
                         MenuItem(name: "Espresso EP", image: "espresso-ep"),
                         MenuItem(name: "Pour Over", image: "pourover"),
                         MenuItem(name: "Steam", image: "steam")
                        ]

// Sub-menu items for other equipment
let countsMenuItems = [ MenuItem(name: "Espresso AV", image: "espresso-av"),
                         MenuItem(name: "Espresso EP", image: "espresso-ep"),
                         MenuItem(name: "Pour Over", image: "pourover"),
                         MenuItem(name: "Steam", image: "steam")
                        ]
