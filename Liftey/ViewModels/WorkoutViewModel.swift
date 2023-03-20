//
//  WorkoutViewModel.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import Foundation

class WorkoutViewModel: ObservableObject {
    @Published var workout = Workout()
    @Published var sheetIsPresented = false
    @Published var newExerciseName = ""
    @Published var newExerciseSets = 3
    @Published var newExerciseReps = 5
    @Published var newExerciseWeight = 50
    
    let weightOptions: [Int] = Array(stride(from: 0, through: 500, by: 5))

    var isValidExercise: Bool {
        !newExerciseName.isEmpty && newExerciseSets > 0 && newExerciseReps > 0
    }

    func addExercise() {
        let exercise = Exercise(name: newExerciseName, reps: newExerciseReps, sets: newExerciseSets, weight: newExerciseWeight)
        workout.exercises.append(exercise)
    }
    
    func reset(){
        newExerciseName = ""
        newExerciseSets = 3
        newExerciseReps = 5
    }
}

