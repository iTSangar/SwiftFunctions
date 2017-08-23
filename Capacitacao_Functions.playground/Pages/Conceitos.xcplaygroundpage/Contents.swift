/*:
 
 # Conceitos
 
 */
//: > *Functions are self-contained chunks of code that perform a specific task - Apple®*

//: > *Uma função nada mais é do que um bloco de código que pode ser executado sempre que necessário - Pesquisa do Google®*

import UIKit

//: Alguns Exemplos de funções:

func printHelloWorld() {}

func printMessage(message: String) {}

func printMessage(message: String, times: Int) {}

func formatDate(date: Date, format: String = "dd/MM/YY") -> String { return "" }

func square(base b: Double, height h: Double) -> Double { return 0.0 }

func getByFilter(_ filter: String) -> Double { return 0.0 }


/*:
 ## Retorno da Função
 Toda função retorna um tipo de valor.
 
 Mas e a função `printHelloWorld()` aqui de cima??
 */

let value: () = printHelloWorld()


/*:
 ## Tipo da Função
 Cada função tem um tipo, composto pelos tipos dos parâmetros e pelo tipo do retorno.
 
 Existe uma maneira de determinarmos o tipo da função:
 
 `(parameter type) -> return type`
 
 */

let function1: () -> ()
let function2: (String) -> ()
let function3: (String, Int) -> Void
let function4: (Date, String) -> String
let function5: (Double, Double) -> Double

/*:
 A partir disso podemos utilizar funções de várias maneiras:
 - armazenar um função em uma variável
 - passar uma função como parâmetro para outra função
 - retornar uma função no retorno de uma função
 
 
 **Por isso as funções em Swift são conhecidas como funções de primeira classe ou First-class Citizen.**
 */

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

// Função como variável:
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")

// Função como parâmetro:
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

let param: ((Int, Int) -> Int, Int, Int) -> Void

printMathResult(multiplyTwoInts, 3, 5)

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
