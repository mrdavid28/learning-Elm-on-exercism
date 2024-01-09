module AnnalynsInfiltration exposing (canFastAttack, canFreePrisoner, canSignalPrisoner, canSpy, stealthAttackDamage)


canFastAttack : Bool -> Bool
canFastAttack knightIsAwake =
       not knightIsAwake 


canSpy : Bool -> Bool -> Bool -> Bool
canSpy knightIsAwake archerIsAwake prisonerIsAwake =
    knightIsAwake || archerIsAwake || prisonerIsAwake

canSignalPrisoner : Bool -> Bool -> Bool
canSignalPrisoner archerIsAwake prisonerIsAwake =
     not archerIsAwake && prisonerIsAwake   


canFreePrisoner : Bool -> Bool -> Bool -> Bool -> Bool
canFreePrisoner knightIsAwake archerIsAwake prisonerIsAwake petDogIsPresent =
    (petDogIsPresent && not archerIsAwake ) || (prisonerIsAwake && not archerIsAwake && not knightIsAwake)

stealthAttackDamage : Bool -> Int
stealthAttackDamage annalynIsDetected =
      if annalynIsDetected then 7 else 12
