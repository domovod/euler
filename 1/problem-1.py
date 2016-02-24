# https://projecteuler.net/problem=1
# Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.


def is_multiple(num):
    if num % 3 == 0:
        return True
    elif num % 5 == 0:
        return True
    return False

if __name__ == '__main__':
    result = 0
    for num in range(1, 1000):
        if is_multiple(num):
            result += num
    print('Answer: ', result)
