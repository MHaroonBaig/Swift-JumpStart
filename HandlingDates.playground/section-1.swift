// Playground - noun: a place where people can play

import UIKit


var currentDate = NSDate() // Getting the current date


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

let dateComponents2 = NSDateComponents()
dateComponents2.hour = 5
dateComponents2.minute = 30

var calculatedDate = calendar.dateByAddingComponents(dateComponents2, toDate: currentDate, options: nil)


let components = calendar.components(.MonthCalendarUnit | .DayCalendarUnit, fromDate: currentDate)
components.day
components.month


let components2 = NSDateComponents()
components2.month = 3
components2.day = 19
components2.year = 1993

var theDate = calendar.dateFromComponents(components2)
theDate




