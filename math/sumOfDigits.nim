#[
  Problem: Find sum of digits in a number
  Method: Euclidean Modulus
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.6

  Example 1:
    Input:
      123
    Output:
      6
  
  Example 2:
    Input:
      256
    Output:
      13
]#

from strutils import parseInt

var 
  number: int = stdin.readLine().parseInt()
  sum: int = 0

proc sumOfDigits(): int =
  while number > 0:
    sum += (number mod 10)
    number = number div 10
  result = sum

echo sumOfDigits()