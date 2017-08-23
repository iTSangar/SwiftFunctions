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


/*:
 ## Retorno da Função
 Toda função retorna um tipo de valor.
 
 Mas e a função `printHelloWorld()` aqui de cima??
 */

let value = printHelloWorld()

/*:
 ## Tipo da Função
 Cada função tem um tipo, composto pelos tipos dos parâmetros e pelo tipo do retorno.
 
 Existe uma maneira de determinarmos o tipo da função:
 
 */




/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
