//: Playground - noun: a place where people can play

import UIKit

class Pokemon {
  var level = 1
  var health = 100
  var type = "None"
  var name : String?
  
  init (startingLevel : Int) {
    level = startingLevel
  }
  
  func levelUp() {
    level++
  }
}

class Ponyta : Pokemon {
//  type = "Fire"
  func tailWhip() {
    
  }
}
class Rapidash : Ponyta {
  func fireBlast() {
    
  }
}
class Chinchou : Pokemon {
//  type = "Water"
  func bubble() {
    
  }
}
class Lanturn : Chinchou {
  func thunderWave() {
    
  }
}
class Boldore : Pokemon {
//  type = "Rock"
  func headbutt() {
    
  }
}
class Gigalith : Boldore {
  func sandstorm() {
    
  }
}
class Vanillite : Pokemon {
//  type = "Ice"
  func icicleSpear() {
    
  }
}
class Vanillish : Vanillite {
  func mirrorCoat() {
    
  }
}
class Drowzee : Pokemon {
//  type = "Psychic"
  func hypnosis() {
    
  }
}
class Hypno : Drowzee {
  func futureSight() {
    
  }
}

let myPonyta = Ponyta(startingLevel: 4)
let myRapidash = Rapidash(startingLevel: 3)
let myChinchou = Chinchou(startingLevel: 1)
let myLanturn = Lanturn(startingLevel: 2)
let myBoldore = Boldore(startingLevel: 8)
let myGigalith = Gigalith(startingLevel: 9)
let myVanillite = Vanillite(startingLevel: 3)
let myVanillish = Vanillish(startingLevel: 6)
let myDrowzee = Drowzee(startingLevel: 3)
let myHypno = Hypno(startingLevel: 8)
