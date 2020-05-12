//
//  CustomTableView.swift
//  
//
//  Created by Richard Peralta on 4/24/20.
//

import UIKit

class CustomTableView: UITableViewCell {

    private var collapsed = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func registerTableViewCells(){
        let textFieldCell = UINib(nibName: "customTableViewCell", bundle: nil)
        
        self.tableview.register(textFieldCell, forCellReuseIdentifier: "CustomTableViewCell")
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.tableview.dataSource = self
        self.tableview.delegate = self
        
        self.registerTableViewCells()
        
    }
    
    var isCollapsible: bool{
        return true
    }
    
    
}
