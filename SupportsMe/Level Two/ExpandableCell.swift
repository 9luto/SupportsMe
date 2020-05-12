//
//  ExpandableCell.swift
//  SupportsMe
//
//  Created by Richard Peralta on 5/5/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import UIKit

protocol ExpandedCellDelegate:NSObjectProtocol {
    func topButtonTouched(indexPath: IndexPath)
}

class ExpandableCell: UICollectionViewCell {
    var topButton: UIButton!
    weak var delegate: ExpandedCellDelegate?
    
    public var indexPath: IndexPath!
    
   @objc func topButtonTouched(_ sender: UIButton)
    {
        if let delegate = self.delegate
        {
            LevelTwoViewController().topButtonTouched(indexPath: indexPath)
        }
    }
}
