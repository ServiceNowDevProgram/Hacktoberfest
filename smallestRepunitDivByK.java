class Solution {
    public int smallestRepunitDivByK(int k) {
        if(k == 2 || k == 5)
        {
            return -1;
        }

        int rem = 0;
        for(int length = 1; length<=k; length++)
        {
            rem = (rem*10 + 1) % k;   // simulate adding a '1'
            if(rem == 0)
            {
                return length;
            }
        }
        return -1;
    }
}
