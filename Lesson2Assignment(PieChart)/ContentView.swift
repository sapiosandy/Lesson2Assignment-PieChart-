//
//  ContentView.swift
//  Lesson2Assignment(PieChart)
//
//  Created by Sandra Gomez on 4/11/24.
//
import SwiftUI
import Charts

struct FridayStage: Identifiable {
    var stage: String
    var votes: Int
    var id: String {stage}
}

var myFridayArray: [FridayStage] = [
    .init(stage: "Techno", votes: 8),
    .init(stage: "HardStyle", votes: 4),
    .init(stage: "Drum & Bass", votes: 3),
 
]

struct ContentView: View {
    var body: some View {
        Chart(myFridayArray) { z in
            SectorMark(
                angle: .value("Sales", z.votes),
                angularInset: 2.0            )
            .foregroundStyle(by: .value("Stage", z.stage))
            .annotation(position: .overlay) {
                Text ("\(z.votes)")
                    .foregroundStyle(.white)
            }
        } .padding()
    }
}

#Preview {
    ContentView()
}
