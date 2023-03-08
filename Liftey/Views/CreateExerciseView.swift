//
//  CreateExerciseView.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import SwiftUI

struct CreateExerciseView: View {
    
    var body: some View {
        Form {
            Section("Stuff") {
                Text("Create an exercise!")
            }
        }
    }
}

struct CreateExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        CreateExerciseView()
    }
}
