%dw 2.0 
fun removeNumbers(ch) =
	(ch replace /[0-9]/ with (""))
