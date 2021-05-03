#[
  Problem: Check if given number if palindrome or not
  Method: String Iterative
  Contributor(s): Jovial Joe Jayarson (@joe733)
  Nim Version: 1.4.6

  Example 1:
    Input:
      131
    Output:
      true
  
  Example 2:
    Input:
      abc
    Output:
      false
]#


var isPal: bool = true

let input = stdin.readLine()
let ipLen = input.len()

for idx in 0 ..< (ipLen div 2):
  if input[idx] != input[ipLen - idx - 1]:
    isPal = false
    break

echo isPal