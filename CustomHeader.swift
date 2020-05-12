//
//  CustomHeader.swift
//  
//
//  Created by Richard Peralta on 4/24/20.
//

import SwiftUI

struct CustomHeader: View {
   
@IBOutlet weak var headerViewHeightConstraint: NSLayoutConstraint!
    
    let headerViewMaxHeight: CGFloat = 250
    let headerViewMinHeight: CGFloat = 44 + UIApplication.shared.statusBarFrame.height
    
struct CustomHeader_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeader()
    }
}
