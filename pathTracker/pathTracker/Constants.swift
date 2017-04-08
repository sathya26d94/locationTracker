//
//  Constants.swift
//  pathTracker
//
//  Created by SaTHYa on 06/04/17.
//  Copyright © 2017 SaTHYa. All rights reserved.
//

import UIKit

struct Constants {
    
    struct FontName {
        static let Icomoon = "icomoon"
    }
    
    struct FontSize {
        static let SmallIcon: CGFloat = 18
        static let RegularIcon: CGFloat = 28
        static let VeryLargeIcon: CGFloat = 60
        static let SmallText: CGFloat = 14
        static let RegularText: CGFloat = 16
        static let LargeText: CGFloat = 18
        static let VeryLargeText: CGFloat = 40
        static let ButtonTitleText: CGFloat = 16
        static let LargeButtonTitleText: CGFloat = 28
    }
    
    struct Color {
        static let Black = UIColor.blackColor()
        static let White = UIColor.whiteColor()
        static let Clear = UIColor.clearColor()
        static let AppTheme = UIColor(colorLiteralRed: 35/255, green: 77/255, blue: 109/255, alpha: 1.0)
        static let AppThemeLowAlpha = UIColor(colorLiteralRed: 35/255, green: 77/255, blue: 109/255, alpha: 0.8)
        static let CellHighlight = UIColor.darkGrayColor()
        static let PrimaryButtonNormal = UIColor(colorLiteralRed: 59/255, green: 159/255, blue: 243/255, alpha: 1.0)
        static let PrimaryButtonDisabled = UIColor(colorLiteralRed: 59/255, green: 159/255, blue: 243/255, alpha: 0.2)
        static let SecondaryBarButtonNormal = UIColor.whiteColor()
        static let SecondaryBarButtonDisabled = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 0.2)
        static let SecondaryButtonNormal = UIColor(colorLiteralRed: 206/255.0, green: 213/255.0, blue: 219/255.0, alpha: 1.0)
        static let titleTextColor = UIColor.whiteColor()
        static let Error = UIColor(colorLiteralRed: 239/255, green: 72/255, blue: 54/255, alpha: 1.0)
        static let Success = UIColor(colorLiteralRed: 106/255, green: 192/255, blue: 57/255, alpha: 1.0)
        static let BackgroundOverlay = UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 0.7)
        static let ProductScanOnlyOverlay = UIColor(colorLiteralRed:215/255, green:228/255, blue:236/255, alpha:0.92)
        static let TableSection = UIColor(colorLiteralRed: 220/255, green: 238/255, blue: 242/255, alpha: 1.0)
        static let Hold = UIColor(colorLiteralRed: 255/255, green: 210/255, blue: 0/255, alpha: 1.0)
        static let BaseBackground = UIColor(colorLiteralRed:215/255, green:228/255, blue:236/255, alpha:1.0)
        static let Border = UIColor(colorLiteralRed:122/255, green:156/255, blue:181/255, alpha:1.0)
        static let MasterBaseBackground = UIColor(colorLiteralRed:240/255, green:245/255, blue:248/255, alpha:1.0)
        static let OffCanvas = UIColor(colorLiteralRed:28/255, green:45/255, blue:58/255, alpha:1.0)
        static let CartTopBackground = UIColor(colorLiteralRed:122/255, green:156/255, blue:181/255, alpha:1.0)
        static let WhiteTableCellSeparator = UIColor(colorLiteralRed:215/255, green:228/255, blue:236/255, alpha:1.0)
        static let DetailText = UIColor(colorLiteralRed: 115/255.0, green: 115/255.0, blue: 115/255.0, alpha: 1.0)
        static let LogoutButton = UIColor(colorLiteralRed: 18/255.0, green: 30/255.0, blue: 38/255.0, alpha: 1.0)
        static let cashDrawer = UIColor(colorLiteralRed:59/255.0, green:159/255.0, blue:243/255.0, alpha: 1.0)
    }
    
    struct String {
        
    }
    
}