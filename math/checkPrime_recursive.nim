#[
  Problem: Check if given number if prime or not
  Method: Recursive
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
let
  count = 2
  number: int = stdin.readLine().parseInt()
  sqrtNum: int = sqrt(number.toFloat()).toInt()


proc checkPrime(idx: int): void =
  if (number in 0 .. 1) or not isPrime:
    isPrime = false
    return

  if idx <= sqrtNum:
    if number mod idx == 0:
      isPrime = false
      return
    checkPrime(idx + 1)
  
  return

checkPrime(count)

if isPrime: echo "Prime" else: echo "Composite"
