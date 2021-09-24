#[
001 Colored Socks
  Source: https://www.linkedin.com/posts/sommukhopadhyay_count-pair-of-socks-activity-6846786328722468864-BHb-
  Statement:
    There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
  Example:
    arr = [0,1,2,1,2,1,3,2]
    There is one pair of color 1 and one of color 2 .
    There are four odd socks left, one of each color.
    The number of pairs is 2.
]#

import std/[strutils, sequtils, tables]

var
  colors: seq[int] = map(stdin.readLine().split(' '), proc(
      x: string): int = parseInt(x))

let count = toCountTable(colors)
var
  value: int = 0
  pairs: int = 0

# echo count

for x in count.keys:
  value = count[x]
  if value >= 1:
    pairs += value div 2

echo pairs
