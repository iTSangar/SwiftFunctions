/*:
 
 # Closures
 
 > *São blocos autônomos de funcionalidades que podem ser passados(enviados) e usados em seu código. Closures em Swift são semelhantes aos blocks em C e Objective-C e a lambdas em outras linguagens de programação. - Apple®*
 */

import UIKit

/*:
 ## Sintax de uma closure
 
 ```
 { (parameters) -> return type in
    statements
 }
 ```
 */

/*:
 ## Function x Closure
 * Function:
    * tem um nome
    * tem a palavra-chave `func`
    * não tem a palavra-chave `in`
 
 * Closure:
    * não tem um nome
    * não tem a palavra-chave `func`
    * tem a palavra-chave `in`
 */

// function
func giveAFunc() { }

// closure
var giveNoFunc = { () -> () in }


giveAFunc()
giveNoFunc()

//: ## Transformando uma função em closure

func sayHello(name: String) -> String {
    return "Hello \(name)"
}

/*:
 removemos as chaves
 ```
 func sayHello(name: String) -> String
    return "Hello \(name)"
 ```
 */

/*:
 adicionamos a palavra-chave in
 ```
 func sayHello(name: String) -> String in
    return "Hello \(name)"
 ```
 */

/*:
 removemos a palavra-chave func e o nome da função
 ```
 (name: String) -> String in
    return "Hello \(name)"
 ```
 */

/*:
 adicionamos as chaves para fechar o bloco do código
 ```
 { (name: String) -> String in
    return "Hello \(name)"
 }
 ```
 */

// finalizado
var sayHelloClosure = { (name: String) -> String in
    return "Hello \(name)"
}

sayHelloClosure("moto")

/*:
 ## Exemplo: Map

 ![map](map-inicio.png)
 
 
 ![map-fim](map-usando.png)
 
 
 */

/*:
 ## Memory Leak
 
 ![leak](closure-leak.png)
 
 ```
 class CustomView:UIView{
    var onTap:(()->Void)?
    ...
 }
 
 class ViewController:UIViewController{
    let customView = CustomView()
    var buttonClicked = false
 
    func setupCustomView(){
        var timesTapped = 0
        customView.onTap = {
            timesTapped += 1
            print("button tapped \(timesTapped) times")
            self.buttonClicked = true
        }
    }
 }
 ```
 
 */

/*:
 ## @escaping
 
 Se uma closure é passada como argumento para uma função e essa closure é executada depois que a função já foi retornada, a closure está "escapando"
 
 ```
 import HealthKit
 
 class HealthKitManager: NSObject {
 
 private let healthStore = HKHealthStore()
 
 func requestAuthorization(completion: (Bool, NSError?) -> Void) {
    var shareTypes = Set<HKSampleType>()
    var readTypes = Set<HKSampleType>()
 
    // Add Workout Type
    shareTypes.insert(HKSampleType.workoutType())
    readTypes.insert(HKSampleType.workoutType())
 
    // Request Authorization
    healthStore.requestAuthorizationToShareTypes(shareTypes, readTypes: readTypes, completion: completion)
    }
 }
 
 fonte: [escaping](https://cocoacasts.com/what-do-escaping-and-noescaping-mean-in-swift-3/)

 ```
 
 */

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
