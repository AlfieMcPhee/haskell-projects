-- Lab Sheet Two Independently

square_and_cube x = (x*x, x*x*x)
add_tuple (a,b) = a + b
first (a,b) = a
second (a,b) = b
swap (a,b) = (b,a)
two_to_three (a,b) c = (a,b,c)

head_squared list = (head*list)^2
third list = list !! 2
second_tail list = tail (tail list)
third_heard = head (tail(tail list))
first_plus_last = head list + last list
prepend_two list a b = a : b : list

two_length list1 list2 = length list1 + length list2
make_palindrome list = list ++ reverse list
sum_and_product list = (sum list, product list)
four_through_six list = take 3 (drop 3 list)
both_in list x y = x `elem` list && y `elem` list 

only_odds list = [x | x <- list, x `mod` 2 == 1]
between a b list = [x | x <- list, x > a && x < b]
number_of_es string = [x | x <- string, x == 'e']

proper_fizzbuzz = [
 let div_3 = x `mod` 3 == 0
     div_5 = x `mod` 5 == 0
 in
    if div_3 && div_5 then "fizzbuzz"
    else if div_3 then "fizz"
    else if div_5 then "buzz"
    else show x
 | x<-[1..]]
