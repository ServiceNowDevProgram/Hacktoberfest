/*
LeetCode Problem: Remove Zeros from a Number
--------------------------------------------
Description:
Given a number n, remove all the zeros from it and return the resulting number.

Example:
Input: n = 102030
Output: 123

Approach:
Convert the number to a string, remove all '0' characters using String.replace(),
and parse the result back to a long.

Time Complexity: O(d), where d is the number of digits.
Space Complexity: O(d)
*/

class Solution {
    public long removeZeros(long n) {
        String str = String.valueOf(n);
        String res = str.replace("0", "");
        return Long.parseLong(res);
    }

    public static void main(String[] args) {
        Solution s = new Solution();
        System.out.println(s.removeZeros(102030)); // Output: 123
    }
}
