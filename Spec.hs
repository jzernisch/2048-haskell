module BoardSpec where

import Test.Hspec
import Board

main :: IO ()
main = hspec $ do

  describe "Board" $ do

    it "is slideable to the left" $
      let board = [[0,2,0,1],[2,2,3,0],[1,2,3,4],[0,4,4,4]]
      in slideLeft board  `shouldBe` [[2,1,0,0],[3,3,0,0],[1,2,3,4],[5,4,0,0]]

    it "is slideable upwards" $
      let board = [[0,2,0,1],[2,2,3,0],[1,2,3,4],[0,4,4,4]]
      in slideUp board  `shouldBe` [[2,3,4,1],[1,2,4,5],[0,4,0,0],[0,0,0,0]]

    it "is slideable to the right" $
      let board = [[0,2,0,1],[2,2,3,0],[1,2,3,4],[0,4,4,4]]
      in slideRight board  `shouldBe` [[0,0,2,1],[0,0,3,3],[1,2,3,4],[0,0,4,5]]

    it "is slideable downwards" $
      let board = [[0,2,0,1],[2,2,3,0],[1,2,3,4],[0,4,4,4]]
      in slideDown board  `shouldBe` [[0,0,0,0],[0,2,0,0],[2,3,4,1],[1,4,4,5]]