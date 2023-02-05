func removNb(_ n: Int) -> [(Int,Int)] {
  var sum = (n+1)*n/2
	var answ = [(Int,Int)]()
	for i in 1..<n {
    var a = (sum - i)/(i+1)
			if (a*i == sum - a - i && a <= n ){
				answ.append((i, a))
        }		
	}
	return answ
}