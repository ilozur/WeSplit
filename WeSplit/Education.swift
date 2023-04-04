//
//  Eduaction.swift
//  WeSplit
//
//  Created by Edmond Podlegaev on 04.04.2023.
//

import SwiftUI

struct Eduaction: View {
    let students = ["Harry", "Ron", "Hermione"]
    
    @State private var selectedStudent = "Harry"
    @State private var tapCount = 0
    @State private var name = ""
    @State private var dick = "Ɛ="
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                }
                Section {
                    Text("Hello, world!")
                    Button("Tap Count: \(tapCount)") {
                        tapCount += 1
                    }
                }
                Section {
                    Picker("Select your student", selection: $selectedStudent){
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                        
                    }
                }
                Section {
                    Text("Your dick is \(dick)D")
                    Button("Plus Size") {
                        dick += "="
                    }
                }
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct Eduaction_Previews: PreviewProvider {
    static var previews: some View {
        Eduaction()
    }
}
