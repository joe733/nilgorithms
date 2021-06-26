#[
  Problem: Check if a given value is in a list or not
  Method: Linear Search
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

import std/[strutils, sequtils]

proc linearFind(searchList: seq[int], val: int): bool =
  for item in searchList:
    if val == item:
      return true
  return false


var
  ipList: seq[int] = map(stdin.readLine().split(' '), proc(
      x: string): int = x.parseInt())
  number: int = stdin.readLine().parseInt()

if linearFind(ipList, number): echo "Yup!" else: echo "Nope!"
