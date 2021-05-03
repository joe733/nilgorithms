#[
  Problem: Check if given number if prime or not
  Method: Iterative
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.6

  Example 1:
    Input:
      13
    Output:
      Prime
  
  Example 2:
    Input:
      20
    Output:
      Composite
]#

from math import sqrt
from strutils import parseInt

var isPrime: bool = true
let number: int = stdin.readLine().parseInt()

for idx in 2 .. sqrt(number.toFloat).toInt:
  if number mod idx == 0:
    isPrime = false
    break

if (number in 0 .. 1) or (not isPrime):
  isPrime = false # if only the first condition is correct
  echo "Composite"

if isPrime: echo "Prime"
