#[
  Problem: Multiply matrix of sizes LxM and MxN
  Method: Iterative, Simple/Direct
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.6

  Example 1:
    Input:
      1
      3
      3
      1
      Matrix A
        3 7 1
      Matrix B
        1
        2
        4
    Output:
      21
  
  Example 2:
    Input:
      2
      3
      3
      1
      Matrix A
        1 4 5
        3 6 2
      Matrix B
        1
        3
        5
    Output:
      38
      31
]#

# from sequtils import map
# from strutils import parseInt, splitWhitespace

import std/[strutils, sequtils]

let
  aRow: int = stdin.readLine().parseInt()
  aCol: int = stdin.readLine().parseInt()
  bRow: int = stdin.readLine().parseInt()
  bCol: int = stdin.readLine().parseInt()

var
  matA: seq[seq[int]]
  matB: seq[seq[int]]
  matC: seq[seq[int]]
  tsum: int = 0
  tarr: seq[int] = @[]

if aCol != bRow:
  echo("Cannot multiply!")
  quit(QuitFailure)

echo("\nEnter matrix A:")
for _ in 0 ..< aRow:
  matA.add(map(stdin.readLine().splitWhitespace, proc(x: string): int = parseInt(x)))

echo("\nEnter matrix B:")
for _ in 0 ..< bRow:
  matB.add(map(stdin.readLine.splitWhitespace, proc(x: string): int = parseInt(x)))

for rdx in 0 ..< aRow:
  tarr = @[]
  for idx in 0 ..< bCol:
    tsum = 0
    for cdx in 0 ..< bRow:
      tsum += (matA[rdx][cdx] * matB[cdx][idx])
    tarr.add(tsum)
  matC.add(tarr)

echo("\nMatrix C = A * B:")
for rdx in 0 ..< aRow:
  for cdx in 0 ..< bCol:
    stdout.write(matC[rdx][cdx].intToStr() & ' ')
  echo()
