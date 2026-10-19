-- Pattern Matching

{-If you want to bind, say, the first three elements to variables and the rest of the list to another variable, you can use something like x:y:z:zs. It will only match against lists that have three elements or more.

Now that we know how to pattern match against list, let’s make our own implementation of the head function. -}

    head' :: [a] -> a  
    head' [] = error "Can't call head on an empty list, dummy!"  
    head' (x:_) = x 

-- Here we are telling the head' function to only focus on the head of a list, not the tail
-- Hence the _ wildcard


-- Guards
-- We can use guards to make sure whether properties of things are true or false

densityTell :: (RealFloat a) => a -> String  
densityTell density  
    | density < 1.2 = "Wow! You're going for a ride in the sky!"  
    | density <= 1000.0 = "Have fun swimming, but watch out for sharks!"  
    | otherwise   = "If it's sink or swim, you're going to sink."

-- Here the guards provide special rules for what density is

-- We can also guards with functions
densityTell :: (RealFloat a) => a -> a -> String  
densityTell mass volume  
    | mass / volume < 1.2 = "Wow! You're going for a ride in the sky!"  
    | mass / volume <= 1000.0 = "Have fun swimming, but watch out for sharks!"  
    | otherwise   = "If it's sink or swim, you're going to sink." 

-- Implementing our own minimum function

min' :: Int -> Int -> Int 
min a b
  | a > b = b
  | otherwise a

-- We can create rules bound to an expression to save repeating yourself

densityTell :: (RealFloat a) => a -> a -> String  
densityTell mass volume  
    | density < 1.2 = "Wow! You're going for a ride in the sky!"  
    | density <= 1000.0 = "Have fun swimming, but watch out for sharks!"  
    | otherwise   = "If it's sink or swim, you're going to sink."  
    where density = mass / volume  

-- Here we define density as mass / volume at the very end after the guards to prevent repeating the function
--
