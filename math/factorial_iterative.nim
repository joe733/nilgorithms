#[
  Problem: Generate the factorial of a given number
  Method: Iterative
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.6

  Example 1:
    Input:
      7
    Output:
      5040
  
  Example 2:
    Input:
      5
    Output:
      120
]#

import strutils

var fact: int = 1
let num: int = stdin.readLine().parseInt()

for idx in countdown(num, 1, 1):
    fact *= idx

echo fact