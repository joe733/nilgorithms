#[
  Problem: Print out the pascal triangle with numerals
  Method: Iterative
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.6

  Example:
    Input:
      4
    Output:
         1
        1 1
       1 2 1
      1 3 3 1
    Why?
      It's a pattern of combinations whole numbers until the input number:
          0C0
        1C0 1C1
      2C0 2C1 2C2
    3C0 3C1 3C2 3C3
]#

from math import fac
from strutils import parseInt
from strformat import fmt

proc pTriangle(num: int): void =
  for idx in 0 ..< num:
    for jdx in 0 ..< num-idx+1:
      stdout.write(" ") # for space ahead of each line
    for jdx in 0 ..< idx+1:
      stdout.write(fmt"{fac(idx) div (fac(jdx) * fac(idx - jdx))} ")
    echo "" # for new line

let n: int = stdin.readLine().parseInt()
pTriangle(n)
