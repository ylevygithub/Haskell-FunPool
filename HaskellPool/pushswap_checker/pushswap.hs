-- import System.Console.ParseArgs
import System.Environment

verifChar :: Char -> Bool
verifChar x = if (x /= '0' && x /= '1' && x /= '2' && x /= '3' && x /= '4' && x /= '5' && x /= '6' && x /= '7' && x /= '8' && x /= '9' && x /= '-')
  then False else True
--la False veut dire qu'on a une lettre.
pArse :: [ Char ] -> Bool
pArse [] = True
pArse (x:xs) = if verifChar x == False then False else pArse xs
--la False veut dire que c pas bon et qu'on doit afficher False
readInput :: [ Char ] -> Maybe Int
readInput [] = Nothing
readInput (x:xs)
  | verifChar x == False = Nothing
  | pArse xs /= False = Just (read (x:xs)::Int)
  | otherwise = Nothing

getLineLength :: IO Int
getLineLength = do 
  x <- getLine
  let len = length x
  return len


main :: IO ()
main = do
    args <- getArgs;
    let args = 
    if args == 1 = print "SSA"
    -- if args == 1 then putStr "args = 1\n"
    putStr "OK\n"
    -- case args of 
    --   [file] -> do
    --     x <- readFile file
    --     putStr x
    --   _ -> putStrLn "Wrong number of arguments"
    --   return (84)


-- data Ord a => Arg a
--   | a == 1 = "echo"

myElem :: Eq a => a -> [ a ] -> Bool
myElem a str = any(==a) str
safeDiv :: Int -> Int -> Maybe Int
safeDiv a b = if b == 0 then Nothing else Just (a `div` b)
safeNth :: [ a ] -> Int -> Maybe a
safeNth s i
    | i < 0 = Nothing
    | i >= length s = Nothing
    | i == 0 = Just (head s)
    | otherwise = safeNth (tail s) (i - 1)
safeSucc :: Maybe Int -> Maybe Int
safeSucc (Just x) = Just (x + 1)
safeSucc Nothing = Nothing

myLookup :: Eq a => a -> [(a,b)] -> Maybe b
myLookup i ((x,xs):list) = if (i == x) then Just xs else myLookup i list
myLookup i [] = Nothing

maybeDo :: ( a -> b -> c ) -> Maybe a -> Maybe b -> Maybe c
maybeDo _ Nothing _ = Nothing
maybeDo _ _ Nothing = Nothing
maybeDo func (Just x) (Just y) = Just (func x y)

verifChar :: Char -> Bool
verifChar x = if (x /= '0' && x /= '1' && x /= '2' && x /= '3' && x /= '4' && x /= '5' && x /= '6' && x /= '7' && x /= '8' && x /= '9' && x /= '-')
  then False else True
--la False veut dire qu'on a une lettre.
pArse :: [ Char ] -> Bool
pArse [] = True
pArse (x:xs) = if verifChar x == False then False else pArse xs
--la False veut dire que c pas bon et qu'on doit afficher False
readInt :: [ Char ] -> Maybe Int
readInt [] = Nothing
readInt (x:xs)
  | verifChar x == False = Nothing
  | pArse xs /= False = Just (read (x:xs)::Int)
  | otherwise = Nothing

getLineLength :: IO Int
getLineLength = do 
  x <- getLine
  let len = length x
  return len

printAndGetLength x = do
  putStrLn x
  return (length x)