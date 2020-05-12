//
//  LevelTwoViewController.swift
//  SupportsMe
//
//  Created by Richard Peralta on 4/29/20.
//  Copyright © 2020 TeamCESAR++. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"


class LevelTwoViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    fileprivate let cellId = "ExpandableCell"
    fileprivate let headerId = "headerId"
    fileprivate let padding: CGFloat = 16
    fileprivate var amountOfCells: Int = 0
    fileprivate var tempSet: Set<SchoolResource> = []
    fileprivate var expandedHeight: CGFloat = 200
    fileprivate var notExpandedHeight: CGFloat = 50
    fileprivate var isExpanded = [Bool]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupCollectionView()
    
        SetupCollectionViewLayout()
        
        changeCellNumber(ident: LevelOneViewController().returnIdentifier())
        
        isExpanded = Array(repeating: false, count: amountOfCells)
    }
    
    
 
    fileprivate func SetupCollectionView() {
        collectionView.backgroundColor = #colorLiteral(red: 0.004061666783, green: 0.03260457888, blue: 0.2003052831, alpha: 1)
           
           collectionView.register(ExpandableCell.self, forCellWithReuseIdentifier: cellId)
           
           collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
       }
       
       fileprivate func SetupCollectionViewLayout() {
           if let layout = collectionViewLayout as? UICollectionViewFlowLayout
           {
               
                layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
                layout.minimumInteritemSpacing = 5
                layout.minimumLineSpacing = 5
        
        }
       }
       
       
      
       override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
           let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
           
           return header
       }
       
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
           return .init(width: view.frame.width, height: 350)
       }
       
       override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           
           return amountOfCells
           
           }

       
       override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ExpandableCell
            cell.tag = indexPath.row
            let tagNumber: Int = cell.tag.self
            cell.delegate = self
            
            let expansionButton = UIButton(type: .system)
            expansionButton.sizeToFit()
            expansionButton.addTarget(self, action: #selector(ExpandableCell.topButtonTouched(_:)), for: .touchUpInside)
        
            let sortedCategories = tempSet.sorted(by: {$0.ResourceName < $1.ResourceName})
            
            let dynamicLabel = UILabel()
            dynamicLabel.text = sortedCategories[tagNumber].ResourceName
            dynamicLabel.textColor = .white
            dynamicLabel.sizeToFit()
            
            cell.contentView.addSubview(dynamicLabel)
            cell.contentView.addSubview(expansionButton)

            cell.backgroundColor = #colorLiteral(red: 0.004061666783, green: 0.03260457888, blue: 0.2003052831, alpha: 1)
        
            
            
           return cell
           
       }
       
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     
            if isExpanded[indexPath.row] == true{
                return .init(width: view.frame.width - (padding * 2), height: expandedHeight)
            }
            else{
                return .init(width: view.frame.width - (padding * 2), height: notExpandedHeight)
            }
       }

    
    func changeCellNumber(ident: Int)
    {
        
        switch ident
        {
        case 0:
            amountOfCells = DataManager().CampusResourcesCount()
            tempSet = DataManager().CampusResourcesSet()
            break
        case 1:
            amountOfCells = DataManager().AcademicResourcesCount()
            tempSet = DataManager().AcademicResourcesSet()
            break
        case 2:
            amountOfCells = DataManager().StudentSupportCount()
            tempSet = DataManager().StudentSupportSet()
            break
        case 3:
            amountOfCells = DataManager().StudentLifeCount()
            tempSet = DataManager().StudentLifeSet()
            break
        case 4:
            amountOfCells = DataManager().CommunityCount()
            tempSet = DataManager().CommunitySet()
            break
        case 5:
            amountOfCells = DataManager().TransportationCount()
            tempSet = DataManager().TransportationSet()
            break
        case 6:
            amountOfCells = DataManager().FinancialCount()
            tempSet = DataManager().FinancialSet()
            break
        case 7:
            amountOfCells = DataManager().LibraryCount()
            tempSet = DataManager().LibrarySet()
            break
        case 8:
            amountOfCells = DataManager().SocialsCount()
            tempSet = DataManager().SocialsSet()
            break
        default:
            amountOfCells = 1
            return
        }
    }
    
   
}



extension LevelTwoViewController: ExpandedCellDelegate
{

    @objc func topButtonTouched(indexPath: IndexPath)
    {
        isExpanded[indexPath.row] = !isExpanded[indexPath.row]
        UIView.animate(withDuration: 0.8, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.9, options: UIView.AnimationOptions.curveEaseInOut, animations: {self.collectionView.reloadItems(at: [indexPath])}, completion: {success in print("success")})
    }
}
