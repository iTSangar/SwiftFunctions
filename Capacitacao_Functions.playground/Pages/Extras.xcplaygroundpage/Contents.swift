/*:
 
 # Extras
 
 */

import UIKit

//: • parâmetros variáveis:

func sum(_ args: Int...) -> Int {
  var total: Int = 0
  
  for number in args {
    total += number
  }
  
  return total
}

sum(1, 2, 3, 4, 5)
//sum([1, 2, 3, 4, 5])

//: • parâmetros de entrada/saída

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
  let temporaryA = a
  a = b
  b = temporaryA
}

var firstInt = 3
var anotherInt = 107
swapTwoInts(&firstInt, &anotherInt)

print("firstInt is now \(firstInt), and anotherInt is now \(anotherInt)")


//: • escaping:

//: • funções aninhadas:

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
