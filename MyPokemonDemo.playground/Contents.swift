//: Playground - noun: a place where people can play

import UIKit

class Car {
    var make = "ford"
    var model = "mustang"
    var year = "1998"
    //var interior : String?
    //the interior property is optional, has no value, and thus we need to tell it the type
}

let myBFF = "Russell Wilson"
//myBFF = "Someone else"
var myFavFood = "pizza"
myFavFood = "lasagne"

let myNum = 21
// hold down option and click on the variable or class, and XCode will give you info
// this is an Int

let myOtherNum = 5.238923
// this is a Double

class Pokemon {
  var level = 1
  var health = 100
  var type = "None"
  
  func levelUp() {
    level++
  }
}

class Squirtle {
  //this can be refactored now so that Squirtle inherits from Pokemon
    var health = 100
    let type = "Water"
    var level = 1
    var name : String?
  
  init (startingLevel : Int) {
    level = startingLevel
  }
  
    func levelUp() {
        level = level + 1
        self.level = self.level + 1
    }
    
    func bubbleWithMultiplier(multiplier : Int, enemyType : String) -> Int {
        if level < 5 {
            return 20 //this value must be an Int because the return type is Int
        } else {
            return 30
        }
        //let damage = 30
        //the damage variable is local and will die as soon as the bubble method is done running
    }
}

func doSomething() {
    //a function - it's outside the classes, so it is not a method
}

let mySquirty = Squirtle(startingLevel: 6) //created a Squirtle named my Squirtle

mySquirty.bubbleWithMultiplier(2, enemyType: "Fire") // we called the bubble method; the word 'multiplier' got dropped - Apple wants you to name the method bubbleWithMultiplier and then the bare 2 makes more sense. ALL PARAMETERS MUST BE NAMED EXCEPT THE FIRST

class WarTurtle : Squirtle {
  //WarTurtle properties and methods go here. WarTurtle already has everything from Squirtle.  SA-WEET
}
