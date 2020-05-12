//
//  HeaderView.swift
//  SupportsMe
//
//  Created by Richard Peralta on 4/29/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {

 
    @IBInspectable var categoryImage: UIImage = #imageLiteral(resourceName: "Childcare")
    @IBInspectable var categoryLogo: UIImage = #imageLiteral(resourceName: "campus-resources-icon")
    @IBInspectable var labelText: String = "Campus Resources"
    let attributes: [NSAttributedString.Key: Any] = [.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.white]
    
    @IBOutlet weak var headerIMG: UIImageView!
    @IBOutlet weak var headerLogo: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    
    
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        commonInit()
        
        headerIMG.image = categoryImage
        headerLogo.image = categoryLogo
        headerLabel.attributedText = NSAttributedString.init(string: labelText, attributes: attributes)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit()
    {
        let bundle = Bundle.init(for: HeaderView.self)
        
        if let viewsToAdd = bundle.loadNibNamed("HeaderView", owner: self, options: nil), let contentView = viewsToAdd.first as? UICollectionReusableView
        {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            
        }
        
        
        
        
    }
}
