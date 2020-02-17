/*:
 ## More Comparisons
 
 The comparison operator `==` is very useful, but it would get tedious quickly if you had to check equality against every number. Luckily, there are more comparisons you can make between numbers:
 */
// Less than
1 < 2
2 < 2
3 < 2

// More than
1 > 2
2 > 2
3 > 2
/*:
 Some comparisons use two symbols, right next to each other, that combine to form one meaning:
 */
// Not equal
1 != 2
2 != 2
2 != 1

// Less than or equal to
2 <= 2
1 <= 2
3 <= 2

// More than or equal to
1 >= 2
2 >= 2
3 >= 2

/*:
 Check the results sidebar to see the outcomes of these comparisons 👉.

 - note: A helpful way to remember what `>` and `<` mean is to think of the symbol as a greedy mouth, always eating the bigger value:\
 🎂>🍰


 - callout(Exercise): Practice writing out some comparison statements of your own. What happens if you try to compare non-integer types, like doubles or strings?
*/
var number1 = 1
var number2 = 2
var number3 = 0

//..true
number1 < number2
number2 >= number2 + number3

//.. comparing two different types ie. int and float won't work.. you get an error
//  number1 > 5.500
//.. it needs to be converted first
//..false
Double(number1) > 5.500

//.. use -> var number4 = 1.10 or the following stmt
var number4: Double = 1.10
//..false
number4 > 5.500

var string1 = "Hello there"
var string2 = "hello there"
var string3 = "1"

//..false
string1 == string2
//.. true
string1 < string2
//.. can't compare to different types without converting... so following won't work/error
// string3 == number1
//.. try this instead
//.. true
string3 == String(number1)
//.. or
//.. true
number1 == Int(string3)


//: Learn how to add decision points to your code on the next page.
//:
//: [Previous](@previous)  |  page 4 of 13  |  [Next: Conditionals](@next)
