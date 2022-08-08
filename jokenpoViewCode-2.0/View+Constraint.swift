//
//  View+Constraint.swift
//  jokenpoViewCode-2.0
//
//  Created by Kleiton Mendes on 06/07/22.
//

import Foundation
import UIKit

extension UIView {
    
    open func constraintToItem(_ attribute: NSLayoutConstraint.Attribute, _ toItem: Any?, _ constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        return NSLayoutConstraint(item: self,
                                  attribute: attribute,
                                  relatedBy: .equal,
                                  toItem: toItem,
                                  attribute: attribute,
                                  multiplier: 1,
                                  constant: constant)
    }
    
    open func constraintToItemOutside(_ attribute: NSLayoutConstraint.Attribute, _ toItem: Any?, _ constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
//        return NSLayoutConstraint(item: self,
//                                  attribute: attribute,
//                                  relatedBy: .equal,
//                                  toItem: toItem,
//                                  attribute: attribute,
//                                  multiplier: 1,
//                                  constant: constant)
        var itemAttribute: NSLayoutConstraint.Attribute
        
        switch attribute {
        case .top: itemAttribute = .bottom
        case .bottom: itemAttribute = .top
        case .leading: itemAttribute = .leading
        case .trailing: itemAttribute = .trailing
        default:
            return NSLayoutConstraint()
        }
        
        return NSLayoutConstraint(item: self,
                                  attribute: attribute,
                                  relatedBy: .equal,
                                  toItem: toItem,
                                  attribute: itemAttribute,
                                  multiplier: 1,
                                  constant: constant)
    }
    
    open func addSubViews(_ views: [UIView]) {
        
        for view in views {
            
            self.addSubview(view)
        }
    }
    
}
