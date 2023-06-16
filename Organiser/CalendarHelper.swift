//
//  CalendarHelper.swift
//  Organiser
//
//  Created by Callum Jones on 16/06/2023.
//

import Foundation
import UIKit

class CalendarHelper
{

    let calendar = Calendar.current
    
    func plusMonth(date: Date) -> Date
    {
        return calendar.date(byAdding: .month, value: 1, to: date)!
    }
    
    
    func minusMonth(date: Date) -> Date
    {
        return calendar.date(byAdding: .month, value: -1, to: date)!
    }

    func monthString(date: Date) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        return dateFormatter.string(from: date)
    }
    
    func yearString(date: Date) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY"
        return dateFormatter.string(from: date)
    }

    func daysInMonth(date: Date) -> Int
    {
        let range = calendar.range(of: .day, in: .month, for: date)!
        return range.count
    }
    
    func dayOfMonth(date: Date) -> Int
    {
        let componenets = calendar.dateComponents([.day], from: date)
        return componenets.day!
    }
    
    func firstOfMonth(date: Date) -> Date
    {
        let componenets = calendar.dateComponents([.year, .month], from: date)
        return calendar.date(from: componenets)!
    }

    func weekDay(date: Date) -> Int
    {
        let componenets = calendar.dateComponents([.weekday], from: date)
        return componenets.weekday! - 2 
    }

    
}
