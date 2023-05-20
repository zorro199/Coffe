//
//  UIview  + Ext.swift
//  Coffe
//
//  Created by Zaur on 20.05.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { addSubview($0) }
    }
}

