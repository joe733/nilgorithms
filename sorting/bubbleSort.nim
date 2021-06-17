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

var mylist: seq[int] = map(stdin.readLine().split(' '), proc(x: string): int = x.parseInt())
var temp: int

for idx in 0 ..< mylist.len:
    for jdx in idx+1 ..< mylist.len:
        if mylist[idx] > mylist[jdx]:
            temp = mylist[idx]
            mylist[idx] = mylist[jdx]
            mylist[jdx] = temp

echo mylist