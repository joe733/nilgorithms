#[
  Problem: Sort a given list
  Method: Selection sort
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
    
  Explanation:

]#

import std/[strutils, sequtils]

var ipList: seq[int] = map(stdin.readLine().split(' '), proc(
    x: string): int = x.parseInt())

var
  insert_pos: int = 0
  min_pos: int = 0

while insert_pos < ipList.len:
  for idx in insert_pos+1 ..< ipList.len:
    if ipList[idx] < ipList[min_pos]:
      min_pos = idx

  swap(ipList[insert_pos], ipList[min_pos])
  insert_pos += 1
  min_pos = insert_pos

for item in ipList:
  stdout.write($item & " ") # $x convertes x to string

echo()
