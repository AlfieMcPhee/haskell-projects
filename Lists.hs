-- Lists Revision
-- Lists are always in square brackets

lostNumbers = [4,8,15,16,23,42]

-- We can JOIN lists like this
[1,2,3,4] ++ [9,10,11,12]
-- This would give us [1,2,3,4,9,10,11,12]
 
 -- To immediately add something to the beginning of a list we can do this
 
 'A' : "SMALL CAT"
 -- And this would give us "A SMALL CAT"

-- Or Alternatively
5:[6,7,8,9]
-- Would give us [5,6,7,8,9]

-- This is because [1,2,3] is pretty much just 1:2:3:[] and we prepend to the empty list

-- If we want to search a list by index

"Hello" !! 2
-- We would get 'l' as lists are 0 indexed

-- We can also have lists within lists
[[1,2,3,4], [4,5,6,7]] -- and So On

{- List Functions
 head = returns the first element
 tail = returns the tail (everything but the head)
 last = returns last element
 init = takes a list and returns everything except the last element
 length = returns the lists length
 null = checks whether the list is empty or not
 reverse = reverses list
 take = takes a number and a list and extracts that many elements from the beginning of the list
 drop = does the opposite of take
 maximum = finds the largest element
 minimum = finds the smallest element
 sum = adds up sum of elements
 products = calculates product of numbers
 elem takes a list and tells us if a element is in the list, ie 4 `elem` [1,2,3] is false.-}

 -- Ranges
[1..20] = [1,2,3,4,5,6,7..20]
['a'..'z'] = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t..]

-- We can also introduce a step
[2,4..20] = [2,4,6,8.. 20]

{- Infinite Lists
cycle = takes a list and turns it into an infinte list
repeat = takes an element and produces a list of that element
ie take 10 (repeat 5) = [5,5,5,5,5,5,5,5,5,5]-}

-- List Comprehensions

[x*2 | x <- [1..10]]
-- This program would make a list of x*2 from the range provided, 1..10
-- Giving us [2,4,6,8,10,12,14,16,18,20]

-- We can also specify conditions for this (predicates)
[x*2 | x <- [1..10], x*2 >= 12]
-- This would return the same list as above but only where x is greater than or equal to 12

-- Another example
[x|x <- [50..100], x `mod` 7 == 3 ]

-- This would return a list of the numbers from 50 to 100 where they have a remainder of 3 when divided by 7
--
-- We can have several conditions
ghci> [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]  
-- This would give us the numbers from 10 -> 20 which arent 13,15 or 19.

-- Predicates Can Also Combine Lists
ghci> [ x*y | x <- [2,5,10], y <- [8,10,11]]  

-- Here we can use two lists and multiply them by having each as a condition 

-- Wildcards
-- We use _ when we don't care about that element in the list
-- ie
-- length' xs = sum [1 | _ <- xs]  -- Here we are adding up the elements of a list to find its length but we don't care about the actual elements


-- We can use list comprehensions with strings too
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]  
-- Here we are removing all lowercase from the string given

