module MonsterAttack exposing (..)


type alias MonsterDamage =
    String


attackWithSword1 : MonsterDamage -> Int -> MonsterDamage
attackWithSword1 monsterDamage strength =
    monsterDamage ++ "Attacked with sword of strength "++ String.fromInt strength ++ "."

attackWithClaw1 : MonsterDamage -> Int -> MonsterDamage
attackWithClaw1 monsterDamage strength =
    monsterDamage ++ "Attacked with claw of strength "++ String.fromInt strength ++ "."


attack1 : MonsterDamage -> String
attack1 damage =
    let
        annalynAttack = attackWithSword1 damage 5
        kazakAttack = attackWithClaw1 annalynAttack 1
        finalAttack = attackWithClaw1 kazakAttack 1
    in
    attackWithSword1 finalAttack 5

   



attackWithSword2 : Int -> MonsterDamage -> MonsterDamage
attackWithSword2 strength monsterDamage =
    monsterDamage ++ "Attacked with sword of strength "++ String.fromInt strength ++ "."


attackWithClaw2 : Int -> MonsterDamage -> MonsterDamage
attackWithClaw2 strength monsterDamage =
    monsterDamage ++ "Attacked with claw of strength "++ String.fromInt strength ++ "."


attack2 : MonsterDamage -> MonsterDamage
attack2 monsterDamage =
    monsterDamage
        |> attackWithSword2 5
        |> attackWithClaw2 1
        |> attackWithClaw2 1
        |> attackWithSword2 5




attack3 : MonsterDamage -> MonsterDamage
attack3 =
    attackWithSword2 5 >> attackWithClaw2 1 >> attackWithClaw2 1 >> attackWithSword2 5
        



