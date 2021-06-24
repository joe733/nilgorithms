#[
  Problem: Sort a given list
  Method: Insertion sort
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
    - loop through the sequence and build a sub sequence
    - for that initate a pointer which starts at the current value of the index
    - See if the current value is greater that the next one (to which pointer is pointing to)
    - if yes, then swap those values and repeat until the sub sequence is sorted
]#

import std/[strutils, sequtils]

var ip_list = map(stdin.readLine().split(' '), proc(x: string): int = parseInt(x))

var
  lhp: int

for idx in 0 ..< ip_list.len:
  lhp = idx
  while ip_list.len - 1 > lhp and lhp >= 0 and ip_list[lhp] > ip_list[lhp + 1]:
    swap(ip_list[lhp], ip_list[lhp + 1])
    lhp -= 1


for item in ip_list:
  stdout.write($item & " ") # $x convertes x to string

echo()
