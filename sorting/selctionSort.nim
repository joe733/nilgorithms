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
    - Loop through the list and find the minimum value
    - Swap it with the first valuse
    - Repeat the above steps from the most recently inserted position
]#

import std/[strutils, sequtils]

var ip_list: seq[int] = map(stdin.readLine().split(' '), proc(
    x: string): int = x.parseInt())

var
  insert_pos: int = 0
  min_pos: int = 0

while insert_pos < ip_list.len:
  min_pos = minIndex(ip_list[insert_pos+1 ..< ip_list.len]) + insert_pos + 1 # index offset in the slice

  if (min_pos < ip_list.len) and (ip_list[min_pos] < ip_list[insert_pos]):
    swap(ip_list[insert_pos], ip_list[min_pos])
  
  insert_pos += 1

for item in ip_list:
  stdout.write($item & " ") # $x convertes x to string

echo()
