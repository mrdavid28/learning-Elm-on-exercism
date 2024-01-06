module MariosMarvellousLasagna exposing (remainingTimeInMinutes)
--TODO define the remainingTimeInMinutes function
remainingTimeInMinutes layers timeElapsed = 
    let expectedMinutesInOven = 40 
        preparationTimeInMinutes = 2 * layers
    in 
        preparationTimeInMinutes + expectedMinutesInOven - timeElapsed