{- LIQUID "--max-case-expand=0" @-}
{-@ LIQUID "--no-case-expand" @-}

module NoCaseExpand where

data ABC = A | B | C 

foo :: Int -> ABC -> ()
foo 0 A  =  ()
foo x A | x /= 0 = ()
foo _ A = error " " 
foo _ t = ()
