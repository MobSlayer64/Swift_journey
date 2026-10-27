
func divide(_ number : Double, by divisor: Double) {
    if divisor != 0.0 {
        let result = number / divisor
        print(result)
    }
}

func divide2(_ number : Double, by divisor: Double) {
    guard divisor != 0.0 else {
        return print("Error: Division by zero is undefined")
    }
        let result2 = number / divisor
        print(result2)
    }

divide(10, by: 2)
divide2(10, by: 0)
divide(10, by: 0)
divide2(10, by: 2
)
