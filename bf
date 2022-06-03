#!/usr/bin/env python3

# imports
import sys

# version
ver = "1.2.1"

# memory
i = 1
mem = []
while i <= 100:
  mem.append(0)
  i+=1


# interpreter
def inter(n):
  # mem and pointer
  str = ""
  nums = ["0","1","2","3","4","5","6","7","8","9"]
  y = 0

  # interpret
  for i in n.read():
    if i == "+":
      mem[y] += 1

    elif i == "-":
      mem[y] -= 1

    elif i == ">":
      y+=1

      if y == len(mem):
        y = 0

      else: pass

    elif i == "<":
      y-=1

      if y < 0:
        y = len(mem) - 1

      else:
        pass

    elif i == ".":
      print(str)

    elif i == ",":
      cool = input("")
      mem[y] = ord(cool)

    elif i == ";":
      str = str + chr(mem[y])

    elif i == "=":
      str = ""

    elif i == "^":
      mem[y] *= mem[y]

    elif i in nums:
      mem[y] *= int(i)

    elif i == "*":
      print(y)
    
    else:
      pass



# main function
def main():
  if len(sys.argv) == 2:
    if sys.argv[1] == "-v":
      print(ver)
    
    elif sys.argv[1] == "-h":
      help = """
        Brain Detonation
       ------------------------------
        + || add to cell
        - || subtract from cell
        . || print string
        , || take input from user
        ; || add to string
        = || reset string
        ^ || multiply cell to the power of 2
      0-9 || multiply cell by number
        * || print out current cell number
      """

    else:
      with open(sys.argv[1], "r") as f:
        inter(f)
      
  else:
    print("please supply arguments!!!")


# if imported
if __name__ == "__main__":
  main()
