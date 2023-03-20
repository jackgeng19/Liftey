//
//  CreateExerciseView.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import SwiftUI

struct CreateExerciseView: View {
    
    @ObservedObject var viewModel: WorkoutViewModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Exercise Name")){
                    TextField("LETS GOOOOO", text: $viewModel.newExerciseName)
                        .fixedSize()
                }
                
                Section(header: Text("Details")){
                    Stepper("Sets: \(viewModel.newExerciseSets)", value: $viewModel.newExerciseSets, in: 1...10)
                    Stepper("Reps: \(viewModel.newExerciseReps)", value: $viewModel.newExerciseReps, in: 1...50)
                    Picker("Weight", selection: $viewModel.newExerciseWeight) {
                        ForEach(viewModel.weightOptions, id: \.self) { weight in
                            Text("\(weight) lbs")
                        }
                    }
                    .pickerStyle(WheelPickerStyle())

                }
                
                Button(action: {
                    viewModel.addExercise()
                    dismiss()
                    viewModel.reset()
                }) {
                    Text("Create Exercise")
                }
                .disabled(!viewModel.isValidExercise)
            }
            .navigationTitle("New Exercise")
        }
    }
}


struct CreateExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        CreateExerciseView(viewModel: WorkoutViewModel())
    }
}
