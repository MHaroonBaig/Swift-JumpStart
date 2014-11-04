// Playground - noun: a place where people can play

import UIKit

/*
Just remember these Four classes. These can be a life saviour in future:
-- NSDate (for getting the current date and stuff)
-- NSDateFormatter (DateToString ot StringToDate conversion and different formatting styles)
-- NSDateComponents (Creating a date and dates oriented problem solving)
-- NSCalender (used side by side with NSDateComponents and NSDate fot Dates related calculations)
*/

var currentDate = NSDate() // Getting the current date

// Conversion of Date to String. Three methods are described here.
var dateToString = NSDateFormatter.localizedStringFromDate(currentDate, dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.NoStyle)

var dateToString2 = currentDate.description

var dateToString3 = currentDate.descriptionWithLocale(nil)

// ---------------------- Break ------------------------------

// NSCalendar and NSDateComponents is having a very strong relation. Co-related with each other.
let calendar = NSCalendar.currentCalendar()

let dateComponents = NSDateComponents()
dateComponents.weekday = 3
dateComponents.day = 26
dateComponents.month = 3

var date: NSDate
date = calendar.dateFromComponents(dateComponents)!

// ---------------------- Break ------------------------------

// What would be the date after 5 hours and 30 minutes? Date thing processing goes like that.
let dateComponents2 = NSDateComponents()
dateComponents2.hour = 5
dateComponents2.minute = 30

var calculatedDate = calendar.dateByAddingComponents(dateComponents2, toDate: currentDate, options: nil)

// ---------------------- Break ------------------------------

/* Extracting some specific parts from the date, like, a month or a day.
The following masks can be used with a bitwise OR operator:
.CalendarUnitEra
.CalendarUnitYear
.CalendarUnitMonth
.CalendarUnitDay
.CalendarUnitHour
.CalendarUnitMinute
.CalendarUnitSecond
.CalendarUnitWeekday
.CalendarUnitQuarter
.CalendarUnitWeekOfMonth
.CalendarUnitWeekOfYear
.CalendarUnitYearForWeekOfYear
.CalendarUnitCalendar
.CalendarUnitTimeZone
*/
let components = calendar.components(.MonthCalendarUnit | .DayCalendarUnit, fromDate: currentDate)
components.day
components.month

// ---------------------- Break ------------------------------

// Creating a Date from DateComponents.
let components2 = NSDateComponents()
components2.month = 3
components2.day = 19
components2.year = 1993

var theDate = calendar.dateFromComponents(components2)
theDate

// ---------------------- Break ------------------------------




