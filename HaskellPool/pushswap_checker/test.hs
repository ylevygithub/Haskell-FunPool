import System.Environment

-------------------------------POUR STR5-------------------------------------------------
verifChar :: Char -> Bool
verifChar x = if (x /= '0' && x /= '1' && x /= '2' && x /= '3' && x /= '4' && x /= '5' 
    && x /= '6' && x /= '7' && x /= '8' && x /= '9')
  then False else True

pArse :: [ Char ] -> Bool
pArse [] = False
pArse (x:xs) = if verifChar x == False then False else pArse xs
-------------------------------POUR STR5-------------------------------------------------

-------------------------------POUR STR2-------------------------------------------------
parsing x = if (x == 'a' && x == 'b' && x == 'c' && x == 's' && x == 'p' && x == 'r' && x == ' ')
    then True else False
parsingStr2 (x:xs) = if parsing x == False then False else parsingStr2 xs

verifStr2 (x:xs)
    | verifChar x == True = 84
    | parsingStr2 (x:xs) == False = 84
    | otherwise = 0
-------------------------------POUR STR2-------------------------------------------------

-- verifArgs :: [ Char ] -> Int
verifArgs str1 str2 str3 str4 str5
    | str1 /= "echo" = 84
    | verifStr2 == 84 = 84
    | str3 /= "|" = 84
    | str4 /= "./pushswap_checker" = 84
    | pArse str5 == False = 84
    | otherwise = 0
-- "echo" "sa pb pb pb sa pa pa pa" | ./pushswap_checker 2 1 3 6 5 8

main :: IO ()
main = do
    args <- getArgs
    -- num <- verifArgs args
    -- return num
    -- if args == 1 then putStr "args = 1\n"
    putStr "OK\n"
    