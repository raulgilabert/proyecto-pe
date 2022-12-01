import random

size = 100
quatity = 1

list = []

for i in range(0, size):
    list.append(i)

for i in range(0, size):
    aux = list[i]
    num = random.randint(0, size - 1)
    list[i] = list[num]
    list[num] = aux

print(size)
for i in range(0, size):
    print(str(list[i]) + " ", end="")
