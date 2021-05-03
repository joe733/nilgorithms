#[
  Problem: Check if given number is narcissistic/armstrong
  Method: Recursive
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.6

  Example 1:
    Input:
      371
    Output:
      true
    Why?
      371 = 3^3 + 7^3 + 1^3
  
  Example 2:
    Input:
      145
    Output:
      false
    Why?
      145 != 1^3 + 4^3 + 5^3
]#

import math
from strutils import parseInt

var
  input: string = stdin.readLine()
  number: int = input.parseInt()
  sum: int = 0
  frac: int

let
  save = number
  nLen = input.len()

proc armstrong(number: int): int =
  if number > 0:
    frac = number mod 10
    sum += frac^nLen # ^ needs math module
    result = armstrong(number div 10)
  
  result = sum

echo armstrong(number) == save
