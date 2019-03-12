function fibonacci() {
	let arr = [1,1]
	return function() {
		arr.push(arr[arr.length-2]+arr[arr.length-1])
		console.log(arr[arr.length-1])
	}
}

let fibonacciSeq = fibonacci();

fibonacciSeq()
fibonacciSeq()
fibonacciSeq()
