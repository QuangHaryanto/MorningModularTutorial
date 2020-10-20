//
//  CustomRounded.swift
//  BeautyShape
//
//  Created by Haryanto Salim on 20/10/20.
//  Copyright © 2020 Apple Developer Academy. All rights reserved.
//

import Foundation
import UIKit
import TTGSnackbar

/**
 Access control
 open/public
 internal =>
 private => accesible di dalam single file. contoh:helper function
 */

public class CustomRounded{
    public static func allRoundedCorner(view: UIView){
        view.layer.cornerRadius = 5.0
        view.layer.masksToBounds = true
    }
    
    public static func topLeftRightROundedCorner(view: UIView){
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
    }
    
    public static func bottomRightLeftRoundedCOrner(view:UIView){
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner] // Bottom right corner, Bottom left corner respectively
    }
    
    public static func printSomething(text: String){
        print(text)
    }

    
    public static func showSnackBar(){
        let snackbar = TTGSnackbar(
            message: "TTGSnackBar !",
            duration: .middle,
            actionText: "Action!",
            actionBlock: { (snackbar) in
                print("Click action!")
            }
        )
        snackbar.show()
    }
}
