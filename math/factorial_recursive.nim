#[
  Problem: Generate the factorial of a given number
  Method: Recursive
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

let num: int = stdin.readLine().parseInt()

proc factorial(value: int): int =
    if value in 0 .. 1:
        result = 1
    if value > 1:
        result = value * factorial(value - 1)

echo factorial(num)