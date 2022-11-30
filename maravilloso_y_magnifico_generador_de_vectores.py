import random

size = 100
quatity = 1

list = []

for i in range(0, size):
    list.append(i)

for i in range(0, size):
    list[i] = list[random.randint(0, 99)]

print(size)
for i in range(0, size):
    print(str(list[i]) + " ", end="")
