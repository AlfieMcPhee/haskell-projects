-- Revision Of Recursive Functions

maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs) = max x (maximum' xs)

-- If we trace this algorithm we get
-- max 2 maximum[5,1]
-- which then goes to
-- max 2 max 5 maximum[1]
-- max 2 max 5, 1
-- We know that 5 is clearly the largest value of these so we get 5.


-- Implementing a recurisve function by using guards

replicate' :: (Num i, Ord i) => i -> a -> [a]  
replicate' n x  
    | n <= 0    = []  
    | otherwise = x:replicate' (n-1) x 

-- We are using guards here instead of patterns as we are testing for a boolean expression
-- If n is <= 0 then we return an empty list, otherwise we have x as the head of a list and x, (n-1)
-- times for the tail.
--
-- -- Eventually the (n-1) will cause our function to hit the edge case, n <= 0.
-- 
-- -- Implementation of take

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take'(n-1) xs

{- The first pattern specifies that if we try to take 0 or an empty number then we get an empty list,
 - We use _ as we don't care what it is in this case}
 -
 - The second pattern indicates if we try and take nothing from an already empty list, we get an empty list
 -
 - The third pattern breaks the list into a head and a tail, then it takes n elements from a list = a list
 - With x as the head and n-1 from the tail -}
 

