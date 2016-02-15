# Go

***This project is dead, since Google did things better.***

An experimental engine to play
[go](https://en.wikipedia.org/wiki/Go_%28game%29) (eventually, using a GPU).

## Main Ideas

* In the end, [B*](https://en.wikipedia.org/wiki/B*) is going to win out.  So
  how do we get close to that now?

* Need a set of core operations that are fast and scalable.

* On top of that, a good transformation layer and a relatively simple net.

* Tune via self-competition.

## GPU Ideas

* Evaluating a single position should be efficient (ie we want one APU per
  point, not per board).

* Basic stats on groups + flood fill.

* Flood fill can be fast when the board description is small enough to be
  stored in an APU (bitmaps).

## Transform Ideas

* First derivative of flood gives a good basis for tactical moves.

* Need something for short-range.  What?  Soemthing connected to
  1/second dertivative of flood?  Perhaps restricted to +ve,
  recalculated for -ve, and then subtracted?

* The aim is to get decent input into the net, then output from the
  net that defines a probability over the points.  Finally, sample
  from that (at random, or equally spaced) to get moves for the
  search.

## Scoring Ideas

* Can we count all spaces inside a group efficiently?

* Also need prisoner scores.

## Tournament Ideas

* Must plot something to track.  What?

* How can we extend the net, while still keeping the original training?
