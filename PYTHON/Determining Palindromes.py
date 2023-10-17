S = input("Input a word: ")

def isPalindrome(S):
    for i in range(0, len(S)):
        if S[0 + i] == S[len(S) - 1]:
            return "True"
    else:
        return "False"
print(isPalindrome(S))