//: Playground - noun: a place where people can play

import UIKit

class Pokemon {
  var level = 1
  var health = 100
  var type = "None"
  var name : String?
  var damage : Int?
  
  init (startingLevel : Int) {
    level = startingLevel
  }
  
  func attackWithMultiplier(multiplier : Int) -> Int {
    self.damage = level * multiplier
    return self.damage!
  }
  
  func levelUp() {
    level++
  }
}

class Ponyta : Pokemon {
//  type = "Fire"
//  self.name = "Horseface"   **What's wrong here?  How do I name them?
}
class Rapidash : Ponyta {
//  self.name = "Speedy"
}
class Chinchou : Pokemon {
//  type = "Water"
//  self.name = "Chinchilla"
}
class Lanturn : Chinchou {
//  self.name = "Brighty"
}
class Boldore : Pokemon {
//  type = "Rock"
//  self.name = "Oolite"
}
class Gigalith : Boldore {
//  self.name = "Schist"
}
class Vanillite : Pokemon {
//  type = "Ice"
//  self.name = "Cup"
}
class Vanillish : Vanillite {
//  self.name = "Cone"
}
class Drowzee : Pokemon {
//  type = "Psychic"
//  self.name = "Narcolepsy"
}
class Hypno : Drowzee {
//  self.name = "Sleepy"
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

func battle(fighterOne : Pokemon, fighterTwo : Pokemon) -> String {
  fighterOne.attackWithMultiplier(2)
  fighterTwo.attackWithMultiplier(3)
  fighterOne.damage
  fighterTwo.damage
  if fighterOne.damage < fighterTwo.damage {
    fighterTwo.levelUp()
    return "FighterTwo wins!"
  } else {
    fighterOne.levelUp()
    return "FighterOne wins!"
  }
}

battle(myHypno, myChinchou)




