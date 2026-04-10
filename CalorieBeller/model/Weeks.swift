//
//  Weeks.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import Foundation

// MARK: - Daily goals

let calorieGoal: Double = 2500
let proteinGoal: Double = 160
let carbsGoal: Double = 280
let fatGoal: Double = 80

// MARK: - Models

struct Dish {
    var name: String
    var calories: Double
    var massInG: Double
    var proteinInG: Double
    var fatInG: Double
    var carbsInG: Double
    var icon: String
}

struct Day {
    var label: String
    var dishes: [Dish]

    var totalCalories: Double { dishes.reduce(0) { $0 + $1.calories } }
    var totalProtein: Double  { dishes.reduce(0) { $0 + $1.proteinInG } }
    var totalFat: Double      { dishes.reduce(0) { $0 + $1.fatInG } }
    var totalCarbs: Double    { dishes.reduce(0) { $0 + $1.carbsInG } }
}

// MARK: - Week data

let weekDays: [String: Day] = [
    "Mo": Day(label: "Montag", dishes: [
        Dish(name: "Overnight Oats",       calories: 380, massInG: 300, proteinInG: 15, fatInG:  8, carbsInG: 60, icon: "🥣"),
        Dish(name: "Hähnchen mit Reis",    calories: 680, massInG: 400, proteinInG: 50, fatInG: 12, carbsInG: 75, icon: "🍗"),
        Dish(name: "Protein Shake",        calories: 220, massInG: 300, proteinInG: 30, fatInG:  4, carbsInG: 20, icon: "🥤"),
        Dish(name: "Nüsse & Früchte",      calories: 310, massInG: 150, proteinInG:  8, fatInG: 20, carbsInG: 28, icon: "🥜"),
    ]),
    "Di": Day(label: "Dienstag", dishes: [
        Dish(name: "Rührei mit Toast",     calories: 450, massInG: 250, proteinInG: 28, fatInG: 20, carbsInG: 35, icon: "🍳"),
        Dish(name: "Thunfisch Salat",      calories: 520, massInG: 300, proteinInG: 45, fatInG: 18, carbsInG: 20, icon: "🥗"),
        Dish(name: "Banane",               calories:  90, massInG: 120, proteinInG:  1, fatInG:  0, carbsInG: 22, icon: "🍌"),
        Dish(name: "Pasta Bolognese",      calories: 750, massInG: 400, proteinInG: 38, fatInG: 22, carbsInG: 85, icon: "🍝"),
    ]),
    "Mi": Day(label: "Mittwoch", dishes: [
        Dish(name: "Oatmeal mit Beeren",   calories: 450, massInG: 300, proteinInG: 12, fatInG:  7, carbsInG: 72, icon: "🥣"),
        Dish(name: "Hähnchen mit Reis",    calories: 680, massInG: 400, proteinInG: 50, fatInG: 12, carbsInG: 75, icon: "🍗"),
        Dish(name: "Protein Shake",        calories: 220, massInG: 300, proteinInG: 30, fatInG:  4, carbsInG: 20, icon: "🥤"),
    ]),
    "Do": Day(label: "Donnerstag", dishes: [
        Dish(name: "Joghurt mit Granola",  calories: 340, massInG: 250, proteinInG: 14, fatInG:  9, carbsInG: 48, icon: "🍦"),
        Dish(name: "Poke Bowl",            calories: 600, massInG: 350, proteinInG: 30, fatInG: 18, carbsInG: 70, icon: "🍱"),
        Dish(name: "Apfel",                calories:  80, massInG: 180, proteinInG:  0, fatInG:  0, carbsInG: 20, icon: "🍎"),
        Dish(name: "Lachsfilet & Gemüse",  calories: 620, massInG: 350, proteinInG: 48, fatInG: 25, carbsInG: 18, icon: "🐟"),
    ]),
    "Fr": Day(label: "Freitag", dishes: [
        Dish(name: "Pancakes",             calories: 520, massInG: 200, proteinInG: 14, fatInG: 16, carbsInG: 78, icon: "🥞"),
        Dish(name: "Burger",               calories: 850, massInG: 350, proteinInG: 42, fatInG: 38, carbsInG: 65, icon: "🍔"),
        Dish(name: "Protein Shake",        calories: 220, massInG: 300, proteinInG: 30, fatInG:  4, carbsInG: 20, icon: "🥤"),
    ]),
    "Sa": Day(label: "Samstag", dishes: [
        Dish(name: "Avocado Toast",        calories: 410, massInG: 200, proteinInG: 10, fatInG: 22, carbsInG: 45, icon: "🥑"),
        Dish(name: "Pizza",                calories: 900, massInG: 450, proteinInG: 30, fatInG: 25, carbsInG: 110, icon: "🍕"),
        Dish(name: "Eis",                  calories: 280, massInG: 150, proteinInG:  4, fatInG: 12, carbsInG: 40, icon: "🍨"),
    ]),
    "So": Day(label: "Sonntag", dishes: [
        Dish(name: "French Toast",         calories: 480, massInG: 200, proteinInG: 16, fatInG: 18, carbsInG: 62, icon: "🍞"),
        Dish(name: "Hähnchen Salat",       calories: 450, massInG: 300, proteinInG: 40, fatInG: 15, carbsInG: 10, icon: "🥗"),
        Dish(name: "Smoothie Bowl",        calories: 380, massInG: 250, proteinInG:  8, fatInG:  6, carbsInG: 72, icon: "🍓"),
        Dish(name: "Steak & Kartoffeln",   calories: 780, massInG: 400, proteinInG: 55, fatInG: 30, carbsInG: 45, icon: "🥩"),
    ]),
]





