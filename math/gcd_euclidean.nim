#[
  Problem: Find GCD of two numbers
  Method: Euclidean Modulus
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.6

  Example 1:
    Input:
      45 13
    Output:
      1
  
  Example 2:
    Input:
      18 24
    Output:
      6
]#

from sequtils import map
from strutils import parseInt, splitWhitespace

var
  num: seq[int] = stdin.readLine.splitWhitespace.map(parseInt)
  temp: int

while num[1] > 0:
  temp = num[0]
  num[0] = num[1]
  num[1] = temp mod num[1]

echo num[0]
