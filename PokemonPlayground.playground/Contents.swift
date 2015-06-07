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
  func tailWhipWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier
    println(damage)
    return damage
  }
}
class Rapidash : Ponyta {
  func fireBlastWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier;
    return damage;
  }
}
class Chinchou : Pokemon {
//  type = "Water"
  func bubbleWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier;
    return damage;
  }
}
class Lanturn : Chinchou {
  func thunderWaveWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier;
    return damage;
  }
}
class Boldore : Pokemon {
//  type = "Rock"
  func headbuttWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier;
    return damage;
  }
}
class Gigalith : Boldore {
  func sandstormWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier;
    return damage;
  }
}
class Vanillite : Pokemon {
//  type = "Ice"
  func icicleSpearWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier;
    return damage;
  }
}
class Vanillish : Vanillite {
  func mirrorCoatWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier;
    return damage;
  }
}
class Drowzee : Pokemon {
//  type = "Psychic"
  func hypnosisWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier;
    return damage;
  }
}
class Hypno : Drowzee {
  func futureSightWithMultiplier(multiplier : Int) -> Int {
    var damage = level * multiplier;
    return damage;
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

func battle(fighterOne : String, fighterTwo : String) -> String {
  if fighterOne.damage < fighterTwo.damage {
    return fighterTwo
  } else {
    return fighterOne
  }
}
myHypno.futureSightWithMultiplier(6)
myVanillish.mirrorCoatWithMultiplier(5)
battle(myHypno, myVanillish)


