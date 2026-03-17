//
//  Weeks.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import Foundation


struct Dish {
 var name: String
 var calories: Double
 var massInG: Double
 var proteinInG: Double
 var fatInG: Double
 var carbsInG: Double

 func toString() -> String {
   return "\(name) has a total of \(calories) calories and weights \(massInG)g \n Macros: \n Proteins: \(proteinInG)g \n Fats: \(fatInG)g \n Carbs: \(carbsInG)g"
 }
}

class Day {
   var label: String
   var dishes: [Dish] = []

   init(label: String) {
       self.label = label
   }

   func addDish(_ dish: Dish) {
       dishes.append(dish)
   }

   func totalCalories() -> Double {
       return dishes.reduce(0) { $0 + $1.calories }
   }
  
   func summary() -> String {
       let formatter = DateFormatter()
       formatter.dateStyle = .medium
       var summary : String = ""
       summary.append("--- Log for the \(formatter.string(from: date)) ---")
       for dish in dishes {
           summary.append(dish.toString())
       }
       summary.append("Gesamt: \(totalCalories()) kcal")
       return summary
   }
}



let pasta = Dish(name: "Pasta Carbonara", calories: 800, massInG: 400, proteinInG: 25, fatInG: 35, carbsInG: 80)
let salat = Dish(name: "Hähnchen Salat", calories: 450, massInG: 300, proteinInG: 40, fatInG: 15, carbsInG: 10)
let pizza = Dish(name: "Pizza", calories: 900, massInG: 450, proteinInG: 30, fatInG: 25, carbsInG: 110)
let bowl = Dish(name: "Poke Bowl", calories: 600, massInG: 350, proteinInG: 30, fatInG: 18, carbsInG: 70)

let mo = Day(label: "Montag")

let di = Day(label: "Dienstag")

let mi = Day(label: "Mittwoch")

let doer = Day(label: "Donnerstag")

let fr = Day(label: "Freitag")

let sa = Day(label: "Samstag")

let su = Day(label: "Sonntag")





