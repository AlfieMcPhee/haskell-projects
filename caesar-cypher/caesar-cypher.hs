caesar-cypher.hs

module Main where
import Data.char

shiftChar :: Int -> Char -> Char
shiftChar n c 
  | isAsciiLower c = rotate 'a'
  | isAsciiUpper c = rotate 'A'
  | otherwise      = c
  where
     rotate base = chr (ord base + (ord c - ord base + n) `mod` 26)

encrypt :: Int -> String -> String
encrypt n = map (shiftChar n)

decrypt :: Int -> String -> String
decrypt n = encrypt (negate n)

main :: IO()
main = do
  let message = "Hello World"
    encrypted = encrypt 3 message
  putStrLn encrypt
  putStrLn ()
