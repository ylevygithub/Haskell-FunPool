mySucc x = x + 1

myIsNeg x = x < 0

myAbs x = abs x

myMin x y
    | x > y = y
    | x < y = x
    | otherwise = x

myMax x y
    | x > y = x
    | x < y = y
    | otherwise = x

myTuple x y = (x,y)

myTruple x y z = (x,y,z)

myFst (x, y) = x

mySnd (x, y) = y

mySwap (x, y) = (y, x)

myHead x = case x of
       [] -> error "List is empty"
       (x:_) -> x

myTail (_:x) = x
myTail [] = error "List is empty"

myLength x = case x of
         (_:x) -> 1 + length x
         [] -> error "List is empty"

myNth s i
    | i < 0 = error "index is negative"
    | i > myLength s = error "index is too big"
    | i == 0 = myHead s
    | otherwise = myNth (myTail s) (i - 1)

myTake 0 _ = []
myTake n [] = []
myTake n (x:xs) = x : myTake (n-1) xs

myDrop n xs | n <= 0 = xs
myDrop n [] = []
myDrop n (_:xs) = myDrop (n-1) xs

myAppend (x:xs) i = x : myAppend xs i
myAppend [] i = i
