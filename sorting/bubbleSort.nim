#[
  Problem: Sort a given list
  Method: Bubble sort
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.8

  Example 1:
    Input:
      1 2 3 4
    Output:
      1 2 3 4
  
  Example 2:
    Input:
      3 7 5 4
    Output:
      3 4 5 7
]#

import std/[strutils, sequtils]

var mylist: seq[int] = map(stdin.readLine().split(' '), proc(
    x: string): int = x.parseInt())
var swapped: bool = true

while swapped:
  swapped = false
  for idx in 0 ..< mylist.len-1:
    if mylist[idx] > mylist[idx+1]:
      swap(mylist[idx], mylist[idx+1])
      swapped = true

for item in mylist:
  stdout.write($item & " ") # $x convertes x to string

echo()

#[
Less efficient method

var temp: int

for idx in 0 ..< mylist.len:
    for jdx in idx+1 ..< mylist.len:
        if mylist[idx] > mylist[jdx]:
            temp = mylist[idx]
            mylist[idx] = mylist[jdx]
            mylist[jdx] = temp
]#
