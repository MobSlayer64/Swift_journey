/*:
## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print("Workout stats - Distance: \(distance)m\nTime: \(time) mins\nElevation Gain: \(elevation)m")
    }
}

//:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
let workout = RunningWorkout(distance: 3000.0, time: 20.0, elevation: 50.0)
workout.postWorkoutStats()

struct Steps {
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var dailySteps = Steps(steps: 8000, goal: 10000)
print("Steps before: \(dailySteps.steps)")
dailySteps.takeStep()
print("Steps after: \(dailySteps.steps)")


/*:
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
 */
