# 005/problem.py

# Problem URL: https://projecteuler.net/problem=5
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?


def divisible_by(a, b):
    if b != 0:
        if a % b == 0:
            return True
    return False


def divider(a, b):
    if b == 1:
        return True
    if divisible_by(a, b):
        return divider(a, b-1)
    return False


def fact(n, acc):
    if n == 0:
        return acc
    return fact(n-1, n*acc)


def factorial(n):
    return fact(n, 1)


if __name__ == '__main__':
    max_divider = 20
    divisible = range(max_divider, factorial(max_divider)+1, max_divider)
    for i in divisible:
        if divider(i, max_divider):
            print('Answer:', i)
            break
