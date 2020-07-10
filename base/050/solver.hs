partes y [] x = []
partes y xs 0 = []
partes y (x:xs) z = take y (x:xs):(partes y xs (z-1))

percorrer xs y = partes y xs (length xs - y + 1)

conjuntoPartes xs =[[]]++(concat [percorrer xs x | x<-[1..n]])
                    where n = length xs