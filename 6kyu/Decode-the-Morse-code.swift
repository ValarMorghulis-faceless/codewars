func decodeMorse(_ morseCode: String) -> String {
    // your code here
  let lettersToMorse: [String: String] = [
  "A": ".-",
  "B": "-...",
  "C": "-.-.",
  "D": "-..",
  "E": ".",
  "F": "..-.",
  "G": "--.",
  "H": "....",
  "I": "..",
  "J": ".---",
  "K": "-.-",
  "L": ".-..",
  "M": "--",
  "N": "-.",
  "O": "---",
  "P": ".--.",
  "Q": "--.-",
  "R": ".-.",
  "S": "...",
  "T": "-",
  "U": "..-",
  "V": "...-",
  "W": ".--",
  "X": "-..-",
  "Y": "-.--",
  "Z": "--..",
  ".": ".-.-.-",
  "!": "-.-.--",
  "?": "..--..",
  ",": "--..--"
]

  var decodedMessage = ""
var currMorse = ""
// morseCodeArray will store individual morse code letters from secretMessage
var morseCodeArray = [String]()
  
  for char in morseCode {
  // Check if char is not a space
  if char != " " {
    // Append the value of char to currMorse
    currMorse.append(char)
  } else {
    // Use a switch statement to assemble characters into individual morse code letters
    switch currMorse {
      case "": 
        currMorse += " "
      case " ":
        // Append a space to morseCodeArray
        morseCodeArray.append(" ")
        currMorse = ""
      default: 
        // Append the morse code letter to the array  
        morseCodeArray.append(currMorse)
        // Reset the value of currMorse
        currMorse = ""
    }
    
  }
}
// Append the final value of currMorse to morseCodeArray
morseCodeArray.append(currMorse)
  
  var morseToLetter: [String: String] = [:]

// Iterate through letterToMorse dictionary, add the keys as values and the values as keys to the morseToLetter dictionary
for (letter,morseChar) in lettersToMorse{
  morseToLetter[morseChar]=letter
}

// Go through each element in morseCodeArray and find the text value via the morseToLetter dictionary
for morseValue in morseCodeArray {
  // Check if the value exists in the morseToLetter dictionary
  if let letterChar = morseToLetter[morseValue]{
    //Append the values to decodedMessage
    decodedMessage += letterChar
  }
  //if it's not in the dictionary, it's probably a space
  else {
    // Add a space to decodedMessage
    decodedMessage += " "
  }
}
  
  
  return decodedMessage
  
}