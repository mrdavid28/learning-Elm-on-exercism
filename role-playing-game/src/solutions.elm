solutions.elm 
1. One

castSpell : Int -> Player -> ( Player, Int )
castSpell manaCost player =
    case player.mana of
        Nothing ->
            ({player | health = max(player.health - manaCost) 0}, 0)
        Just mana ->
            if mana >= manaCost then
                ({player | mana = Just (mana - manaCost)}, manaCost * 2)
            else
                (player, 0)


2. TWO

castSpell : Int -> Player -> ( Player, Int )
castSpell manaCost player = case player.mana of
    Just mana -> 
        if mana < manaCost then (player, 0)
        else ({ player | mana = Just (mana - manaCost) }, 2 * manaCost)
    Nothing   -> ({ player | health = max 0 (player.health - manaCost) }, 0)




3. Three GABOR



    castSpell : Int -> Player -> ( Player, Int )
castSpell manaCost player =
    case player.mana of
        Just mana ->
            if mana >= manaCost then
                ( { player | mana = Just (mana - manaCost) }, manaCost * 2 )
            else
                ( player, 0 )
        Nothing ->
            ( { player | health = max (player.health - manaCost) 0 }, 0 )
