#!/usr/bin/env python3

# imports
import sys

# version
ver = "1.2.1"

# help
help = """
___________________________________________________________________
|  Brain Detonation Commands                                      |
|------------------------------------------------------------------
|   + || add to cell                                              |
|   - || subtract from cell                                       |
|   . || print str                                                |
|   , || get user input                                           |
|   ; || add to string                                            |
|   = || reset string                                             |
| 0-9 || multiply the current value inside the cell by [n]        |
|   ^ || multiply the current value inside the cell by itself     |
|   * || print current cell number                                |
-------------------------------------------------------------------
"""

# memory
i = 1
mem = []
while i <= 10000:
  mem.append(0)
  i+=1

# compile
def comple(n, name):
  with open(name, "x") as l:
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
        l.write(chr(mem[y]))
  
      elif i == "=":
        str = ""
        open(name, "w").close()
  
      elif i == "^":
        mem[y] *= mem[y]
  
      elif i in nums:
        mem[y] *= int(i)
  
      elif i == "*":
        print(y)
      
      else:
        pass


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
      print(help)

    elif sys.argv[1] == "-c":
      with open(sys.argv[2], "r") as f:
        l = sys.argv[2].split(".")
        comple(f, l + ".bin")

    elif sys.argv[1] == "-i":
      with open(sys.argv[2], "2") as f:
        inter(f)
      
  else:
    print("please supply arguments!!!")


# if imported
if __name__ == "__main__":
  main()
