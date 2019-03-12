var fibonacciSeq = (() => {
	let arr = [1,1]
	return () => {
		arr.push(arr[arr.length-2]+arr[arr.length-1])
		console.log(arr[arr.length-1])
	}
})()

fibonacciSeq()
fibonacciSeq()
fibonacciSeq()
