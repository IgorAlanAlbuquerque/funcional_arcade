primo x (y:[]) = if x `mod` y == 0 then False else True
primo x (y:ys) = if x `mod` y == 0 then False else primo x ys

isPrime x | x == 2 = True
          | x == 3 = True
          | otherwise = primo x [2..x `div` 2]

todosPrimos x = filter isPrime [2..x]

fatore yz 1 (y:ys) z = yz++[(y,z)]
fatore yz x (y:ys) z = if x `mod` y == 0 then fatore yz (x `div` y) (y:ys) (z+1) else fatore (yz++[(y,z)]) x ys 0

factors x = [y | y<- (fatore [] x (todosPrimos x) 0), snd y > 0]