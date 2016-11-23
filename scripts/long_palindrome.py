def longestPalindrome(s):
    l = len(s)
    if l <= 2:
        if (s[0] != s[l-1]): return ''
        else: return s
        
    result = ''
    for i in range(0,l):
        palindrome = SearchPalindrome(s, i, i)
        if len(palindrome) > len(result): result = palindrome
        palindrome = SearchPalindrome(s, i, i+1)
        if len(palindrome) > len(result): result = palindrome
    return result
                
def SearchPalindrome( string, start, end):
    while(start >= 0 and end < len(string) and string[start]==string[end]):
        start -= 1
        end += 1
    return string[start+1:end]

data = ""

with open('./2.txt', 'r') as myfile:
    data = myfile.read().replace('\n', '')

print longestPalindrome(data)
