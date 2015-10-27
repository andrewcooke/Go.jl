# GoCL

[![Build Status](https://travis-ci.org/andrewcooke/GoCL.jl.svg?branch=master)](https://travis-ci.org/andrewcooke/GoCL.jl)

An experimental engine to play
[go](https://en.wikipedia.org/wiki/Go_%28game%29) using a GPU (via OpenCL).

## Main Ideas

* In the end, [B*](https://en.wikipedia.org/wiki/B*) is going to win out.  So
  how do we get close to that now?

* Need a set of core operations that are fast and scalable.

* Combine those with tunable heuristics.  For example, select next plays from
  a probability function that is constructed using a tunable kernel convolved
  with some reasonable base distribution.

* Tune via self-competition.

## GPU Ideas

* Evaluating a single position should be efficient (ie we want one APU per
  point, not per board).

* Basic stats on groups + flood fill.

* Flood fill can be fast when the board description is small enough to be
  stored in an APU (bitmaps).

