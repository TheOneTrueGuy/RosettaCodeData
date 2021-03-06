func rtoa( str1: String) -> Int {
    var str = str1
    var result = 0

    for (value, letter) in

        [   ( 1000,    "M"),
            (  900,   "CM"),
            (  500,    "D"),
            (  400,   "CD"),
            (  100,    "C"),
            (   90,   "XC"),
            (   50,    "L"),
            (   40,   "XL"),
            (   10,    "X"),
            (    9,   "IX"),
            (    5,    "V"),
            (    3,   "IIV"),
            (    4,   "IV"),
            (    1,    "I")]
    {
        while str.hasPrefix(letter) {

            let first = str.startIndex
            let count = letter.characters.count
            str.removeSubrange(first ..< str.index(first, offsetBy: count))
            result += value
        }
    }
    return result
}


print(rtoa("MDCLXVI")) // 1666
