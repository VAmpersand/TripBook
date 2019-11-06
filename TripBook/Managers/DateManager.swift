//
//  DateManager.swift
//  TripBook
//
//  Created by Viktor on 06.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class DateManager {
    
    func convertDateToStandartDateStr(date: Date) -> String {
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "dd MMM yyyy"
        let date = dateformatter.string(from: date)
        return date
    }
    
    func convertDateToShortDateStr(date: Date) -> String {
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "dd MMM"
        let date = dateformatter.string(from: date)
        return date
    }
    
    func convertDateToYearStr(date: Date) -> String {
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yy"
        let date = dateformatter.string(from: date)
        return date
    }
    
    func convertDateToMounthStr(date: Date) -> String {
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "MMM"
        let date = dateformatter.string(from: date)
        return date
    }
    
    func convertDateToDayStr(date: Date) -> String {
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "dd"
        let date = dateformatter.string(from: date)
        return date
    }
    
    
    func setDateStyleForTripListTVC(startDate: Date, endDate: Date) -> String {
        
        var dateString = ""
        
        let startMounthStr = convertDateToMounthStr(date: startDate)
        let endMounthStr = convertDateToMounthStr(date: endDate)
        
        let startDateShortStr = convertDateToShortDateStr(date: startDate)
        let endDateShortStr = convertDateToShortDateStr(date: endDate)
        
        let yearStr = convertDateToYearStr(date: endDate)
        
        let startDayStr = convertDateToDayStr(date: startDate)
    
        if startMounthStr == endMounthStr {
            dateString = startDayStr + " - " + endDateShortStr + " " + yearStr
        } else {
            dateString = startDateShortStr + " - " + endDateShortStr + " " + yearStr
        }
    
        return dateString
    }
    
}

