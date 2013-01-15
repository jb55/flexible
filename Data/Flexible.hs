{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiParamTypeClasses #-}

module Data.Flexible (
    Flexible(..)
  , flexible
) where

data Flexible b a = Some a | Raw b | NotThere
                  deriving (Show, Eq, Read, Ord)

flexible :: c -> (a -> c) -> (b -> c) -> Flexible a b -> c
flexible _ f _ (Raw  a) = f a
flexible _ _ f (Some b) = f b
flexible d _ _ NotThere = d

