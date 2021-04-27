{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE RankNTypes #-}

module U.Codebase.Sqlite.SyncEntity where

import Data.Sequence (Seq)
import qualified Data.Sequence as Seq
import qualified U.Codebase.Sqlite.DbId as Db

-- | Stuff you'll need to sync
data SyncEntity' f = SyncEntity
  { -- | strings that need to be synced
    text :: f Db.TextId,
    -- | objects that need to be synced
    objects :: f Db.ObjectId,
    -- | hashes that need to be synced (comparable to weak refs)
    hashes :: f Db.HashId,
    -- | causals that need to be synced (these are not weak refs).
    -- causals are relational instead of objects because we
    -- ... wanted to use sqlite for LCA??
    causals :: f Db.CausalHashId
  }

type SyncEntitySeq = SyncEntity' Seq

addObjectId :: Db.ObjectId -> SyncEntitySeq -> SyncEntitySeq
addObjectId id s = s {objects = id Seq.<| objects s}

append :: (forall a. f a -> f a -> f a) -> SyncEntity' f -> SyncEntity' f -> SyncEntity' f
append (<>) a b =
  SyncEntity
    (text a <> text b)
    (objects a <> objects b)
    (hashes a <> hashes b)
    (causals a <> causals b)

instance Semigroup SyncEntitySeq where
  (<>) = append (<>)

instance Monoid SyncEntitySeq where
  mempty = SyncEntity mempty mempty mempty mempty
  mappend = (<>)