//
//  componentOverrides.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-22.
//

import Foundation
import SwiftUI

public enum AppSection {
    case card
    case cardTechnique
    case coin
    case coinTechnique
    case stage
    case closeup
    case practice
    case library
    case settings
}

public func setNavigatorViewAppearance(section: AppSection, colorScheme: ColorScheme) {
    print("setting navigatorViewApperance")
    if colorScheme == .dark {print("DARK")} else {print("LIGHT")}
    var backImage: UIImage?
    var imageName: String?
    let isDark: Bool = colorScheme == .dark
    switch section {
        case .card,
             .cardTechnique :
                backImage = UIImage(systemName: "hand.point.left")!
            imageName = isDark ? "bicycle-red-bottom-gradient" : "bicycle-red-bottom-light"
             
                
        default :
            backImage = UIImage(systemName: "chevron.left")!
            imageName = "bicycle-red-bottom-gradient"
    }
    UINavigationBar.appearance().titleTextAttributes =  [.font : UIFont(name: "Papyrus", size: 30)!, NSAttributedString.Key.foregroundColor:UIColor(Color.magicNavigationText)]
    UINavigationBar.appearance().isTranslucent = true
    UINavigationBar.appearance().backIndicatorImage = backImage
    UINavigationBar.appearance().backIndicatorTransitionMaskImage = backImage
    if let imageName = imageName {
        UINavigationBar.appearance().setBackgroundImage(UIImage(named: imageName)?.stretchableImage(withLeftCapWidth: 0, topCapHeight: 0), for: .any, barMetrics: .default)
    }
}


public func setToggleViewAppearance(section: AppSection, colorScheme: ColorScheme) {
    UISwitch.appearance().onTintColor = .orange
    
}


public func setAppearance(section: AppSection, colorScheme: ColorScheme) {
    setNavigatorViewAppearance(section: section, colorScheme: colorScheme)
    setToggleViewAppearance(section: section, colorScheme: colorScheme)
}

