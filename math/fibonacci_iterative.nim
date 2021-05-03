#[
  Problem: Generate n fibonacci numbers
  Method: Iterative
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.6

  Example 1:
    Input:
      4
    Output:
      1 1 2 3
  
  Example 2:
    Input:
      10
    Output:
      1 1 2 3 5 8 13 21 34 55
]#

from strformat import fmt
from strutils import parseInt

var
  a = 1
  b = 1
  c = a + b

let limit: int = stdin.readLine().parseInt()

stdout.write(fmt"{a} {b} ")

for _ in 2 ..< limit:
  stdout.write(fmt"{c} ")
  a = b
  b = c
  c = a + b

echo ""
