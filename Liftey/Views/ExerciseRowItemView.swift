//
//  ExerciseRowItemView.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import SwiftUI

struct ExerciseRowItemView: View {
    
    let exercise: Exercise
    
    var body: some View {
        VStack{
            HStack {
                Text(exercise.name)
                    .bold()
                    .font(.title2)
                    .italic()
                    .padding(.leading, 15)
                Spacer()
            }
            HStack {
                Text("\(exercise.sets) x \(exercise.reps) x \(exercise.weight) lbs")
                    .padding(.leading, 15)
                Spacer()
            }
        }
    }
}

struct ExerciseRowItemView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRowItemView(exercise: Exercise(name: "Code", reps: 1, sets: 1, weight: 1))
    }
}
