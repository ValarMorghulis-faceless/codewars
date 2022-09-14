func spinWords(in sentence: String) -> String {
    // Your code goes here
    var arr1 = sentence.components(separatedBy: " ")
    var reversed = arr1.map({word -> String in
        if word.count >= 5 {
            return String(word.reversed())
        }else {
            return word
        }
        
    })
    
    
    
    
    var str1 = reversed.reduce("") {$0 + " " + $1}
    
    str1.removeFirst()
    
    return str1
}