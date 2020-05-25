{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Reflex.Dom
import           Lib

main :: IO ()
main = mainWidget $ text greeting
