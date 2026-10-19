-- Types

-- We can choose to give explicit type declarations, which is good practice

-- ie
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
-- Here we specify our argument st is a string, and the function will return a string

-- Another Example
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
-- Here we specify x, y and z are all integers, and the program will return an integer



