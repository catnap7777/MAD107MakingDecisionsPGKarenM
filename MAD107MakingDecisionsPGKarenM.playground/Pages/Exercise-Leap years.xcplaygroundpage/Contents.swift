/*:
 ## Exercise: Leap Years
 
 To decide if a year is a leap year, there are several decisions that have to be made:
 
 - Is the year divisible by 4?
    - If so, is the year divisible by 100?
        - If not, it is a leap year.
        - If so, is the year divisible by 400?
            - If not, it is **not** a leap year.
            - If so, it is a leap year.
 
 These decisions can be made inside a function.
 
 The `number(_:, isDivisibleBy:)` function has been built into this playground to make this exercise easier. Below is an incomplete function for deciding if a given year is a leap year:
*/
func isLeapYear(_ year: Int) -> Bool {
    if number(year, isDivisibleBy: 4) {
        if year % 100 == 0 {
            if year % 400 == 0 {
                return true
            } else {
                return false
            }
        } else {
            return true
        }
        // Fill in this code...
        //return true
    } else {
        return false
    }
}

//.. rewritten using guard statements
func isLeapYear2(_ year: Int) -> Bool {
    
    if number(year, isDivisibleBy: 4) {
        
        //.. is it divisible by 100?  If not, then it's a leap year
        guard year % 100 == 0 else {
            return true
        }
        
        //.. if it was divisible by 100, is it also divisible by 400? If not, then it's not a leap year
        guard year % 400 == 0 else {
            return false
        }
        
        //.. if divisible by 4... and if divisible by 100... and divisible by 400, then it's a leap year
        return true
        
    } else {
        //.. if not divisible by 4
        return false
    }
}

// Should be true
var value1a = isLeapYear(2000)
var value1b = isLeapYear2(2000)
print("func isLeapYear1 with \"if stmts\" = \(value1a)")
print("func isLeapYear2 with \"guard stmts\" = \(value1b)\n")

// Should be false
var value2a = isLeapYear(1900)
var value2b = isLeapYear2(1900)
print("func isLeapYear1 with \"if stmts\"= \(value2a)")
print("func isLeapYear2 with \"guard stmts\" = \(value2b)\n")

// Should be true
var value3a = isLeapYear(2012)
var value3b = isLeapYear2(2012)
print("func isLeapYear1 with \"if stmts\"= \(value3a)")
print("func isLeapYear2 with \"guard stmts\" = \(value3b)\n")

// Should be false
var value4a = isLeapYear(2017)
var value4b = isLeapYear2(2017)
print("func isLeapYear1 with \"if stmts\"= \(value4a)")
print("func isLeapYear2 with \"guard stmts\" = \(value4b)\n")


//: - callout(Exercise): Complete the function above so that the rules are all followed and the examples get the correct answers.
/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 13 of 13
