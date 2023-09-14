class Solution {
      func lengthOfLongestSubstring(_ s: String) -> Int {
         var arr = Array(s)

var seen = Set<Character>()
var maxLength = 0
var start = 0


for (end, char) in arr.enumerated() {
    while seen.contains(char) {
        seen.remove(arr[start])
        start += 1
    }
    
    seen.insert(char)
    maxLength = max(maxLength, end - start + 1)
            
}
   return maxLength
}

}
