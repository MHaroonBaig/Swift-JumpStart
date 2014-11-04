// Playground - noun: a place where people can play

import UIKit

var currentDate = NSDate()

var dateToString = NSDateFormatter.localizedStringFromDate(currentDate, dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.NoStyle)

var dateToString2 = currentDate.description

var dateToString3 = currentDate.descriptionWithLocale(nil)

let calendar = NSCalendar.currentCalendar()

let dateComponents = NSDateComponents()
dateComponents.weekday = 3
dateComponents.day = 26
dateComponents.month = 3

var date: NSDate
date = calendar.dateFromComponents(dateComponents)!

var 


