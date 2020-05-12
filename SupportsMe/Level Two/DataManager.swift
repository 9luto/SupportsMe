//
//  DataManager.swift
//  SupportsMe
//
//  Created by Richard Peralta on 4/30/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import Foundation

public class DataManager{
    
    static private var CampusResourcesD: Set<SchoolResource> = [
    
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Bookstore" , ResourceDesc:"All the supplies needed for classes including textbooks, pens, notebooks, college merchandise, and more. https://www.bkstr.com/sunyulstercountystore/home "),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Boutique" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Childcare" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Computer Labs" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Dining" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Emergency Messaging" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Food Pantry" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Map - Kingston Center" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Map - Stone Ridge Campus" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Nurse" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Portal & Email Help" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Public Safety" , ResourceDesc:""),
               SchoolResource(ResourceCategory: "Campus Resources" , ResourceName: "Veterans Affairs" , ResourceDesc:"")
    
    ]
    
    public func CampusResourcesCount() -> Int{
        return DataManager.CampusResourcesD.count
    }
    
    public func CampusResourcesSet() -> Set<SchoolResource>{
        return DataManager.CampusResourcesD
    }
    
    static private var StudentSupportD: Set<SchoolResource> = [
    
        SchoolResource(ResourceCategory: "Student Support" , ResourceName: "CAPS" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Support" , ResourceName: "Career Services" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Support" , ResourceName: "Counselling - Personal" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Support" , ResourceName: "Disabilities Office" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Support" , ResourceName: "EOP" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Support" , ResourceName: "Safe Space" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Support" , ResourceName: "Student Handbook" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Support" , ResourceName: "TRIO/Student Support Services" , ResourceDesc:"")
        
    ]
    
    public func StudentSupportCount() -> Int{
        return DataManager.StudentSupportD.count
    }
    
    public func StudentSupportSet() -> Set<SchoolResource>{
        return DataManager.StudentSupportD
    }
    
    
    static private var AcademicResourcesD: Set<SchoolResource> = [
    
        SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Academic Calendar" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Adviser Lookup" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Career Connection" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "COIL" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "College Catalog" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Computer Labs" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Course Search" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Degreeworks" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Faculty Directory" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Fresh Start" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Honors Program" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Internships" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Learning Strategy Specialist" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Tutoring" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Transcripts" , ResourceDesc:""),
              SchoolResource(ResourceCategory: "Academic Resources" , ResourceName: "Transfer Office" , ResourceDesc:"")
              
        
    ]
    
    public func AcademicResourcesCount() -> Int{
        return DataManager.AcademicResourcesD.count
    }
    
    
    public func AcademicResourcesSet() -> Set<SchoolResource>{
        return DataManager.AcademicResourcesD
    }
    
    
    static private var StudentLifeD: Set<SchoolResource> =  [
    
    SchoolResource(ResourceCategory: "Student Life" , ResourceName: "Arts Timeline" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Life" , ResourceName: "Athletics Website" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Life" , ResourceName: "Blog" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Life" , ResourceName: "Calendar of Special Events" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Life" , ResourceName: "Clubs" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Life" , ResourceName: "Diversity" , ResourceDesc:""),
        SchoolResource(ResourceCategory: "Student Life" , ResourceName: "Student Government Organization" , ResourceDesc:"")
    
    ]
    
    public func StudentLifeCount() -> Int{
        return DataManager.StudentLifeD.count
    }
    
    
    public func StudentLifeSet() -> Set<SchoolResource>{
        return DataManager.StudentLifeD
    }
    
    static private var SocialsD: Set<SchoolResource> = [
    
    SchoolResource(ResourceCategory: "Web & Social" , ResourceName: "" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Web & Social" , ResourceName: "" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Web & Social" , ResourceName: "" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Web & Social" , ResourceName: "" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Web & Social" , ResourceName: "" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Web & Social" , ResourceName: "" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Web & Social" , ResourceName: "" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Web & Social" , ResourceName: "" , ResourceDesc:"")
        
    ]
    
    public func SocialsCount() -> Int{
        return DataManager.SocialsD.count
    }
    
    public func SocialsSet() -> Set<SchoolResource>{
        return DataManager.SocialsD
    }
    
    
    static private var LibraryD: Set<SchoolResource> = [
    
    SchoolResource(ResourceCategory: "Library" , ResourceName: "Books on Loan" , ResourceDesc:""),
         SchoolResource(ResourceCategory: "Library" , ResourceName: "Hours" , ResourceDesc:""),
         SchoolResource(ResourceCategory: "Library" , ResourceName: "Reserve a Room at Dewitt" , ResourceDesc:""),
         SchoolResource(ResourceCategory: "Library" , ResourceName: "Contact a Librarian" , ResourceDesc:""),
         SchoolResource(ResourceCategory: "Library" , ResourceName: "Interlibrary Loan" , ResourceDesc:""),
         SchoolResource(ResourceCategory: "Library" , ResourceName: "History of SUNY Ulster Buildings" , ResourceDesc:""),
        
    ]
    
    public func LibraryCount() -> Int{
        return DataManager.LibraryD.count
    }
    
    public func LibrarySet() -> Set<SchoolResource>{
        return DataManager.LibraryD
    }
    
    
    static private var TransportationD: Set<SchoolResource> = [
       SchoolResource(ResourceCategory: "Transportation" , ResourceName: "Parking Map" , ResourceDesc:""),
       SchoolResource(ResourceCategory: "Transportation" , ResourceName: "UCAT Bus Schedules" , ResourceDesc:""),
       SchoolResource(ResourceCategory: "Transportation" , ResourceName: "Directions to KCSU" , ResourceDesc:"")
     
     ]
     
     public func TransportationCount() -> Int{
         return DataManager.TransportationD.count
     }
    
    public func TransportationSet() -> Set<SchoolResource>{
        return DataManager.TransportationD
    }

   static private var FinancialD: Set<SchoolResource> = [
        
          SchoolResource(ResourceCategory: "Financial" , ResourceName: "Accounts" , ResourceDesc:""),
          SchoolResource(ResourceCategory: "Financial" , ResourceName: "Cost Calculator" , ResourceDesc:""),
          SchoolResource(ResourceCategory: "Financial" , ResourceName: "Financial Aid" , ResourceDesc:""),
          SchoolResource(ResourceCategory: "Financial" , ResourceName: "Payment Plans" , ResourceDesc:""),
          SchoolResource(ResourceCategory: "Financial" , ResourceName: "Scholarships" , ResourceDesc:"")
    ]
    
    public func FinancialCount() -> Int{
        return DataManager.FinancialD.count
    }
    
    public func FinancialSet() -> Set<SchoolResource>{
        return DataManager.FinancialD
    }
    
    
   static private var CommunityD: Set<SchoolResource> = [
    
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "Ulster County Office for the Aging" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "RUPCO" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "Ulster County Social Services" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "Ulster County Department of Health & mental Health" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "Suicide Prevention" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "Substance Abuse Prevention" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "Ulster County Chamber of Commerce" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "New Paltz Chamber of Commerce" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "Mental Health Association of Ulster County" , ResourceDesc:""),
    SchoolResource(ResourceCategory: "Community Resources" , ResourceName: "Resource Center for Accessible Living" , ResourceDesc:"")
    
    ]
    
    public func CommunityCount() -> Int{
        return DataManager.CommunityD.count
    }
    
    public func CommunitySet() -> Set<SchoolResource>{
        return DataManager.CommunityD
    }
    
    
    
}
