function fibonacci() {
	let arr = [1,1]
	return function() {
		n2 = arr[arr.length-2];
		n1 = arr[arr.length-1];
		arr.push(n2 + n1)
		console.log(arr[arr.length-1])
	}
}

let fibonacciSeq = fibonacci();

fibonacciSeq()
fibonacciSeq()
fibonacciSeq()
