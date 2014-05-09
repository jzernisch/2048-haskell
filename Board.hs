module Board where

import Data.List

type Row = [Int]
type Board = [Row]

slideLeft :: Board -> Board
slideLeft = map reduceRow

slideUp :: Board -> Board
slideUp = transpose . slideLeft . transpose

slideRight :: Board -> Board
slideRight = mirror . slideLeft . mirror

slideDown :: Board -> Board
slideDown = transpose . mirror . slideLeft . mirror . transpose

reduceRow :: Row -> Row
reduceRow (0:xs) = reduceRow xs ++ [0]
reduceRow (x:y:xs) | x == y    = (x+1):reduceRow xs ++ [0]
                    | otherwise =     x:reduceRow (y:xs)
reduceRow xs = xs

mirror :: Board -> Board
mirror = map reverse
