//
//  WorkoutView.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import SwiftUI

struct WorkoutView: View {
    
    @StateObject var viewModel = WorkoutViewModel()
    
    var body: some View {
        NavigationView{
            ZStack {
                List{
                    Section(header: Text("Exercises")){
                        ForEach(viewModel.workout.exercises){ exercise in
                            ExerciseRowItemView(exercise: exercise)
                        }
                    }
                }
                .navigationTitle("Jack's Workout")
                .sheet(isPresented: $viewModel.sheetIsPresented) {
                    CreateExerciseView(viewModel: viewModel)
                }
                Button(action: {
                        viewModel.sheetIsPresented = true
                }) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    }
                .padding()
                .offset(x: UIScreen.main.bounds.width / 2 - 70, y: UIScreen.main.bounds.height / 2 - 140)
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
