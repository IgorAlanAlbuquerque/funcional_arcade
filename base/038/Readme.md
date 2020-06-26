## 28. `rotDir`
```hs
--IN : Um natural n e uma lista ou string S
--OUT: Lista S rotacionada n vezes à direita
rotDir 0 "asdfg" == "asdfg"
rotDir 1 "asdfg" == "gasdf"
rotDir 3 "asdfg" == "fgasd"
rotDir 4 "asdfg" == "dfgas"
```


<!--MAIN_BEGIN-->
### Main
```hs
main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotDir a b

```
<!--MAIN_END-->