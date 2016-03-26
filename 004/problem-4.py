# A palindromic number reads the same both ways. The largest palindrome
# made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindromic(num):
    reverse = int(str(num)[::-1])
    if reverse == num:
        return True
    return False


if __name__ == '__main__':
    result_list = []
    for i in range(100, 999):
        for j in range(100, 999):
            if is_palindromic(i*j):
                result_list.append(i*j)
    print(max(result_list))
