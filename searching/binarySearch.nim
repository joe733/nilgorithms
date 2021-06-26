#[
  Problem: Check if a given value is in a list or not
  Method: Binary Search
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.8

  Example 1:
    Input:
      1 2 3
      5
    Output:
      Nope!
  
  Example 2:
    Input:
      2 5 6
      6
    Output:
      Yup!
]#

import std/[strutils, sequtils, algorithm]


proc binaryFind(searchList: seq[int], val: int): bool =
  var
    lhp: int = 0
    rhp: int = searchList.len
    mid: int

  while lhp <= rhp:
    mid = lhp + (rhp - lhp) div 2
    if val == searchList[mid]:
      return true
    elif val < searchList[mid]:
      rhp = mid - 1
    else:
      lhp = mid + 1

  return false


var
  ipList: seq[int] = map(stdin.readLine().split(' '), proc(
      x: string): int = x.parseInt())
  number: int = stdin.readLine().parseInt()

if binaryFind(sorted(ipList), number): echo "Yup!" else: echo "Nope!"
