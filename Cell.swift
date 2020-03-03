//
//  Cell.swift
//  XYColorIssue
//
//  Created by David Seek on 3/2/20.
//  Copyright © 2020 David Seek. All rights reserved.
//

import UIKit
import XYColor

class Cell: UITableViewCell {

    @IBOutlet weak var theLabel: UILabel!

    func bindViewModel(_ viewModel: Any) {
        
        theLabel.text = viewModel as? String

        self.setLayerBorderColor(.green)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = frame
        shapeLayer.setBorderColor(.green, with: self)
        shapeLayer.setShadowColor(.green, with: self)
        shapeLayer.setBackgroundColor(.green, with: self)
        shapeLayer.cornerRadius = 8
        
        self.layer.sublayers?.forEach { layer in
            layer.removeFromSuperlayer()
        }
        
        self.layer.addSublayer(shapeLayer)
    }
}
